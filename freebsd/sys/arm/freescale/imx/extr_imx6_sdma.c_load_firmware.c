
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_softc {void const* fw_scripts; struct sdma_firmware_header const* fw_header; int dev; } ;
struct sdma_firmware_header {scalar_t__ magic; int script_addrs_start; } ;
struct firmware {struct sdma_firmware_header* data; } ;


 scalar_t__ FW_HEADER_MAGIC ;
 int device_printf (int ,char*) ;
 struct firmware* firmware_get (char*) ;

__attribute__((used)) static int
load_firmware(struct sdma_softc *sc)
{
 const struct sdma_firmware_header *header;
 const struct firmware *fp;

 fp = firmware_get("sdma_fw");
 if (fp == ((void*)0)) {
  device_printf(sc->dev, "Can't get firmware.\n");
  return (-1);
 }

 header = fp->data;
 if (header->magic != FW_HEADER_MAGIC) {
  device_printf(sc->dev, "Can't use firmware.\n");
  return (-1);
 }

 sc->fw_header = header;
 sc->fw_scripts = (const void *)((const char *)header +
    header->script_addrs_start);

 return (0);
}
