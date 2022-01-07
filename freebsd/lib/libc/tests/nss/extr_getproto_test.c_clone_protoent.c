
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent {char* p_name; char** p_aliases; int p_proto; } ;


 int assert (int ) ;
 char** calloc (int,int) ;
 int memset (struct protoent*,int ,int) ;
 void* strdup (char*) ;

__attribute__((used)) static void
clone_protoent(struct protoent *dest, struct protoent const *src)
{
 assert(dest != ((void*)0));
 assert(src != ((void*)0));

 char **cp;
 int aliases_num;

 memset(dest, 0, sizeof(struct protoent));

 if (src->p_name != ((void*)0)) {
  dest->p_name = strdup(src->p_name);
  assert(dest->p_name != ((void*)0));
 }

 dest->p_proto = src->p_proto;

 if (src->p_aliases != ((void*)0)) {
  aliases_num = 0;
  for (cp = src->p_aliases; *cp; ++cp)
   ++aliases_num;

  dest->p_aliases = calloc(aliases_num + 1, sizeof(char *));
  assert(dest->p_aliases != ((void*)0));

  for (cp = src->p_aliases; *cp; ++cp) {
   dest->p_aliases[cp - src->p_aliases] = strdup(*cp);
   assert(dest->p_aliases[cp - src->p_aliases] != ((void*)0));
  }
 }
}
