
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {scalar_t__ h_addrtype; scalar_t__ h_length; int h_addr_list; int h_aliases; int * h_name; } ;


 int hostent_addr_list_compare (int ,int ,scalar_t__) ;
 int hostent_aliases_compare (int ,int ) ;
 scalar_t__ strcmp (int *,int *) ;

__attribute__((used)) static bool
hostent_compare(const struct hostent *hp0, const struct hostent *hp1)
{

 if (hp0 == ((void*)0) && hp1 != ((void*)0))
  return (1);

 if (hp0 == ((void*)0) || hp1 == ((void*)0))
  return (0);

 if (hp0->h_name != ((void*)0) || hp1->h_name != ((void*)0)) {
  if (hp0->h_name == ((void*)0) || hp1->h_name == ((void*)0))
   return (0);
  if (strcmp(hp0->h_name, hp1->h_name) != 0)
   return (0);
 }

 if (!hostent_aliases_compare(hp0->h_aliases, hp1->h_aliases))
  return (0);
 if (!hostent_aliases_compare(hp1->h_aliases, hp0->h_aliases))
  return (0);

 if (hp0->h_addrtype != hp1->h_addrtype)
  return (0);

 if (hp0->h_length != hp1->h_length)
  return (0);

 if (!hostent_addr_list_compare(hp0->h_addr_list, hp1->h_addr_list,
     hp0->h_length)) {
  return (0);
 }
 if (!hostent_addr_list_compare(hp1->h_addr_list, hp0->h_addr_list,
     hp0->h_length)) {
  return (0);
 }

 return (1);
}
