
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ WPA_GET_BE16 (int const*) ;
 scalar_t__ WPA_GET_BE32 (int const*) ;
 int WPS_DEV_TYPE_LEN ;
 scalar_t__ os_memcmp (int const*,int const*,int) ;

__attribute__((used)) static int dev_type_match(const u8 *dev_type, const u8 *req_dev_type)
{
 if (os_memcmp(dev_type, req_dev_type, WPS_DEV_TYPE_LEN) == 0)
  return 1;
 if (os_memcmp(dev_type, req_dev_type, 2) == 0 &&
     WPA_GET_BE32(&req_dev_type[2]) == 0 &&
     WPA_GET_BE16(&req_dev_type[6]) == 0)
  return 1;
 return 0;
}
