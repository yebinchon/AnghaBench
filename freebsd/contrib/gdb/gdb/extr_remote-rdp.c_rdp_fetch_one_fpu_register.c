
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPU_COPRO_NUMBER ;
 int MAX_REGISTER_SIZE ;
 int RDP_COPRO_READ ;
 int RDP_FPU_READWRITE_MASK_FPS ;
 int memset (char*,int ,int ) ;
 int send_rdp (char*,int ,int ,int,...) ;
 int store_signed_integer (char*,int,int) ;

__attribute__((used)) static void
rdp_fetch_one_fpu_register (int mask, char *buf)
{
  memset (buf, 0, MAX_REGISTER_SIZE);
}
