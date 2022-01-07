
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rt_entry {int dummy; } ;
typedef int naddr ;
struct TYPE_8__ {scalar_t__ (* rnh_matchaddr ) (TYPE_2__*,TYPE_3__*) ;} ;
struct TYPE_6__ {int s_addr; } ;
struct TYPE_7__ {TYPE_1__ sin_addr; } ;


 TYPE_2__ dst_sock ;
 TYPE_3__* rhead ;
 scalar_t__ stub1 (TYPE_2__*,TYPE_3__*) ;

struct rt_entry *
rtfind(naddr dst)
{
 dst_sock.sin_addr.s_addr = dst;
 return (struct rt_entry *)rhead->rnh_matchaddr(&dst_sock, rhead);
}
