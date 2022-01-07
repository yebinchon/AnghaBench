
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshcipher {int flags; } ;


 int CFLAG_INTERNAL ;
 int CIPHER_SEP ;
 struct sshcipher* cipher_by_name (char*) ;
 int free (char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strdup (char const*) ;
 char* strsep (char**,int ) ;

int
ciphers_valid(const char *names)
{
 const struct sshcipher *c;
 char *cipher_list, *cp;
 char *p;

 if (names == ((void*)0) || strcmp(names, "") == 0)
  return 0;
 if ((cipher_list = cp = strdup(names)) == ((void*)0))
  return 0;
 for ((p = strsep(&cp, CIPHER_SEP)); p && *p != '\0';
     (p = strsep(&cp, CIPHER_SEP))) {
  c = cipher_by_name(p);
  if (c == ((void*)0) || (c->flags & CFLAG_INTERNAL) != 0) {
   free(cipher_list);
   return 0;
  }
 }
 free(cipher_list);
 return 1;
}
