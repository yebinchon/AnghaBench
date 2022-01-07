
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif {int dummy; } ;


 scalar_t__ memcmp (char*,char*,int) ;
 int printf (char*) ;

__attribute__((used)) static int
net_match(struct netif *nif, void *machdep_hint)
{
 char **a = (char **)machdep_hint;

 if (memcmp("net", *a, 3) == 0)
  return (1);

 printf("net_match: could not match network device\n");
 return (0);
}
