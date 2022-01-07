
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;



 int S_IROTH ;
 int chmod (int ,int) ;
 int fclose (int *) ;
 int mips_expect_download (char*) ;
 int mips_monitor ;
 int mips_send_command (char*,int) ;
 int pmon_check_ack (char*) ;
 int pmon_check_entry_address (char*,int) ;
 int pmon_check_total (int) ;
 int remove (int ) ;
 scalar_t__ stat (int ,struct stat*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int * tftp_file ;
 scalar_t__ tftp_in_use ;
 int tftp_localname ;
 char* tftp_name ;
 int xfree (char*) ;
 char* xmalloc (scalar_t__) ;

__attribute__((used)) static void
pmon_end_download (int final, int bintotal)
{
  char hexnumber[9];

  if (tftp_in_use)
    {
      static char *load_cmd_prefix = "load -b -s ";
      char *cmd;
      struct stat stbuf;


      fclose (tftp_file);
      tftp_file = ((void*)0);


      if (stat (tftp_localname, &stbuf) == 0)
 chmod (tftp_localname, stbuf.st_mode | S_IROTH);


      mips_send_command ("initEther\r", -1);


      cmd = xmalloc (strlen (load_cmd_prefix) + strlen (tftp_name) + 2);
      strcpy (cmd, load_cmd_prefix);
      strcat (cmd, tftp_name);
      strcat (cmd, "\r");
      mips_send_command (cmd, 0);
      xfree (cmd);
      if (!mips_expect_download ("Downloading from "))
 return;
      if (!mips_expect_download (tftp_name))
 return;
      if (!mips_expect_download (", ^C to abort\r\n"))
 return;
    }




  switch (mips_monitor)
    {
    case 128:
      pmon_check_ack ("termination");
      pmon_check_entry_address ("Entry address is ", final);
      if (!pmon_check_total (bintotal))
 return;
      break;
    default:
      pmon_check_entry_address ("Entry Address  = ", final);
      pmon_check_ack ("termination");
      if (!pmon_check_total (bintotal))
 return;
      break;
    }

  if (tftp_in_use)
    remove (tftp_localname);
}
