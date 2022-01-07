
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iaddr {int len; int iabuf; } ;
typedef int FILE ;


 int DOT ;
 scalar_t__ parse_numeric_aggregate (int *,int ,int*,int ,int,int) ;

int
parse_ip_addr(FILE *cfile, struct iaddr *addr)
{
 addr->len = 4;
 if (parse_numeric_aggregate(cfile, addr->iabuf,
     &addr->len, DOT, 10, 8))
  return (1);
 return (0);
}
