
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ibmp ;
 int mad_register_client_via (int,int ,int ) ;

int mad_register_client(int mgmt, uint8_t rmpp_version)
{
 return mad_register_client_via(mgmt, rmpp_version, ibmp);
}
