
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TD_BADPH ;
 int TD_ERR ;
 int TD_NOFPREGS ;
 int TD_NOLIBTHREAD ;
 int TD_NOLWP ;
 int TD_OK ;

__attribute__((used)) static int
ps2td(int c)
{
 switch (c) {
 case 128:
  return TD_OK;
 case 131:
  return TD_ERR;
 case 132:
  return TD_BADPH;
 case 133:
  return TD_NOLWP;
 case 134:
  return TD_ERR;
 case 129:
  return TD_NOLIBTHREAD;
 case 130:
  return TD_NOFPREGS;
 default:
  return TD_ERR;
 }
}
