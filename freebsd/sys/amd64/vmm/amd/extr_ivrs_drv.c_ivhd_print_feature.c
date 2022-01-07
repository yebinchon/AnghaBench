
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum IvrsType { ____Placeholder_IvrsType } IvrsType ;
typedef int device_t ;





 int REG_BITS (int ,int,int) ;
 int device_printf (int ,char*,int,...) ;

__attribute__((used)) static void
ivhd_print_feature(device_t dev, enum IvrsType ivhd_type, uint32_t feature)
{
 switch (ivhd_type) {
 case 129:
  device_printf(dev, "Features(type:0x%x) HATS = %d GATS = %d"
   " MsiNumPPR = %d PNBanks= %d PNCounters= %d\n",
   ivhd_type,
   REG_BITS(feature, 31, 30),
   REG_BITS(feature, 29, 28),
   REG_BITS(feature, 27, 23),
   REG_BITS(feature, 22, 17),
   REG_BITS(feature, 16, 13));
  device_printf(dev, "max PASID = %d GLXSup = %d Feature:%b\n",
   REG_BITS(feature, 12, 8),
   REG_BITS(feature, 4, 3),
   feature,
   "\020"
   "\002NXSup"
   "\003GTSup"
   "\004<b4>"
   "\005IASup"
   "\006GASup"
   "\007HESup");
  break;


 case 130:
 case 128:
  device_printf(dev, "Features(type:0x%x) MsiNumPPR = %d"
   " PNBanks= %d PNCounters= %d\n",
   ivhd_type,
   REG_BITS(feature, 27, 23),
   REG_BITS(feature, 22, 17),
   REG_BITS(feature, 16, 13));
  break;

 default:
  device_printf(dev, "Can't decode ivhd type :0x%x\n", ivhd_type);
 }
}
