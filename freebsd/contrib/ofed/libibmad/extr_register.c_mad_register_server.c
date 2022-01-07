
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int ibmp ;
 int mad_register_server_via (int,int ,long*,int ,int ) ;

int mad_register_server(int mgmt, uint8_t rmpp_version,
   long method_mask[], uint32_t class_oui)
{
 return mad_register_server_via(mgmt, rmpp_version, method_mask,
           class_oui, ibmp);
}
