
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int set; int tablename; } ;
typedef TYPE_1__ ipfw_xtable_info ;
struct TYPE_6__ {int ntlv; } ;
typedef TYPE_2__ ipfw_obj_header ;


 int table_fill_ntlv (int *,int ,int ,int) ;
 int table_flush (TYPE_2__*) ;

__attribute__((used)) static int
table_flush_one(ipfw_xtable_info *i, void *arg)
{
 ipfw_obj_header *oh;

 oh = (ipfw_obj_header *)arg;

 table_fill_ntlv(&oh->ntlv, i->tablename, i->set, 1);

 return (table_flush(oh));
}
