
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int UINTN ;
typedef int UINT32 ;
typedef int UINT16 ;
typedef char EFI_DEVICE_PATH ;
typedef scalar_t__ CHAR16 ;


 int CMD_ERROR ;
 int CMD_OK ;
 int CMD_WARN ;
 scalar_t__* efi_devpath_name (char*) ;
 int efi_free_devpath_name (scalar_t__*) ;
 int efi_print_other_value (int*,int) ;
 int free (char*) ;
 char* malloc (int) ;
 int memcpy (char*,int*,int) ;
 scalar_t__ pager_output (char*) ;
 int printf (char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 scalar_t__ ucs2_to_utf8 (scalar_t__ const*,char**) ;

__attribute__((used)) static int
efi_print_global(const CHAR16 *varnamearg, uint8_t *data, UINTN datasz)
{
 int rv = -1;
 char *var = ((void*)0);

 if (ucs2_to_utf8(varnamearg, &var) != 0)
  return (CMD_ERROR);

 if (strcmp("AuditMode", var) == 0) {
  printf(" = ");
  printf("0x%x", *data);
  goto done;
 }

 if (strcmp("BootOptionSupport", var) == 0) {
  printf(" = ");
  printf("0x%x", *((uint32_t *)data));
  goto done;
 }

 if (strcmp("BootCurrent", var) == 0 ||
     strcmp("BootNext", var) == 0 ||
     strcmp("Timeout", var) == 0) {
  printf(" = ");
  printf("%u", *((uint16_t *)data));
  goto done;
 }

 if (strcmp("BootOrder", var) == 0 ||
     strcmp("DriverOrder", var) == 0) {
  UINTN i;
  UINT16 *u16 = (UINT16 *)data;

  printf(" =");
  for (i = 0; i < datasz / sizeof (UINT16); i++)
   printf(" %u", u16[i]);
  goto done;
 }
 if (strncmp("Boot", var, 4) == 0 ||
     strncmp("Driver", var, 5) == 0 ||
     strncmp("SysPrep", var, 7) == 0 ||
     strncmp("OsRecovery", var, 10) == 0) {
  UINT16 filepathlistlen;
  CHAR16 *text;
  int desclen;
  EFI_DEVICE_PATH *dp;

  data += sizeof(UINT32);
  filepathlistlen = *(uint16_t *)data;
  data += sizeof (UINT16);
  text = (CHAR16 *)data;

  for (desclen = 0; text[desclen] != 0; desclen++)
   ;
  if (desclen != 0) {

   desclen = (desclen + 1) * 2;
  }

  printf(" = ");
  printf("%S", text);
  if (filepathlistlen != 0) {

   if (pager_output("\n")) {
    rv = CMD_WARN;
    goto done;
   }
   dp = malloc(filepathlistlen);
   if (dp == ((void*)0))
    goto done;

   memcpy(dp, data + desclen, filepathlistlen);
   text = efi_devpath_name(dp);
   if (text != ((void*)0)) {
    printf("\t%S", text);
    efi_free_devpath_name(text);
   }
   free(dp);
  }
  goto done;
 }

 if (strcmp("ConIn", var) == 0 ||
     strcmp("ConInDev", var) == 0 ||
     strcmp("ConOut", var) == 0 ||
     strcmp("ConOutDev", var) == 0 ||
     strcmp("ErrOut", var) == 0 ||
     strcmp("ErrOutDev", var) == 0) {
  CHAR16 *text;

  printf(" = ");
  text = efi_devpath_name((EFI_DEVICE_PATH *)data);
  if (text != ((void*)0)) {
   printf("%S", text);
   efi_free_devpath_name(text);
  }
  goto done;
 }

 if (strcmp("PlatformLang", var) == 0 ||
     strcmp("PlatformLangCodes", var) == 0 ||
     strcmp("LangCodes", var) == 0 ||
     strcmp("Lang", var) == 0) {
  printf(" = ");
  printf("%s", data);
  goto done;
 }





 if (strcmp("OsIndicationsSupported", var) == 0) {
  printf(" = ");
  if (datasz == 4)
   printf("0x%x", *((uint32_t *)data));
  else
   printf("0x%jx", *((uint64_t *)data));
  goto done;
 }


 rv = efi_print_other_value(data, datasz);
done:
 if (rv == -1) {
  if (pager_output("\n"))
   rv = CMD_WARN;
  else
   rv = CMD_OK;
 }
 free(var);
 return (rv);
}
