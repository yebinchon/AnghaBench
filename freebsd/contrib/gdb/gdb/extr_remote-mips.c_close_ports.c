
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mips_desc ;
 scalar_t__ mips_is_open ;
 int serial_close (int ) ;
 scalar_t__ tftp_in_use ;
 int udp_desc ;
 scalar_t__ udp_in_use ;

__attribute__((used)) static void
close_ports (void)
{
  mips_is_open = 0;
  serial_close (mips_desc);

  if (udp_in_use)
    {
      serial_close (udp_desc);
      udp_in_use = 0;
    }
  tftp_in_use = 0;
}
