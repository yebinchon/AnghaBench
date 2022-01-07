
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int e7000_desc ;
 int errno ;
 int error (char*) ;
 int expect (char*) ;
 int fprintf_unfiltered (int ,char*,int ) ;
 int gdb_stderr ;
 int printf_unfiltered (char*,char*) ;
 scalar_t__ remote_debug ;
 int safe_strerror (int ) ;
 scalar_t__ serial_write (int ,char*,int ) ;
 int strlen (char*) ;
 int using_pc ;

__attribute__((used)) static void
puts_e7000debug (char *buf)
{
  if (!e7000_desc)
    error ("Use \"target e7000 ...\" first.");

  if (remote_debug)
    printf_unfiltered ("Sending %s\n", buf);

  if (serial_write (e7000_desc, buf, strlen (buf)))
    fprintf_unfiltered (gdb_stderr, "serial_write failed: %s\n", safe_strerror (errno));





    expect (buf);
}
