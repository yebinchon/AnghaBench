
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb_device {struct libusb20_device* os_priv; int * ctx; int tr_head; } ;
struct libusb20_device {struct libusb_device* privLuData; } ;
struct libusb20_backend {int dummy; } ;
typedef int ssize_t ;
typedef int libusb_device ;
typedef int libusb_context ;


 int * GET_CONTEXT (int *) ;
 int LIBUSB_ERROR_INVALID_PARAM ;
 int LIBUSB_ERROR_NO_MEM ;
 int TAILQ_INIT (int *) ;
 int free (int **) ;
 struct libusb20_backend* libusb20_be_alloc_default () ;
 int libusb20_be_dequeue_device (struct libusb20_backend*,struct libusb20_device*) ;
 struct libusb20_device* libusb20_be_device_foreach (struct libusb20_backend*,struct libusb20_device*) ;
 int libusb20_be_free (struct libusb20_backend*) ;
 int * libusb_ref_device (struct libusb_device*) ;
 int libusb_unref_device (int *) ;
 void* malloc (int) ;
 int memset (struct libusb_device*,int ,int) ;

ssize_t
libusb_get_device_list(libusb_context *ctx, libusb_device ***list)
{
 struct libusb20_backend *usb_backend;
 struct libusb20_device *pdev;
 struct libusb_device *dev;
 int i;

 ctx = GET_CONTEXT(ctx);

 if (ctx == ((void*)0))
  return (LIBUSB_ERROR_INVALID_PARAM);

 if (list == ((void*)0))
  return (LIBUSB_ERROR_INVALID_PARAM);

 usb_backend = libusb20_be_alloc_default();
 if (usb_backend == ((void*)0))
  return (LIBUSB_ERROR_NO_MEM);


 pdev = ((void*)0);
 i = 0;
 while ((pdev = libusb20_be_device_foreach(usb_backend, pdev)))
  i++;


 *list = malloc((i + 1) * sizeof(void *));
 if (*list == ((void*)0)) {
  libusb20_be_free(usb_backend);
  return (LIBUSB_ERROR_NO_MEM);
 }

 i = 0;
 while ((pdev = libusb20_be_device_foreach(usb_backend, ((void*)0)))) {

  dev = malloc(sizeof(*dev));
  if (dev == ((void*)0)) {
   while (i != 0) {
    libusb_unref_device((*list)[i - 1]);
    i--;
   }
   free(*list);
   *list = ((void*)0);
   libusb20_be_free(usb_backend);
   return (LIBUSB_ERROR_NO_MEM);
  }

  libusb20_be_dequeue_device(usb_backend, pdev);

  memset(dev, 0, sizeof(*dev));


  TAILQ_INIT(&dev->tr_head);


  dev->ctx = ctx;


  dev->os_priv = pdev;
  pdev->privLuData = dev;

  (*list)[i] = libusb_ref_device(dev);
  i++;
 }
 (*list)[i] = ((void*)0);

 libusb20_be_free(usb_backend);
 return (i);
}
