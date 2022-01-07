
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rd_err_e ;
const char *
rd_errstr(rd_err_e rderr)
{

 switch (rderr) {
 case 132:
  return "generic error";
 case 128:
  return "no error";
 case 130:
  return "capability not supported";
 case 133:
  return "database error";
 case 131:
  return "NOBASE";
 case 129:
  return "NOMAPS";
 default:
  return "unknown error";
 }
}
