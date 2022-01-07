
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct remote_state {int remote_packet_size; } ;


 char* alloca (int) ;
 int bin2hex (char*,char*,int ) ;
 int error (char*,...) ;
 int fputc_unfiltered (char,struct ui_file*) ;
 int fromhex (char) ;
 struct remote_state* get_remote_state () ;
 int getpkt (char*,int,int ) ;
 scalar_t__ isdigit (char) ;
 scalar_t__ putpkt (char*) ;
 int remote_console_output (char*) ;
 int remote_desc ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
remote_rcmd (char *command,
      struct ui_file *outbuf)
{
  struct remote_state *rs = get_remote_state ();
  int i;
  char *buf = alloca (rs->remote_packet_size);
  char *p = buf;

  if (!remote_desc)
    error ("remote rcmd is only available after target open");


  if (command == ((void*)0))
    command = "";


  strcpy (buf, "qRcmd,");
  p = strchr (buf, '\0');

  if ((strlen (buf) + strlen (command) * 2 + 8 ) > (rs->remote_packet_size))
    error ("\"monitor\" command ``%s'' is too long\n", command);


  bin2hex (command, p, 0);

  if (putpkt (buf) < 0)
    error ("Communication problem with target\n");


  while (1)
    {

      buf[0] = '\0';
      getpkt (buf, (rs->remote_packet_size), 0);
      if (buf[0] == '\0')
 error ("Target does not support this command\n");
      if (buf[0] == 'O' && buf[1] != 'K')
 {
   remote_console_output (buf + 1);
   continue;
 }
      if (strcmp (buf, "OK") == 0)
 break;
      if (strlen (buf) == 3 && buf[0] == 'E'
   && isdigit (buf[1]) && isdigit (buf[2]))
 {
   error ("Protocol error with Rcmd");
 }
      for (p = buf; p[0] != '\0' && p[1] != '\0'; p += 2)
 {
   char c = (fromhex (p[0]) << 4) + fromhex (p[1]);
   fputc_unfiltered (c, outbuf);
 }
      break;
    }
}
