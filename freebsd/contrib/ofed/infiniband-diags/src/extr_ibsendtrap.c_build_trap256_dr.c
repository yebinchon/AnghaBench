
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ib_portid_t ;
struct TYPE_7__ {int dr_trunc_hop; int* dr_rtn_path; } ;
struct TYPE_6__ {TYPE_2__ ntc_256; } ;
struct TYPE_8__ {TYPE_1__ data_details; } ;
typedef TYPE_3__ ib_mad_notice_attr_t ;


 int build_trap256_local (TYPE_3__*,int *) ;

__attribute__((used)) static void build_trap256_dr(ib_mad_notice_attr_t * n, ib_portid_t * port)
{
 build_trap256_local(n, port);
 n->data_details.ntc_256.dr_trunc_hop = 0x80 | 0x4;
 n->data_details.ntc_256.dr_rtn_path[0] = 5;
 n->data_details.ntc_256.dr_rtn_path[1] = 6;
 n->data_details.ntc_256.dr_rtn_path[2] = 7;
 n->data_details.ntc_256.dr_rtn_path[3] = 8;
}
