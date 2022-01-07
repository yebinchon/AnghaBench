
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputc (int ,int) ;

fwrite (char *buf, int numelts, int size, int stream)
{
  int i = numelts * size;
  while (i-- > 0)
    fputc (*buf++, stream);
}
