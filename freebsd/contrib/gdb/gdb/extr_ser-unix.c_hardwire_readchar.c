
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {int dummy; } ;


 int do_hardwire_readchar ;
 int generic_readchar (struct serial*,int,int ) ;

__attribute__((used)) static int
hardwire_readchar (struct serial *scb, int timeout)
{
  return generic_readchar (scb, timeout, do_hardwire_readchar);
}
