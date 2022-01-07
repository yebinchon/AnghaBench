
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct rt_entry {int rt_mask; int rt_dst; } ;
struct khash {int k_state; } ;
struct TYPE_18__ {int tv_sec; } ;
struct TYPE_17__ {int tv_sec; } ;
struct TYPE_16__ {scalar_t__ (* rnh_deladdr ) (TYPE_3__*,TYPE_4__*,TYPE_5__*) ;} ;
struct TYPE_13__ {int s_addr; } ;
struct TYPE_15__ {TYPE_2__ sin_addr; } ;
struct TYPE_12__ {int s_addr; } ;
struct TYPE_14__ {TYPE_1__ sin_addr; } ;


 int KS_DELETE ;
 scalar_t__ TRACEACTIONS ;
 TYPE_3__ dst_sock ;
 int free (struct rt_entry*) ;
 int htonl (int ) ;
 struct khash* kern_find (int ,int ,int ) ;
 TYPE_4__ mask_sock ;
 int masktrim (TYPE_4__*) ;
 int msglog (char*) ;
 TYPE_8__ need_kern ;
 TYPE_7__ now ;
 TYPE_5__* rhead ;
 scalar_t__ stub1 (TYPE_3__*,TYPE_4__*,TYPE_5__*) ;
 int total_routes ;
 int trace_add_del (char*,struct rt_entry*) ;

void
rtdelete(struct rt_entry *rt)
{
 struct khash *k;


 if (TRACEACTIONS)
  trace_add_del("Del", rt);

 k = kern_find(rt->rt_dst, rt->rt_mask, 0);
 if (k != ((void*)0)) {
  k->k_state |= KS_DELETE;
  need_kern.tv_sec = now.tv_sec;
 }

 dst_sock.sin_addr.s_addr = rt->rt_dst;
 mask_sock.sin_addr.s_addr = htonl(rt->rt_mask);
 masktrim(&mask_sock);
 if (rt != (struct rt_entry *)rhead->rnh_deladdr(&dst_sock, &mask_sock,
       rhead)) {
  msglog("rnh_deladdr() failed");
 } else {
  free(rt);
  total_routes--;
 }
}
