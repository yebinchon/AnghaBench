
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*,int) ;
 int rate_get ;
 int rate_get_incr ;
 int rate_put ;
 int rate_put_incr ;

void
crankrate(int sig)
{

 switch (sig) {
 case 129:
  if (rate_get)
   rate_get += rate_get_incr;
  if (rate_put)
   rate_put += rate_put_incr;
  break;
 case 128:
  if (rate_get && rate_get > rate_get_incr)
   rate_get -= rate_get_incr;
  if (rate_put && rate_put > rate_put_incr)
   rate_put -= rate_put_incr;
  break;
 default:
  err(1, "crankrate invoked with unknown signal: %d", sig);
 }
}
