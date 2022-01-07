
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ skip_next_id ;
 int stepped ;

__attribute__((used)) static void
flag_single_step (int s)
{
  stepped = 1;
  skip_next_id = 0;
}
