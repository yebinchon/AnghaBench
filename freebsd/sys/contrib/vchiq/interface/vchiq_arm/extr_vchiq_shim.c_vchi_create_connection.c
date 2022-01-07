
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VCHI_MESSAGE_DRIVER_T ;
typedef int VCHI_CONNECTION_T ;
typedef int VCHI_CONNECTION_API_T ;



VCHI_CONNECTION_T *vchi_create_connection(
 const VCHI_CONNECTION_API_T *function_table,
 const VCHI_MESSAGE_DRIVER_T *low_level)
{
 (void)function_table;
 (void)low_level;
 return ((void*)0);
}
