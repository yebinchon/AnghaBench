
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int IBND_CONFIG_MLX_EPI ;
 int ibd_ibnetdisc_flags ;

int is_mlnx_ext_port_info_supported(uint32_t vendorid,
        uint16_t devid)
{
 if (ibd_ibnetdisc_flags & IBND_CONFIG_MLX_EPI) {

  if ((devid >= 0xc738 && devid <= 0xc73b) || devid == 0xcb20 || devid == 0xcf08 ||
      ((vendorid == 0x119f) &&

       (devid == 0x1b02 || devid == 0x1b50 ||

        devid == 0x1ba0 ||
        (devid >= 0x1bd0 && devid <= 0x1bd5))))
   return 1;
  if ((devid >= 0x1003 && devid <= 0x1017) ||
      ((vendorid == 0x119f) &&

       (devid == 0x1b33 || devid == 0x1b73 ||
        devid == 0x1b40 || devid == 0x1b41 ||
        devid == 0x1b60 || devid == 0x1b61 ||

        devid == 0x1b83 ||
        devid == 0x1b93 || devid == 0x1b94 ||

        devid == 0x1bb4 || devid == 0x1bb5 ||
        devid == 0x1bc4)))
   return 1;
 }

 return 0;
}
