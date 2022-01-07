
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {scalar_t__ type; char* string; struct roff_node* next; struct roff_node* child; } ;


 scalar_t__ ROFFT_TEXT ;
 int free (char*) ;
 int isspace (unsigned char) ;
 int mandoc_asprintf (char**,char*,char*,int,char*) ;
 char* mandoc_strndup (char*,size_t) ;
 int * strchr (char*,char) ;
 size_t strlen (char*) ;

void
deroff(char **dest, const struct roff_node *n)
{
 char *cp;
 size_t sz;

 if (n->type != ROFFT_TEXT) {
  for (n = n->child; n != ((void*)0); n = n->next)
   deroff(dest, n);
  return;
 }



 for (cp = n->string; *cp != '\0'; cp++) {
  if (cp[0] == '\\' && cp[1] != '\0' &&
      strchr(" %&0^|~", cp[1]) != ((void*)0))
   cp++;
  else if ( ! isspace((unsigned char)*cp))
   break;
 }



 sz = strlen(cp);
 if (sz > 0 && cp[sz - 1] == '\\')
  sz--;



 for (; sz; sz--)
  if ( ! isspace((unsigned char)cp[sz-1]))
   break;



 if (sz == 0)
  return;

 if (*dest == ((void*)0)) {
  *dest = mandoc_strndup(cp, sz);
  return;
 }

 mandoc_asprintf(&cp, "%s %*s", *dest, (int)sz, cp);
 free(*dest);
 *dest = cp;
}
