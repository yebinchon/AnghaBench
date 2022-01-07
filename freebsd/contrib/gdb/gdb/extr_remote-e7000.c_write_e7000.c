
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int e7000_desc ;
 int serial_write (int ,char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void
write_e7000 (char *s)
{
  serial_write (e7000_desc, s, strlen (s));
}
