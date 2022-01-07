
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {int dummy; } ;
struct rs_svc {int cnt; struct rsocket** rss; } ;



__attribute__((used)) static int rs_svc_index(struct rs_svc *svc, struct rsocket *rs)
{
 int i;

 for (i = 1; i <= svc->cnt; i++) {
  if (svc->rss[i] == rs)
   return i;
 }
 return -1;
}
