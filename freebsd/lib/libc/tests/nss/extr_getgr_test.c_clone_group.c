
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {char* gr_name; char* gr_passwd; char** gr_mem; int gr_gid; } ;


 int ATF_REQUIRE (int ) ;
 char** calloc (int,int) ;
 int memset (struct group*,int ,int) ;
 void* strdup (char*) ;

__attribute__((used)) static void
clone_group(struct group *dest, struct group const *src)
{
 ATF_REQUIRE(dest != ((void*)0));
 ATF_REQUIRE(src != ((void*)0));

 char **cp;
 int members_num;

 memset(dest, 0, sizeof(struct group));

 if (src->gr_name != ((void*)0)) {
  dest->gr_name = strdup(src->gr_name);
  ATF_REQUIRE(dest->gr_name != ((void*)0));
 }

 if (src->gr_passwd != ((void*)0)) {
  dest->gr_passwd = strdup(src->gr_passwd);
  ATF_REQUIRE(dest->gr_passwd != ((void*)0));
 }
 dest->gr_gid = src->gr_gid;

 if (src->gr_mem != ((void*)0)) {
  members_num = 0;
  for (cp = src->gr_mem; *cp; ++cp)
   ++members_num;

  dest->gr_mem = calloc(members_num + 1, sizeof(char *));
  ATF_REQUIRE(dest->gr_mem != ((void*)0));

  for (cp = src->gr_mem; *cp; ++cp) {
   dest->gr_mem[cp - src->gr_mem] = strdup(*cp);
   ATF_REQUIRE(dest->gr_mem[cp - src->gr_mem] != ((void*)0));
  }
 }
}
