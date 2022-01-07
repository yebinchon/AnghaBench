
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOAD_CMD ;
 int LOAD_CMD_UDP ;
 int * fopen (int ,char*) ;
 int mips_expect (char*) ;
 int mips_send_command (int ,int ) ;
 int perror_with_name (int ) ;
 int * tftp_file ;
 scalar_t__ tftp_in_use ;
 int tftp_localname ;
 scalar_t__ udp_in_use ;

__attribute__((used)) static void
pmon_start_download (void)
{
  if (tftp_in_use)
    {

      if ((tftp_file = fopen (tftp_localname, "w")) == ((void*)0))
 perror_with_name (tftp_localname);
    }
  else
    {
      mips_send_command (udp_in_use ? LOAD_CMD_UDP : LOAD_CMD, 0);
      mips_expect ("Downloading from ");
      mips_expect (udp_in_use ? "udp" : "tty0");
      mips_expect (", ^C to abort\r\n");
    }
}
