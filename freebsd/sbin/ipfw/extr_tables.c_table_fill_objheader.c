
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int set; int tablename; } ;
typedef TYPE_1__ ipfw_xtable_info ;
struct TYPE_6__ {int idx; int ntlv; } ;
typedef TYPE_2__ ipfw_obj_header ;


 int table_fill_ntlv (int *,int ,int ,int) ;

__attribute__((used)) static void
table_fill_objheader(ipfw_obj_header *oh, ipfw_xtable_info *i)
{

 oh->idx = 1;
 table_fill_ntlv(&oh->ntlv, i->tablename, i->set, 1);
}
