
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDOUT_FILENO ;
 scalar_t__ getpgrp () ;
 scalar_t__ tcgetpgrp (int ) ;

__attribute__((used)) static int
can_output(void)
{
 return (getpgrp() == tcgetpgrp(STDOUT_FILENO));
}
