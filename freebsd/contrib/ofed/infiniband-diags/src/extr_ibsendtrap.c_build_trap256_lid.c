
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ib_portid_t ;
struct TYPE_6__ {scalar_t__ dr_trunc_hop; } ;
struct TYPE_7__ {TYPE_1__ ntc_256; } ;
struct TYPE_8__ {TYPE_2__ data_details; } ;
typedef TYPE_3__ ib_mad_notice_attr_t ;


 int build_trap256_local (TYPE_3__*,int *) ;

__attribute__((used)) static void build_trap256_lid(ib_mad_notice_attr_t * n, ib_portid_t * port)
{
 build_trap256_local(n, port);
 n->data_details.ntc_256.dr_trunc_hop = 0;
}
