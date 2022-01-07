
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int urd_maxlen; int urd_data; int urd_startentry; } ;
struct ugen20_urd_state {scalar_t__* ptr; scalar_t__* buf; scalar_t__* dummy_zero; scalar_t__ nparsed; void* src; void* dst; TYPE_1__ urd; int f; } ;


 int EINVAL ;
 int ENXIO ;
 int IOUSB (int ) ;
 int USB_READ_DIR ;
 scalar_t__ ioctl (int ,int ,TYPE_1__*) ;
 int libusb20_pass_ptr (scalar_t__*) ;
 int strlen (void*) ;

__attribute__((used)) static int
ugen20_readdir(struct ugen20_urd_state *st)
{
 ;
repeat:
 if (st->ptr == ((void*)0)) {
  st->urd.urd_startentry += st->nparsed;
  st->urd.urd_data = libusb20_pass_ptr(st->buf);
  st->urd.urd_maxlen = sizeof(st->buf);
  st->nparsed = 0;

  if (ioctl(st->f, IOUSB(USB_READ_DIR), &st->urd)) {
   return (EINVAL);
  }
  st->ptr = st->buf;
 }
 if (st->ptr[0] == 0) {
  if (st->nparsed) {
   st->ptr = ((void*)0);
   goto repeat;
  } else {
   return (ENXIO);
  }
 }
 st->src = (void *)(st->ptr + 1);
 st->dst = st->src + strlen(st->src) + 1;
 st->ptr = st->ptr + st->ptr[0];
 st->nparsed++;

 if ((st->ptr < st->buf) ||
     (st->ptr > st->dummy_zero)) {

  return (EINVAL);
 }
 return (0);
}
