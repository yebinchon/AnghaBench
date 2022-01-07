
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPU_COPRO_NUMBER ;
 int RDP_COPRO_WRITE ;
 int RDP_FPU_READWRITE_MASK_FPS ;
 int extract_unsigned_integer (char*,int) ;
 int printf (char*,int) ;
 int send_rdp (char*,int ,int ,int,int,...) ;

__attribute__((used)) static void
rdp_store_one_fpu_register (int mask, char *buf)
{
}
