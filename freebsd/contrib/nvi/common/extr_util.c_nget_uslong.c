
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef enum nresult { ____Placeholder_nresult } nresult ;
typedef int CHAR_T ;


 scalar_t__ ERANGE ;
 int NUM_ERR ;
 int NUM_OK ;
 int NUM_OVER ;
 scalar_t__ STRTOUL (int const*,int **,int) ;
 scalar_t__ ULONG_MAX ;
 scalar_t__ errno ;

enum nresult
nget_uslong(
 u_long *valp,
 const CHAR_T *p,
 CHAR_T **endp,
 int base)
{
 errno = 0;
 *valp = STRTOUL(p, endp, base);
 if (errno == 0)
  return (NUM_OK);
 if (errno == ERANGE && *valp == ULONG_MAX)
  return (NUM_OVER);
 return (NUM_ERR);
}
