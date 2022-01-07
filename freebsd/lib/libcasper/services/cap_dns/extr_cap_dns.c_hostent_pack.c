
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct hostent {scalar_t__ h_length; int ** h_addr_list; int ** h_aliases; scalar_t__ h_addrtype; int * h_name; } ;
typedef int nvlname ;
typedef int nvlist_t ;


 int assert (int) ;
 int nvlist_add_binary (int *,char*,int *,size_t) ;
 int nvlist_add_number (int *,char*,int ) ;
 int nvlist_add_string (int *,char*,int *) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static void
hostent_pack(const struct hostent *hp, nvlist_t *nvl)
{
 unsigned int ii;
 char nvlname[64];
 int n;

 nvlist_add_string(nvl, "name", hp->h_name);
 nvlist_add_number(nvl, "addrtype", (uint64_t)hp->h_addrtype);
 nvlist_add_number(nvl, "length", (uint64_t)hp->h_length);

 if (hp->h_aliases == ((void*)0)) {
  nvlist_add_number(nvl, "naliases", 0);
 } else {
  for (ii = 0; hp->h_aliases[ii] != ((void*)0); ii++) {
   n = snprintf(nvlname, sizeof(nvlname), "alias%u", ii);
   assert(n > 0 && n < (int)sizeof(nvlname));
   nvlist_add_string(nvl, nvlname, hp->h_aliases[ii]);
  }
  nvlist_add_number(nvl, "naliases", (uint64_t)ii);
 }

 if (hp->h_addr_list == ((void*)0)) {
  nvlist_add_number(nvl, "naddrs", 0);
 } else {
  for (ii = 0; hp->h_addr_list[ii] != ((void*)0); ii++) {
   n = snprintf(nvlname, sizeof(nvlname), "addr%u", ii);
   assert(n > 0 && n < (int)sizeof(nvlname));
   nvlist_add_binary(nvl, nvlname, hp->h_addr_list[ii],
       (size_t)hp->h_length);
  }
  nvlist_add_number(nvl, "naddrs", (uint64_t)ii);
 }
}
