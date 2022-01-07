
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct libusb20_me_struct {int len; scalar_t__ ptr; } ;


 int* LIBUSB20_ADD_BYTES (int const*,int ) ;

const uint8_t *
libusb20_desc_foreach(const struct libusb20_me_struct *pdesc,
    const uint8_t *psubdesc)
{
 const uint8_t *start;
 const uint8_t *end;
 const uint8_t *desc_next;


 if (pdesc == ((void*)0))
  return (((void*)0));

 start = (const uint8_t *)pdesc->ptr;
 end = LIBUSB20_ADD_BYTES(start, pdesc->len);


 if (psubdesc == ((void*)0))
  psubdesc = start;
 else
  psubdesc = psubdesc + psubdesc[0];


 if ((psubdesc < start) || (psubdesc >= end))
  return (((void*)0));


 desc_next = psubdesc + psubdesc[0];
 if ((desc_next < start) || (desc_next > end))
  return (((void*)0));


 if (psubdesc[0] < 3)
  return (((void*)0));

 return (psubdesc);
}
