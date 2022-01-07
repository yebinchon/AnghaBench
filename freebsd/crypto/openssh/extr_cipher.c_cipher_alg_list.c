
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshcipher {int flags; scalar_t__ auth_len; int * name; } ;


 int CFLAG_INTERNAL ;
 struct sshcipher* ciphers ;
 int free (char*) ;
 int memcpy (char*,int *,size_t) ;
 char* realloc (char*,size_t) ;
 size_t strlen (int *) ;

char *
cipher_alg_list(char sep, int auth_only)
{
 char *tmp, *ret = ((void*)0);
 size_t nlen, rlen = 0;
 const struct sshcipher *c;

 for (c = ciphers; c->name != ((void*)0); c++) {
  if ((c->flags & CFLAG_INTERNAL) != 0)
   continue;
  if (auth_only && c->auth_len == 0)
   continue;
  if (ret != ((void*)0))
   ret[rlen++] = sep;
  nlen = strlen(c->name);
  if ((tmp = realloc(ret, rlen + nlen + 2)) == ((void*)0)) {
   free(ret);
   return ((void*)0);
  }
  ret = tmp;
  memcpy(ret + rlen, c->name, nlen + 1);
  rlen += nlen;
 }
 return ret;
}
