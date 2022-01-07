
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pingpong_context {int gidx; TYPE_1__* rem_dest; } ;
struct TYPE_4__ {int hop_limit; int sgid_index; int dgid; } ;
struct ibv_ah_attr {int is_global; TYPE_2__ grh; } ;
struct TYPE_3__ {int gid; } ;



__attribute__((used)) static void set_ah_attr(struct ibv_ah_attr *attr, struct pingpong_context *myctx,
   int index)
{
 attr->is_global = 1;
 attr->grh.hop_limit = 5;
 attr->grh.dgid = myctx->rem_dest[index].gid;
 attr->grh.sgid_index = myctx->gidx;
}
