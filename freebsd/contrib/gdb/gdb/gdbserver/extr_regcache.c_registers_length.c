
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int register_bytes ;

int
registers_length (void)
{
  return 2 * register_bytes;
}
