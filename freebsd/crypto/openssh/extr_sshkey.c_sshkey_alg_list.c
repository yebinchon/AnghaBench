
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keytype {int type; int * name; scalar_t__ cert; scalar_t__ sigonly; } ;


 int free (char*) ;
 struct keytype* keytypes ;
 int memcpy (char*,int *,size_t) ;
 char* realloc (char*,size_t) ;
 size_t strlen (int *) ;

char *
sshkey_alg_list(int certs_only, int plain_only, int include_sigonly, char sep)
{
 char *tmp, *ret = ((void*)0);
 size_t nlen, rlen = 0;
 const struct keytype *kt;

 for (kt = keytypes; kt->type != -1; kt++) {
  if (kt->name == ((void*)0))
   continue;
  if (!include_sigonly && kt->sigonly)
   continue;
  if ((certs_only && !kt->cert) || (plain_only && kt->cert))
   continue;
  if (ret != ((void*)0))
   ret[rlen++] = sep;
  nlen = strlen(kt->name);
  if ((tmp = realloc(ret, rlen + nlen + 2)) == ((void*)0)) {
   free(ret);
   return ((void*)0);
  }
  ret = tmp;
  memcpy(ret + rlen, kt->name, nlen + 1);
  rlen += nlen;
 }
 return ret;
}
