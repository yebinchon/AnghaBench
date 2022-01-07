
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int * currextra; } ;
struct TYPE_6__ {TYPE_2__* currextra; } ;
struct usb_parse_state {scalar_t__ preparse; TYPE_1__ b; TYPE_3__ a; } ;
struct TYPE_5__ {int len; void* ptr; } ;


 int memcpy (int *,void*,int) ;

__attribute__((used)) static void
usb_parse_extra(struct usb_parse_state *ps, uint8_t **pptr, int *plen)
{
 void *ptr;
 uint16_t len;

 ptr = ps->a.currextra->ptr;
 len = ps->a.currextra->len;

 if (ps->preparse == 0) {
  memcpy(ps->b.currextra, ptr, len);
  *pptr = ps->b.currextra;
  *plen = len;
 }
 ps->b.currextra += len;
 return;
}
