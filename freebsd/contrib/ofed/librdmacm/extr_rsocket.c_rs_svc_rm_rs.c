
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {int dummy; } ;
struct rs_svc {size_t cnt; int context_size; scalar_t__ contexts; int * rss; } ;


 int EBADF ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int rs_svc_index (struct rs_svc*,struct rsocket*) ;

__attribute__((used)) static int rs_svc_rm_rs(struct rs_svc *svc, struct rsocket *rs)
{
 int i;

 if ((i = rs_svc_index(svc, rs)) >= 0) {
  svc->rss[i] = svc->rss[svc->cnt];
  memcpy(svc->contexts + i * svc->context_size,
         svc->contexts + svc->cnt * svc->context_size,
         svc->context_size);
  svc->cnt--;
  return 0;
 }
 return EBADF;
}
