
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ e7000_desc ;
 int serial_close (scalar_t__) ;

__attribute__((used)) static void
e7000_close (int quitting)
{
  if (e7000_desc)
    {
      serial_close (e7000_desc);
      e7000_desc = 0;
    }
}
