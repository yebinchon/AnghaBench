
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int capp ;


 int EINVAL ;
 int VIA_HAS_AES ;
 int VIA_HAS_AESCTR ;
 int VIA_HAS_MM ;
 int VIA_HAS_SHA ;
 int device_printf (int ,char*) ;
 int device_set_desc_copy (int ,char*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char*,int) ;
 int via_feature_xcrypt ;

__attribute__((used)) static int
padlock_probe(device_t dev)
{
 char capp[256];



 if (!(via_feature_xcrypt & VIA_HAS_AES)) {
  device_printf(dev, "No ACE support.\n");
  return (EINVAL);
 }
 strlcpy(capp, "AES-CBC", sizeof(capp));





 if (via_feature_xcrypt & VIA_HAS_SHA) {
  strlcat(capp, ",SHA1", sizeof(capp));
  strlcat(capp, ",SHA256", sizeof(capp));
 }






 device_set_desc_copy(dev, capp);
 return (0);



}
