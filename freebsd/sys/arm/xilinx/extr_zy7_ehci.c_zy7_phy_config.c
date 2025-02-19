
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int phandle_t ;
typedef int device_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;
typedef int buf ;


 int DELAY (int) ;
 scalar_t__ OF_getprop (int ,char*,char*,int) ;
 int ZY7_USB_PORTSC (int) ;
 int ZY7_USB_PORTSC_PTS2 ;
 int ZY7_USB_PORTSC_PTS_MASK ;
 int ZY7_USB_PORTSC_PTS_SERIAL ;
 int ZY7_USB_PORTSC_PTS_ULPI ;
 int ZY7_USB_PORTSC_PTS_UTMI ;
 int ZY7_USB_PORTSC_PTW ;
 int ZY7_USB_ULPI_VIEWPORT ;
 int ZY7_USB_ULPI_VIEWPORT_ADDR_SHIFT ;
 int ZY7_USB_ULPI_VIEWPORT_DATAWR_SHIFT ;
 int ZY7_USB_ULPI_VIEWPORT_PORT_SHIFT ;
 int ZY7_USB_ULPI_VIEWPORT_RUN ;
 int ZY7_USB_ULPI_VIEWPORT_RW ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_write_4 (int ,int ,int ,int) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
zy7_phy_config(device_t dev, bus_space_tag_t io_tag, bus_space_handle_t bsh)
{
 phandle_t node;
 char buf[64];
 uint32_t portsc;
 int tries;

 node = ofw_bus_get_node(dev);

 if (OF_getprop(node, "phy_type", buf, sizeof(buf)) > 0) {
  portsc = bus_space_read_4(io_tag, bsh, ZY7_USB_PORTSC(1));
  portsc &= ~(ZY7_USB_PORTSC_PTS_MASK | ZY7_USB_PORTSC_PTW |
       ZY7_USB_PORTSC_PTS2);

  if (strcmp(buf,"ulpi") == 0)
   portsc |= ZY7_USB_PORTSC_PTS_ULPI;
  else if (strcmp(buf,"utmi") == 0)
   portsc |= ZY7_USB_PORTSC_PTS_UTMI;
  else if (strcmp(buf,"utmi-wide") == 0)
   portsc |= (ZY7_USB_PORTSC_PTS_UTMI |
       ZY7_USB_PORTSC_PTW);
  else if (strcmp(buf, "serial") == 0)
   portsc |= ZY7_USB_PORTSC_PTS_SERIAL;

  bus_space_write_4(io_tag, bsh, ZY7_USB_PORTSC(1), portsc);
 }

 if (OF_getprop(node, "phy_vbus_ext", buf, sizeof(buf)) >= 0) {


  bus_space_write_4(io_tag, bsh, ZY7_USB_ULPI_VIEWPORT,
      ZY7_USB_ULPI_VIEWPORT_RUN |
      ZY7_USB_ULPI_VIEWPORT_RW |
      (0 << ZY7_USB_ULPI_VIEWPORT_PORT_SHIFT) |
      (0x0b << ZY7_USB_ULPI_VIEWPORT_ADDR_SHIFT) |
      (0x60 << ZY7_USB_ULPI_VIEWPORT_DATAWR_SHIFT)
   );

  tries = 100;
  while ((bus_space_read_4(io_tag, bsh, ZY7_USB_ULPI_VIEWPORT) &
   ZY7_USB_ULPI_VIEWPORT_RUN) != 0) {
   if (--tries < 0)
    return (-1);
   DELAY(1);
  }
 }

 return (0);
}
