
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int EINVAL ;
 int detect_cpu_features (int*,int*) ;
 int device_printf (int ,char*) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
aesni_probe(device_t dev)
{
 bool has_aes, has_sha;

 detect_cpu_features(&has_aes, &has_sha);
 if (!has_aes && !has_sha) {
  device_printf(dev, "No AES or SHA support.\n");
  return (EINVAL);
 } else if (has_aes && has_sha)
  device_set_desc(dev,
      "AES-CBC,AES-CCM,AES-GCM,AES-ICM,AES-XTS,SHA1,SHA256");
 else if (has_aes)
  device_set_desc(dev,
      "AES-CBC,AES-CCM,AES-GCM,AES-ICM,AES-XTS");
 else
  device_set_desc(dev, "SHA1,SHA256");

 return (0);
}
