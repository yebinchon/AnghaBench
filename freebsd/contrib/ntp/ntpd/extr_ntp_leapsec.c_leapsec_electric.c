
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _electric ;
 int * _lptr ;
 int * _ltab ;
 int reset_times (int *) ;

int
leapsec_electric(
 int on)
{
 int res = _electric;
 if (on < 0)
  return res;

 _electric = (on != 0);
 if (_electric == res)
  return res;

 if (_lptr == &_ltab[0] || _lptr == &_ltab[1])
  reset_times(_lptr);

 return res;
}
