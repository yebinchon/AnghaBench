
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {int debug_p; } ;



void
serial_debug (struct serial *scb, int debug_p)
{
  scb->debug_p = debug_p;
}
