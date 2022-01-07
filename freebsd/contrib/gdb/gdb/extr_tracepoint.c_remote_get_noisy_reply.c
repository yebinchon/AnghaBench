
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QUIT ;
 int error (char*) ;
 int getpkt (char*,long,int ) ;
 int remote_console_output (char*) ;
 int trace_error (char*) ;

__attribute__((used)) static char *
remote_get_noisy_reply (char *buf,
   long sizeof_buf)
{
  do
    {
      QUIT;
      getpkt (buf, sizeof_buf, 0);
      if (buf[0] == 0)
 error ("Target does not support this command.");
      else if (buf[0] == 'E')
 trace_error (buf);
      else if (buf[0] == 'O' &&
        buf[1] != 'K')
 remote_console_output (buf + 1);
      else
 return buf;
    }
  while (1);
}
