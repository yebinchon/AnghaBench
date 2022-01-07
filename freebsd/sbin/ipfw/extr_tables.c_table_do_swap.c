
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tbuf ;
typedef int ipfw_obj_ntlv ;
struct TYPE_5__ {int set; } ;
struct TYPE_6__ {int opheader; TYPE_1__ ntlv; } ;
typedef TYPE_2__ ipfw_obj_header ;


 int IP_FW_TABLE_XSWAP ;
 int do_set3 (int ,int *,int) ;
 int memcpy (char*,TYPE_2__*,int) ;
 int memset (char*,int ,int) ;
 int table_fill_ntlv (int *,char*,int ,int) ;

__attribute__((used)) static int
table_do_swap(ipfw_obj_header *oh, char *second)
{
 char tbuf[sizeof(ipfw_obj_header) + sizeof(ipfw_obj_ntlv)];
 int error;

 memset(tbuf, 0, sizeof(tbuf));
 memcpy(tbuf, oh, sizeof(*oh));
 oh = (ipfw_obj_header *)tbuf;
 table_fill_ntlv((ipfw_obj_ntlv *)(oh + 1), second, oh->ntlv.set, 1);

 error = do_set3(IP_FW_TABLE_XSWAP, &oh->opheader, sizeof(tbuf));

 return (error);
}
