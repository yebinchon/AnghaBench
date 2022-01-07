
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resp_addr {int action; } ;
typedef enum respip_action { ____Placeholder_respip_action } respip_action ;


 int respip_none ;

enum respip_action
resp_addr_get_action(const struct resp_addr* addr)
{
 return addr ? addr->action : respip_none;
}
