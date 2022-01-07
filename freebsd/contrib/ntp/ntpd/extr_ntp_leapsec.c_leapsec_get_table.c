
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int leap_table_t ;


 int * _lptr ;
 int * _ltab ;
 int memcpy (int *,int *,int) ;
 int reset_times (int *) ;

leap_table_t *
leapsec_get_table(
 int alternate)
{
 leap_table_t *p1, *p2;

 p1 = _lptr;
 if (p1 == &_ltab[0]) {
  p2 = &_ltab[1];
 } else if (p1 == &_ltab[1]) {
  p2 = &_ltab[0];
 } else {
  p1 = &_ltab[0];
  p2 = &_ltab[1];
  reset_times(p1);
  reset_times(p2);
  _lptr = p1;
 }
 if (alternate) {
  memcpy(p2, p1, sizeof(leap_table_t));
  p1 = p2;
 }

 return p1;
}
