
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sim_data {int dummy; } ;


 int EAP_SIM_VERSION ;

__attribute__((used)) static int eap_sim_supported_ver(struct eap_sim_data *data, int version)
{
 return version == EAP_SIM_VERSION;
}
