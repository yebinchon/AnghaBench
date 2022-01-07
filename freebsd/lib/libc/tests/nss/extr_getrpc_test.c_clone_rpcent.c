
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcent {char* r_name; char** r_aliases; int r_number; } ;


 int ATF_REQUIRE (int ) ;
 char** calloc (int,int) ;
 int memset (struct rpcent*,int ,int) ;
 void* strdup (char*) ;

__attribute__((used)) static void
clone_rpcent(struct rpcent *dest, struct rpcent const *src)
{
 ATF_REQUIRE(dest != ((void*)0));
 ATF_REQUIRE(src != ((void*)0));

 char **cp;
 int aliases_num;

 memset(dest, 0, sizeof(struct rpcent));

 if (src->r_name != ((void*)0)) {
  dest->r_name = strdup(src->r_name);
  ATF_REQUIRE(dest->r_name != ((void*)0));
 }

 dest->r_number = src->r_number;

 if (src->r_aliases != ((void*)0)) {
  aliases_num = 0;
  for (cp = src->r_aliases; *cp; ++cp)
   ++aliases_num;

  dest->r_aliases = calloc(aliases_num + 1, sizeof(char *));
  ATF_REQUIRE(dest->r_aliases != ((void*)0));

  for (cp = src->r_aliases; *cp; ++cp) {
   dest->r_aliases[cp - src->r_aliases] = strdup(*cp);
   ATF_REQUIRE(dest->r_aliases[cp - src->r_aliases] != ((void*)0));
  }
 }
}
