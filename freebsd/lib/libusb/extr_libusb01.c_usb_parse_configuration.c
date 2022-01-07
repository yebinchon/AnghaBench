
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int * currcfg; } ;
struct TYPE_3__ {void* currextra; void* currep; void* currifc; void* currifcw; struct usb_config_descriptor* currcfg; } ;
struct usb_parse_state {int preparse; TYPE_2__ a; TYPE_1__ b; } ;
struct usb_config_descriptor {int dummy; } ;
typedef int ps ;


 int free (int *) ;
 int * libusb20_parse_config_desc (int *) ;
 int * malloc (int) ;
 int memset (struct usb_parse_state*,int ,int) ;
 int usb_parse_config (struct usb_parse_state*) ;

int
usb_parse_configuration(struct usb_config_descriptor *config,
    uint8_t *buffer)
{
 struct usb_parse_state ps;
 uint8_t *ptr;
 uint32_t a;
 uint32_t b;
 uint32_t c;
 uint32_t d;

 if ((buffer == ((void*)0)) || (config == ((void*)0))) {
  return (-1);
 }
 memset(&ps, 0, sizeof(ps));

 ps.a.currcfg = libusb20_parse_config_desc(buffer);
 ps.b.currcfg = config;
 if (ps.a.currcfg == ((void*)0)) {

  return (-1);
 }

 ps.preparse = 1;
 usb_parse_config(&ps);

 a = ((uint8_t *)(ps.b.currifcw) - ((uint8_t *)0));
 b = ((uint8_t *)(ps.b.currifc) - ((uint8_t *)0));
 c = ((uint8_t *)(ps.b.currep) - ((uint8_t *)0));
 d = ((uint8_t *)(ps.b.currextra) - ((uint8_t *)0));


 ptr = malloc(a + b + c + d);
 if (ptr == ((void*)0)) {

  free(ps.a.currcfg);
  return (-1);
 }


 ps.b.currifcw = (void *)(ptr);
 ps.b.currifc = (void *)(ptr + a);
 ps.b.currep = (void *)(ptr + a + b);
 ps.b.currextra = (void *)(ptr + a + b + c);


 ps.preparse = 0;
 usb_parse_config(&ps);


 free(ps.a.currcfg);

 return (0);
}
