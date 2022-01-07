
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {scalar_t__ debug_p; } ;


 scalar_t__ global_serial_debug_p ;

int
serial_debug_p (struct serial *scb)
{
  return scb->debug_p || global_serial_debug_p;
}
