
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum IvrsType { ____Placeholder_IvrsType } IvrsType ;
typedef int device_t ;





 int device_printf (int ,char*,int,...) ;

__attribute__((used)) static void
ivhd_print_flag(device_t dev, enum IvrsType ivhd_type, uint8_t flag)
{




 switch (ivhd_type) {
 case 129:
  device_printf(dev, "Flag:%b\n", flag,
   "\020"
   "\001HtTunEn"
   "\002PassPW"
   "\003ResPassPW"
   "\004Isoc"
   "\005IotlbSup"
   "\006Coherent"
   "\007PreFSup"
   "\008PPRSup");
  break;

 case 130:
 case 128:
  device_printf(dev, "Flag:%b\n", flag,
   "\020"
   "\001HtTunEn"
   "\002PassPW"
   "\003ResPassPW"
   "\004Isoc"
   "\005IotlbSup"
   "\006Coherent");
  break;

 default:
  device_printf(dev, "Can't decode flag of ivhd type :0x%x\n",
   ivhd_type);
  break;
 }
}
