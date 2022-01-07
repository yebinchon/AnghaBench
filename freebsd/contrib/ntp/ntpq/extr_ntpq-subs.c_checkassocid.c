
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef scalar_t__ u_int32 ;
typedef scalar_t__ associd_t ;


 int fprintf (int ,char*,scalar_t__) ;
 int stderr ;

__attribute__((used)) static associd_t
checkassocid(
 u_int32 value
 )
{
 associd_t associd;
 u_long ulvalue;

 associd = (associd_t)value;
 if (0 == associd || value != associd) {
  ulvalue = value;
  fprintf(stderr,
   "***Invalid association ID %lu specified\n",
   ulvalue);
  return 0;
 }

 return associd;
}
