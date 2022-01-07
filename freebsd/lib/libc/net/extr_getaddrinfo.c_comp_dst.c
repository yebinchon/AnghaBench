
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ sa_family; } ;
struct ai_order {scalar_t__ aio_dstscope; scalar_t__ aio_srcscope; int aio_srcflag; scalar_t__ aio_matchlen; scalar_t__ aio_initial_sequence; TYPE_7__* aio_ai; TYPE_5__* aio_dstpolicy; TYPE_3__* aio_srcpolicy; TYPE_1__ aio_srcsa; } ;
struct TYPE_14__ {TYPE_6__* ai_addr; } ;
struct TYPE_13__ {scalar_t__ sa_family; } ;
struct TYPE_11__ {scalar_t__ label; scalar_t__ preced; } ;
struct TYPE_12__ {TYPE_4__ pc_policy; } ;
struct TYPE_9__ {scalar_t__ label; } ;
struct TYPE_10__ {TYPE_2__ pc_policy; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_UNSPEC ;
 int AIO_SRCFLAG_DEPRECATED ;

__attribute__((used)) static int
comp_dst(const void *arg1, const void *arg2)
{
 const struct ai_order *dst1 = arg1, *dst2 = arg2;





 if (dst1->aio_srcsa.sa_family != AF_UNSPEC &&
     dst2->aio_srcsa.sa_family == AF_UNSPEC) {
  return(-1);
 }
 if (dst1->aio_srcsa.sa_family == AF_UNSPEC &&
     dst2->aio_srcsa.sa_family != AF_UNSPEC) {
  return(1);
 }


 if (dst1->aio_dstscope == dst1->aio_srcscope &&
     dst2->aio_dstscope != dst2->aio_srcscope) {
  return(-1);
 }
 if (dst1->aio_dstscope != dst1->aio_srcscope &&
     dst2->aio_dstscope == dst2->aio_srcscope) {
  return(1);
 }


 if (dst1->aio_srcsa.sa_family != AF_UNSPEC &&
     dst2->aio_srcsa.sa_family != AF_UNSPEC) {
  if (!(dst1->aio_srcflag & AIO_SRCFLAG_DEPRECATED) &&
      (dst2->aio_srcflag & AIO_SRCFLAG_DEPRECATED)) {
   return(-1);
  }
  if ((dst1->aio_srcflag & AIO_SRCFLAG_DEPRECATED) &&
      !(dst2->aio_srcflag & AIO_SRCFLAG_DEPRECATED)) {
   return(1);
  }
 }
 if (dst1->aio_dstscope >= 0 &&
     dst1->aio_dstscope < dst2->aio_dstscope) {
  return(-1);
 }
 if (dst2->aio_dstscope >= 0 &&
     dst2->aio_dstscope < dst1->aio_dstscope) {
  return(1);
 }





 if (dst1->aio_ai->ai_addr->sa_family ==
     dst2->aio_ai->ai_addr->sa_family &&
     dst1->aio_ai->ai_addr->sa_family != AF_INET) {
  if (dst1->aio_matchlen > dst2->aio_matchlen) {
   return(-1);
  }
  if (dst1->aio_matchlen < dst2->aio_matchlen) {
   return(1);
  }
 }
 if (dst2->aio_initial_sequence < dst1->aio_initial_sequence)
  return(1);

 return(-1);
}
