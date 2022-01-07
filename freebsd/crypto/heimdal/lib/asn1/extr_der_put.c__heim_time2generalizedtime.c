
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_sec; int tm_min; int tm_hour; } ;
struct TYPE_3__ {size_t length; int * data; } ;
typedef TYPE_1__ heim_octet_string ;


 int ASN1_BAD_TIMEFORMAT ;
 int ENOMEM ;
 int * _der_gmtime (int ,struct tm*) ;
 int * malloc (size_t const) ;
 int snprintf (int *,size_t const,char*,int,int,int,int ,int ,int ) ;

int
_heim_time2generalizedtime (time_t t, heim_octet_string *s, int gtimep)
{
     struct tm tm;
     const size_t len = gtimep ? 15 : 13;

     s->data = malloc(len + 1);
     if (s->data == ((void*)0))
  return ENOMEM;
     s->length = len;
     if (_der_gmtime(t, &tm) == ((void*)0))
  return ASN1_BAD_TIMEFORMAT;
     if (gtimep)
  snprintf (s->data, len + 1, "%04d%02d%02d%02d%02d%02dZ",
     tm.tm_year + 1900, tm.tm_mon + 1, tm.tm_mday,
     tm.tm_hour, tm.tm_min, tm.tm_sec);
     else
  snprintf (s->data, len + 1, "%02d%02d%02d%02d%02d%02dZ",
     tm.tm_year % 100, tm.tm_mon + 1, tm.tm_mday,
     tm.tm_hour, tm.tm_min, tm.tm_sec);

     return 0;
}
