
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libusb_context ;


 int CTX_UNLOCK (int *) ;
 int * GET_CONTEXT (int *) ;

void
libusb_unlock_event_waiters(libusb_context *ctx)
{
 ctx = GET_CONTEXT(ctx);
 CTX_UNLOCK(ctx);
}
