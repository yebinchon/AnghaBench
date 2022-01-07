
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf_unfiltered (int ,char*,int) ;
 int gdb_stdlog ;
 int io ;
 scalar_t__ remote_debug ;
 int serial_write (int ,unsigned char*,int) ;

__attribute__((used)) static void
put_word (int val)
{

  unsigned char b[4];
  b[0] = val;
  b[1] = val >> 8;
  b[2] = val >> 16;
  b[3] = val >> 24;

  if (remote_debug)
    fprintf_unfiltered (gdb_stdlog, "(%04x)", val);

  serial_write (io, b, 4);
}
