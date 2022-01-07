
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tbuf ;
struct TYPE_6__ {int opheader; } ;
typedef TYPE_1__ ipfw_xtable_info ;
typedef TYPE_1__ ipfw_obj_header ;


 int IP_FW_TABLE_XMODIFY ;
 int do_set3 (int ,int *,int) ;
 int memcpy (char*,TYPE_1__*,int) ;

__attribute__((used)) static int
table_do_modify(ipfw_obj_header *oh, ipfw_xtable_info *i)
{
 char tbuf[sizeof(ipfw_obj_header) + sizeof(ipfw_xtable_info)];
 int error;

 memcpy(tbuf, oh, sizeof(*oh));
 memcpy(tbuf + sizeof(*oh), i, sizeof(*i));
 oh = (ipfw_obj_header *)tbuf;

 error = do_set3(IP_FW_TABLE_XMODIFY, &oh->opheader, sizeof(tbuf));

 return (error);
}
