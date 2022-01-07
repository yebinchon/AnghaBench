
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int leap_table_t ;


 int * _lptr ;
 int * _ltab ;

int
leapsec_set_table(
 leap_table_t * pt)
{
 if (pt == &_ltab[0] || pt == &_ltab[1])
  _lptr = pt;
 return _lptr == pt;
}
