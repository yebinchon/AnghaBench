
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {char* s_name; char* s_proto; char** s_aliases; int s_port; } ;


 int ATF_REQUIRE (int ) ;
 char** calloc (int,int) ;
 int memset (struct servent*,int ,int) ;
 void* strdup (char*) ;

__attribute__((used)) static void
clone_servent(struct servent *dest, struct servent const *src)
{
 ATF_REQUIRE(dest != ((void*)0));
 ATF_REQUIRE(src != ((void*)0));

 char **cp;
 int aliases_num;

 memset(dest, 0, sizeof(struct servent));

 if (src->s_name != ((void*)0)) {
  dest->s_name = strdup(src->s_name);
  ATF_REQUIRE(dest->s_name != ((void*)0));
 }

 if (src->s_proto != ((void*)0)) {
  dest->s_proto = strdup(src->s_proto);
  ATF_REQUIRE(dest->s_proto != ((void*)0));
 }
 dest->s_port = src->s_port;

 if (src->s_aliases != ((void*)0)) {
  aliases_num = 0;
  for (cp = src->s_aliases; *cp; ++cp)
   ++aliases_num;

  dest->s_aliases = calloc(aliases_num + 1, sizeof(char *));
  ATF_REQUIRE(dest->s_aliases != ((void*)0));

  for (cp = src->s_aliases; *cp; ++cp) {
   dest->s_aliases[cp - src->s_aliases] = strdup(*cp);
   ATF_REQUIRE(dest->s_aliases[cp - src->s_aliases] != ((void*)0));
  }
 }
}
