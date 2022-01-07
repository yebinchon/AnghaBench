
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERIAL_TIMEOUT ;
 int error (char*) ;
 int log_file ;
 int perror_with_name (char*) ;
 int putc (int,int ) ;
 int serial_readchar (int ,int) ;
 int st2000_desc ;

__attribute__((used)) static int
readchar (int timeout)
{
  int c;

  c = serial_readchar (st2000_desc, timeout);





  if (c >= 0)
    return c & 0x7f;

  if (c == SERIAL_TIMEOUT)
    {
      if (timeout == 0)
 return c;

      error ("Timeout reading from remote system.");
    }

  perror_with_name ("remote-st2000");
}
