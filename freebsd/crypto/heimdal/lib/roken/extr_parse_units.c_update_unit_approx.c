
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int update_unit (int,unsigned int) ;

__attribute__((used)) static int
update_unit_approx (int in, unsigned mult)
{
    if (in / mult > 0)
 return 0;
    else
 return update_unit (in, mult);
}
