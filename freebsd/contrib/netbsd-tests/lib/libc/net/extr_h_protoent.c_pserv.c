
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent {char* p_name; int p_proto; char** p_aliases; } ;


 int printf (char*,...) ;

__attribute__((used)) static void
pserv(const struct protoent *prp)
{
 char **pp;

 printf("name=%s, proto=%d, aliases=",
     prp->p_name, prp->p_proto);
 for (pp = prp->p_aliases; *pp; pp++)
  printf("%s ", *pp);
 printf("\n");
}
