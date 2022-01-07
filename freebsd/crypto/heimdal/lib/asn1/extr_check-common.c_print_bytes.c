
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,unsigned char const) ;

__attribute__((used)) static void
print_bytes (unsigned const char *buf, size_t len)
{
    int i;

    for (i = 0; i < len; ++i)
 printf ("%02x ", buf[i]);
}
