
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf_unfiltered (int ,char*,char) ;
 int gdb_stdlog ;
 int io ;
 scalar_t__ remote_debug ;
 int serial_write (int ,char*,int) ;

__attribute__((used)) static void
put_byte (char val)
{
  if (remote_debug)
    fprintf_unfiltered (gdb_stdlog, "(%02x)\n", val);
  serial_write (io, &val, 1);
}
