
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ibv_qp_type { ____Placeholder_ibv_qp_type } ibv_qp_type ;







__attribute__((used)) static const char *qptype2key(enum ibv_qp_type type)
{
 switch (type) {
 case 130: return "HUGE_RC";
 case 129: return "HUGE_UC";
 case 128: return "HUGE_UD";
 case 131: return "HUGE_RAW_ETH";
 default: return "HUGE_NA";
 }
}
