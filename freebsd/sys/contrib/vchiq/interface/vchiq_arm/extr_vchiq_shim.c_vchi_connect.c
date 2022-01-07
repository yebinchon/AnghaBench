
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;
typedef int VCHI_INSTANCE_T ;
typedef int VCHI_CONNECTION_T ;
typedef int VCHIQ_INSTANCE_T ;


 int vchiq_connect (int ) ;

int32_t vchi_connect(VCHI_CONNECTION_T **connections,
 const uint32_t num_connections,
 VCHI_INSTANCE_T instance_handle)
{
 VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;

 (void)connections;
 (void)num_connections;

 return vchiq_connect(instance);
}
