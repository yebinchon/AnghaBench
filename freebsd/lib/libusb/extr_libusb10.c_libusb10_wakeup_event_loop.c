
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int * ctrl_pipe; } ;
typedef TYPE_1__ libusb_context ;
typedef int dummy ;


 int DPRINTF (TYPE_1__*,int ,char*) ;
 int LIBUSB_DEBUG_FUNCTION ;
 int write (int ,int *,int) ;

__attribute__((used)) static void
libusb10_wakeup_event_loop(libusb_context *ctx)
{
 uint8_t dummy = 0;
 int err;

 err = write(ctx->ctrl_pipe[1], &dummy, sizeof(dummy));
 if (err < (int)sizeof(dummy)) {

  DPRINTF(ctx, LIBUSB_DEBUG_FUNCTION, "Waking up event loop failed!");
 }
}
