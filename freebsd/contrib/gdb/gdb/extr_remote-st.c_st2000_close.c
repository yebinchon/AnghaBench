
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ fclose (scalar_t__) ;
 scalar_t__ ferror (scalar_t__) ;
 int fprintf_unfiltered (int ,char*) ;
 int gdb_stderr ;
 scalar_t__ log_file ;
 int serial_close (int ) ;
 int st2000_desc ;

__attribute__((used)) static void
st2000_close (int quitting)
{
  serial_close (st2000_desc);
}
