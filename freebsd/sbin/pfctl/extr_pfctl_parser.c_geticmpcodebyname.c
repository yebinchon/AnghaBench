
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct icmpcodeent {scalar_t__ type; int name; } ;
typedef scalar_t__ sa_family_t ;


 scalar_t__ AF_INET6 ;
 struct icmpcodeent const* icmp6_code ;
 struct icmpcodeent const* icmp_code ;
 unsigned int nitems (struct icmpcodeent const*) ;
 int strcmp (char*,int ) ;

const struct icmpcodeent *
geticmpcodebyname(u_long type, char *w, sa_family_t af)
{
 unsigned int i;

 if (af != AF_INET6) {
  for (i=0; i < nitems(icmp_code); i++) {
   if (type == icmp_code[i].type &&
       !strcmp(w, icmp_code[i].name))
    return (&icmp_code[i]);
  }
 } else {
  for (i=0; i < nitems(icmp6_code); i++) {
   if (type == icmp6_code[i].type &&
       !strcmp(w, icmp6_code[i].name))
    return (&icmp6_code[i]);
  }
 }
 return (((void*)0));
}
