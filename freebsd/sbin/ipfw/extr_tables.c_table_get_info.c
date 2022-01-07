
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tbuf ;
typedef int ipfw_xtable_info ;
struct TYPE_4__ {int opheader; } ;
typedef TYPE_1__ ipfw_obj_header ;


 int EINVAL ;
 int IP_FW_TABLE_XINFO ;
 scalar_t__ do_get3 (int ,int *,size_t*) ;
 int errno ;
 int memcpy (char*,TYPE_1__*,int) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static int
table_get_info(ipfw_obj_header *oh, ipfw_xtable_info *i)
{
 char tbuf[sizeof(ipfw_obj_header) + sizeof(ipfw_xtable_info)];
 size_t sz;

 sz = sizeof(tbuf);
 memset(tbuf, 0, sizeof(tbuf));
 memcpy(tbuf, oh, sizeof(*oh));
 oh = (ipfw_obj_header *)tbuf;

 if (do_get3(IP_FW_TABLE_XINFO, &oh->opheader, &sz) != 0)
  return (errno);

 if (sz < sizeof(tbuf))
  return (EINVAL);

 *i = *(ipfw_xtable_info *)(oh + 1);

 return (0);
}
