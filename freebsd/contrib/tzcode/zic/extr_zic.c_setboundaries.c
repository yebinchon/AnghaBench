
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIME_T_BITS_IN_FILE ;
 int max_time ;
 int min_time ;

__attribute__((used)) static void
setboundaries (void)
{
 register int i;

 min_time = -1;
 for (i = 0; i < TIME_T_BITS_IN_FILE - 1; ++i)
  min_time *= 2;
 max_time = -(min_time + 1);
}
