
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct sshkey_cert {size_t nprincipals; int * principals; } ;


 int debug3 (char*,char*) ;
 int free (char*) ;
 char* match_list (int ,char const*,int *) ;

__attribute__((used)) static int
match_principals_option(const char *principal_list, struct sshkey_cert *cert)
{
 char *result;
 u_int i;



 for (i = 0; i < cert->nprincipals; i++) {
  if ((result = match_list(cert->principals[i],
      principal_list, ((void*)0))) != ((void*)0)) {
   debug3("matched principal from key options \"%.100s\"",
       result);
   free(result);
   return 1;
  }
 }
 return 0;
}
