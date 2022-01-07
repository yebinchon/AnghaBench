
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {char* h_name; char** h_aliases; char** h_addr_list; int h_length; int h_addrtype; } ;


 int ATF_REQUIRE (int ) ;
 void* calloc (int,int) ;
 char* malloc (int ) ;
 int memcpy (char*,char*,int ) ;
 int memset (struct hostent*,int ,int) ;
 void* strdup (char*) ;

__attribute__((used)) static void
clone_hostent(struct hostent *dest, struct hostent const *src)
{
 ATF_REQUIRE(dest != ((void*)0));
 ATF_REQUIRE(src != ((void*)0));

 char **cp;
 int aliases_num;
 int addrs_num;
 size_t offset;

 memset(dest, 0, sizeof(struct hostent));

 if (src->h_name != ((void*)0)) {
  dest->h_name = strdup(src->h_name);
  ATF_REQUIRE(dest->h_name != ((void*)0));
 }

 dest->h_addrtype = src->h_addrtype;
 dest->h_length = src->h_length;

 if (src->h_aliases != ((void*)0)) {
  aliases_num = 0;
  for (cp = src->h_aliases; *cp; ++cp)
   ++aliases_num;

  dest->h_aliases = calloc(aliases_num + 1, sizeof(char *));
  ATF_REQUIRE(dest->h_aliases != ((void*)0));

  for (cp = src->h_aliases; *cp; ++cp) {
   dest->h_aliases[cp - src->h_aliases] = strdup(*cp);
   ATF_REQUIRE(dest->h_aliases[cp - src->h_aliases] != ((void*)0));
  }
 }

 if (src->h_addr_list != ((void*)0)) {
  addrs_num = 0;
  for (cp = src->h_addr_list; *cp; ++cp)
   ++addrs_num;

  dest->h_addr_list = calloc(addrs_num + 1, sizeof(char *));
  ATF_REQUIRE(dest->h_addr_list != ((void*)0));

  for (cp = src->h_addr_list; *cp; ++cp) {
   offset = cp - src->h_addr_list;
   dest->h_addr_list[offset] = malloc(src->h_length);
   ATF_REQUIRE(dest->h_addr_list[offset] != ((void*)0));
   memcpy(dest->h_addr_list[offset],
       src->h_addr_list[offset], src->h_length);
  }
 }
}
