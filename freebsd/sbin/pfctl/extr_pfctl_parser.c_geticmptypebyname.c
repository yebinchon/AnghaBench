
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icmptypeent {int name; } ;
typedef scalar_t__ sa_family_t ;


 scalar_t__ AF_INET6 ;
 struct icmptypeent const* icmp6_type ;
 struct icmptypeent const* icmp_type ;
 unsigned int nitems (struct icmptypeent const*) ;
 int strcmp (char*,int ) ;

const struct icmptypeent *
geticmptypebyname(char *w, sa_family_t af)
{
 unsigned int i;

 if (af != AF_INET6) {
  for (i=0; i < nitems(icmp_type); i++) {
   if (!strcmp(w, icmp_type[i].name))
    return (&icmp_type[i]);
  }
 } else {
  for (i=0; i < nitems(icmp6_type); i++) {
   if (!strcmp(w, icmp6_type[i].name))
    return (&icmp6_type[i]);
  }
 }
 return (((void*)0));
}
