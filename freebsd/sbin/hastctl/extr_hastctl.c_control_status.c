
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv {int dummy; } ;


 int nv_get_int16 (struct nv*,char*,unsigned int) ;
 char* nv_get_string (struct nv*,char*,unsigned int) ;
 int printf (char*,...) ;

__attribute__((used)) static int
control_status(struct nv *nv)
{
 unsigned int ii;
 const char *str;
 int error, hprinted, ret;

 hprinted = 0;
 ret = 0;

 for (ii = 0; ; ii++) {
  str = nv_get_string(nv, "resource%u", ii);
  if (str == ((void*)0))
   break;
  if (!hprinted) {
   printf("Name\tStatus\t Role\t\tComponents\n");
   hprinted = 1;
  }
  printf("%s\t", str);
  error = nv_get_int16(nv, "error%u", ii);
  if (error != 0) {
   if (ret == 0)
    ret = error;
   printf("ERR%d\n", error);
   continue;
  }
  str = nv_get_string(nv, "status%u", ii);
  printf("%-9s", (str != ((void*)0)) ? str : "-");
  printf("%-15s", nv_get_string(nv, "role%u", ii));
  printf("%s\t",
      nv_get_string(nv, "localpath%u", ii));
  printf("%s\n",
      nv_get_string(nv, "remoteaddr%u", ii));
 }
 return (ret);
}
