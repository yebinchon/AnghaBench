
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int fprintf_unfiltered (int ,char*,int,int) ;
 int gdb_stdlog ;
 int perror_with_name (char*) ;
 int remote_debug ;
 int sds_desc ;
 int serial_readchar (int ,int) ;

__attribute__((used)) static int
readchar (int timeout)
{
  int ch;

  ch = serial_readchar (sds_desc, timeout);

  if (remote_debug > 1 && ch >= 0)
    fprintf_unfiltered (gdb_stdlog, "%c(%x)", ch, ch);

  switch (ch)
    {
    case 130:
      error ("Remote connection closed");
    case 129:
      perror_with_name ("Remote communication error");
    case 128:
      return ch;
    default:
      return ch & 0x7f;
    }
}
