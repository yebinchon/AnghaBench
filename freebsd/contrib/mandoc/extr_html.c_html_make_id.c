
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {scalar_t__ type; struct roff_node* next; struct roff_node* child; } ;


 scalar_t__ ROFFT_TEXT ;
 int deroff (char**,struct roff_node const*) ;
 int free (char*) ;
 int id_unique ;
 scalar_t__ isalnum (unsigned char) ;
 int mandoc_asprintf (char**,char*,char*,int) ;
 char* ohash_find (int *,unsigned int) ;
 int ohash_insert (int *,unsigned int,char*) ;
 unsigned int ohash_qlookup (int *,char*) ;
 int * strchr (char*,char) ;

char *
html_make_id(const struct roff_node *n, int unique)
{
 const struct roff_node *nch;
 char *buf, *bufs, *cp;
 unsigned int slot;
 int suffix;

 for (nch = n->child; nch != ((void*)0); nch = nch->next)
  if (nch->type != ROFFT_TEXT)
   return ((void*)0);

 buf = ((void*)0);
 deroff(&buf, n);
 if (buf == ((void*)0))
  return ((void*)0);
 for (cp = buf; *cp != '\0'; cp++)
  if (isalnum((unsigned char)*cp) == 0 &&
      strchr("!$&'()*+,-./:;=?@_~", *cp) == ((void*)0))
   *cp = '_';

 if (unique == 0)
  return buf;



 bufs = ((void*)0);
 suffix = 1;
 slot = ohash_qlookup(&id_unique, buf);
 cp = ohash_find(&id_unique, slot);
 if (cp != ((void*)0)) {
  while (cp != ((void*)0)) {
   free(bufs);
   if (++suffix > 127) {
    free(buf);
    return ((void*)0);
   }
   mandoc_asprintf(&bufs, "%s_%d", buf, suffix);
   slot = ohash_qlookup(&id_unique, bufs);
   cp = ohash_find(&id_unique, slot);
  }
  free(buf);
  buf = bufs;
 }
 ohash_insert(&id_unique, slot, buf);
 return buf;
}
