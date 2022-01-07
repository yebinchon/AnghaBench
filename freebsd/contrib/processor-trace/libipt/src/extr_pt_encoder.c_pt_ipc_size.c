
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pt_ip_compression { ____Placeholder_pt_ip_compression } pt_ip_compression ;
 int pt_pl_ip_full_size ;
 int pt_pl_ip_sext48_size ;
 int pt_pl_ip_upd16_size ;
 int pt_pl_ip_upd32_size ;
 int pt_pl_ip_upd48_size ;
 int pte_invalid ;

__attribute__((used)) static int pt_ipc_size(enum pt_ip_compression ipc)
{
 switch (ipc) {
 case 131:
  return 0;

 case 130:
  return pt_pl_ip_upd16_size;

 case 129:
  return pt_pl_ip_upd32_size;

 case 128:
  return pt_pl_ip_upd48_size;

 case 132:
  return pt_pl_ip_sext48_size;

 case 133:
  return pt_pl_ip_full_size;
 }

 return -pte_invalid;
}
