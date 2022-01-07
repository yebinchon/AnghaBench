
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fwrite (char*,int,int,int ) ;
 int mips_desc ;
 int serial_write (int ,char*,int) ;
 int tftp_file ;
 scalar_t__ tftp_in_use ;
 int udp_desc ;
 scalar_t__ udp_in_use ;

__attribute__((used)) static void
pmon_download (char *buffer, int length)
{
  if (tftp_in_use)
    fwrite (buffer, 1, length, tftp_file);
  else
    serial_write (udp_in_use ? udp_desc : mips_desc, buffer, length);
}
