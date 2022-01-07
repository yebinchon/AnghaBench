
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int dummy; } ;


 scalar_t__ _in_raw_mode ;
 struct termios _saved_tio ;

struct termios *
get_saved_tio(void)
{
 return _in_raw_mode ? &_saved_tio : ((void*)0);
}
