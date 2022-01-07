
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {int dummy; } ;


 int do_unix_readchar ;
 int generic_readchar (struct serial*,int,int ) ;

int
ser_unix_readchar (struct serial *scb, int timeout)
{
  return generic_readchar (scb, timeout, do_unix_readchar);
}
