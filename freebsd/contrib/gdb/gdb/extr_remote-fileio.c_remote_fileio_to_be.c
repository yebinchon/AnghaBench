
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONGEST ;



__attribute__((used)) static void
remote_fileio_to_be (LONGEST num, char *buf, int bytes)
{
  int i;

  for (i = 0; i < bytes; ++i)
    buf[i] = (num >> (8 * (bytes - i - 1))) & 0xff;
}
