
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long isc_uint32_t ;
typedef int isc_result_t ;


 scalar_t__ ERANGE ;
 int ISC_R_BADNUMBER ;
 int ISC_R_RANGE ;
 int ISC_R_SUCCESS ;
 unsigned long ULONG_MAX ;
 scalar_t__ errno ;
 int isalnum (unsigned char) ;
 unsigned long strtoul (char const*,char**,int) ;

isc_result_t
isc_parse_uint32(isc_uint32_t *uip, const char *string, int base) {
 unsigned long n;
 char *e;
 if (! isalnum((unsigned char)(string[0])))
  return (ISC_R_BADNUMBER);
 errno = 0;
 n = strtoul(string, &e, base);
 if (*e != '\0')
  return (ISC_R_BADNUMBER);
 if (n == ULONG_MAX && errno == ERANGE)
  return (ISC_R_RANGE);
 *uip = n;
 return (ISC_R_SUCCESS);
}
