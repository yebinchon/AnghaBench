
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VCHIQ_STATUS_T ;
typedef int VCHIQ_SERVICE_HANDLE_T ;


 int VCHIQ_BULK_MODE_CALLBACK ;
 int VCHIQ_BULK_TRANSMIT ;
 int VCHI_MEM_HANDLE_INVALID ;
 int vchiq_bulk_transfer (int ,int ,void*,unsigned int,void*,int ,int ) ;

VCHIQ_STATUS_T
vchiq_queue_bulk_transmit(VCHIQ_SERVICE_HANDLE_T handle,
 void *data, unsigned int size, void *userdata)
{
 return vchiq_bulk_transfer(handle,
  VCHI_MEM_HANDLE_INVALID, data, size, userdata,
  VCHIQ_BULK_MODE_CALLBACK, VCHIQ_BULK_TRANSMIT);
}
