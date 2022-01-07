
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct servent {char* s_name; char* s_proto; char** s_aliases; scalar_t__ s_port; } ;


 int ntohs (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
pserv(const struct servent *svp)
{
 char **pp;

 printf("name=%s, port=%d, proto=%s, aliases=",
     svp->s_name, ntohs((uint16_t)svp->s_port), svp->s_proto);
 for (pp = svp->s_aliases; *pp; pp++)
  printf("%s ", *pp);
 printf("\n");
}
