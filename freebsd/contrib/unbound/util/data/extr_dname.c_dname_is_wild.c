
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



int
dname_is_wild(uint8_t* dname)
{
 return (dname[0] == 1 && dname[1] == '*');
}
