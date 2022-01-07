
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 scalar_t__** ext_fw_info_device ;

__attribute__((used)) static int is_ext_fw_info_supported(uint16_t device_id) {
 int i;
 for (i = 0; ext_fw_info_device[i][0]; i++)
  if (ext_fw_info_device[i][0] <= device_id &&
      device_id <= ext_fw_info_device[i][1])
   return 1;
 return 0;
}
