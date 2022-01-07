
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int libusb_pollfd_removed_cb ;
typedef int libusb_pollfd_added_cb ;
struct TYPE_5__ {void* fd_cb_user_data; int fd_removed_cb; int fd_added_cb; } ;
typedef TYPE_1__ libusb_context ;


 TYPE_1__* GET_CONTEXT (TYPE_1__*) ;

void
libusb_set_pollfd_notifiers(libusb_context *ctx,
    libusb_pollfd_added_cb added_cb, libusb_pollfd_removed_cb removed_cb,
    void *user_data)
{
 ctx = GET_CONTEXT(ctx);

 ctx->fd_added_cb = added_cb;
 ctx->fd_removed_cb = removed_cb;
 ctx->fd_cb_user_data = user_data;
}
