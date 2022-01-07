
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {int dummy; } ;



int
ser_unix_nop_drain_output (struct serial *scb)
{
  return 0;
}
