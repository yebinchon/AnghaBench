
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uuid_t ;
typedef int UINTN ;
struct TYPE_2__ {scalar_t__ (* GetNextVariableName ) (int*,char*,int *) ;} ;
typedef scalar_t__ EFI_STATUS ;
typedef int EFI_GUID ;
typedef char CHAR16 ;


 int CMD_ERROR ;
 int CMD_OK ;
 int CMD_WARN ;
 scalar_t__ EFI_BUFFER_TOO_SMALL ;
 scalar_t__ EFI_NOT_FOUND ;
 scalar_t__ EFI_SUCCESS ;
 TYPE_1__* RS ;
 int ZERO_GUID ;
 int cpy8to16 (char*,char*,unsigned int) ;
 int efi_name_to_guid (char*,int *) ;
 int efi_print_var (char*,int *,int) ;
 int free (char*) ;
 int getopt (int,char**,char*) ;
 char* malloc (int) ;
 unsigned int nitems (char*) ;
 char* optarg ;
 int opterr ;
 int optind ;
 int optreset ;
 int pager_close () ;
 int pager_open () ;
 int printf (char*,...) ;
 char* realloc (char*,int) ;
 unsigned int strlen (char*) ;
 scalar_t__ stub1 (int*,char*,int *) ;
 int uuid_equal (int *,int *,int *) ;
 scalar_t__ wcscmp (char*,char*) ;

__attribute__((used)) static int
command_efi_show(int argc, char *argv[])
{
 int aflag = 0, gflag = 0, lflag = 0, vflag = 0;
 int ch, rv;
 unsigned i;
 EFI_STATUS status;
 EFI_GUID varguid = ZERO_GUID;
 EFI_GUID matchguid = ZERO_GUID;
 CHAR16 *varname;
 CHAR16 *newnm;
 CHAR16 varnamearg[128];
 UINTN varalloc;
 UINTN varsz;

 optind = 1;
 optreset = 1;
 opterr = 1;

 while ((ch = getopt(argc, argv, "ag:lv:")) != -1) {
  switch (ch) {
  case 'a':
   aflag = 1;
   break;
  case 'g':
   gflag = 1;
   if (efi_name_to_guid(optarg, &matchguid) == 0) {
    printf("uuid %s could not be parsed\n", optarg);
    return (CMD_ERROR);
   }
   break;
  case 'l':
   lflag = 1;
   break;
  case 'v':
   vflag = 1;
   if (strlen(optarg) >= nitems(varnamearg)) {
    printf("Variable %s is longer than %zu "
        "characters\n", optarg, nitems(varnamearg));
    return (CMD_ERROR);
   }
   cpy8to16(optarg, varnamearg, nitems(varnamearg));
   break;
  default:
   return (CMD_ERROR);
  }
 }

 if (argc == 1)
  aflag = 1;

 if (aflag && (gflag || vflag)) {
  printf("-a isn't compatible with -g or -v\n");
  return (CMD_ERROR);
 }

 if (aflag && optind < argc) {
  printf("-a doesn't take any args\n");
  return (CMD_ERROR);
 }

 argc -= optind;
 argv += optind;

 pager_open();
 if (vflag && gflag) {
  rv = efi_print_var(varnamearg, &matchguid, lflag);
  if (rv == CMD_WARN)
   rv = CMD_OK;
  pager_close();
  return (rv);
 }

 if (argc == 2) {
  optarg = argv[0];
  if (strlen(optarg) >= nitems(varnamearg)) {
   printf("Variable %s is longer than %zu characters\n",
       optarg, nitems(varnamearg));
   pager_close();
   return (CMD_ERROR);
  }
  for (i = 0; i < strlen(optarg); i++)
   varnamearg[i] = optarg[i];
  varnamearg[i] = 0;
  optarg = argv[1];
  if (efi_name_to_guid(optarg, &matchguid) == 0) {
   printf("uuid %s could not be parsed\n", optarg);
   pager_close();
   return (CMD_ERROR);
  }
  rv = efi_print_var(varnamearg, &matchguid, lflag);
  if (rv == CMD_WARN)
   rv = CMD_OK;
  pager_close();
  return (rv);
 }

 if (argc > 0) {
  printf("Too many args: %d\n", argc);
  pager_close();
  return (CMD_ERROR);
 }






 varalloc = 1024;
 varname = malloc(varalloc);
 if (varname == ((void*)0)) {
  printf("Can't allocate memory to get variables\n");
  pager_close();
  return (CMD_ERROR);
 }
 varname[0] = 0;
 while (1) {
  varsz = varalloc;
  status = RS->GetNextVariableName(&varsz, varname, &varguid);
  if (status == EFI_BUFFER_TOO_SMALL) {
   varalloc = varsz;
   newnm = realloc(varname, varalloc);
   if (newnm == ((void*)0)) {
    printf("Can't allocate memory to get "
        "variables\n");
    rv = CMD_ERROR;
    break;
   }
   varname = newnm;
   continue;
  }
  if (status == EFI_NOT_FOUND) {
   rv = CMD_OK;
   break;
  }
  if (status != EFI_SUCCESS) {
   rv = CMD_ERROR;
   break;
  }

  if (aflag) {
   rv = efi_print_var(varname, &varguid, lflag);
   if (rv != CMD_OK) {
    if (rv == CMD_WARN)
     rv = CMD_OK;
    break;
   }
   continue;
  }
  if (vflag) {
   if (wcscmp(varnamearg, varname) == 0) {
    rv = efi_print_var(varname, &varguid, lflag);
    if (rv != CMD_OK) {
     if (rv == CMD_WARN)
      rv = CMD_OK;
     break;
    }
    continue;
   }
  }
  if (gflag) {
   rv = uuid_equal((uuid_t *)&varguid,
       (uuid_t *)&matchguid, ((void*)0));
   if (rv != 0) {
    rv = efi_print_var(varname, &varguid, lflag);
    if (rv != CMD_OK) {
     if (rv == CMD_WARN)
      rv = CMD_OK;
     break;
    }
    continue;
   }
  }
 }
 free(varname);
 pager_close();

 return (rv);
}
