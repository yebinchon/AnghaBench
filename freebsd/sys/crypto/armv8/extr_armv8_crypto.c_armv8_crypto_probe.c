
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int device_t ;


 int ENXIO ;


 int ID_AA64ISAR0_AES_VAL (int ) ;
 int READ_SPECIALREG (int ) ;
 int device_set_desc_copy (int ,char*) ;
 int id_aa64isar0_el1 ;

__attribute__((used)) static int
armv8_crypto_probe(device_t dev)
{
 uint64_t reg;
 int ret = ENXIO;

 reg = READ_SPECIALREG(id_aa64isar0_el1);

 switch (ID_AA64ISAR0_AES_VAL(reg)) {
 case 129:
 case 128:
  ret = 0;
  break;
 }

 device_set_desc_copy(dev, "AES-CBC");



 return (ret);
}
