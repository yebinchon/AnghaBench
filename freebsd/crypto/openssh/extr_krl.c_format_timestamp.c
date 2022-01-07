
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef int time_t ;
struct tm {int dummy; } ;


 struct tm* localtime (int *) ;
 int strftime (char*,size_t,char*,struct tm*) ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static void
format_timestamp(u_int64_t timestamp, char *ts, size_t nts)
{
 time_t t;
 struct tm *tm;

 t = timestamp;
 tm = localtime(&t);
 if (tm == ((void*)0))
  strlcpy(ts, "<INVALID>", nts);
 else {
  *ts = '\0';
  strftime(ts, nts, "%Y%m%dT%H%M%S", tm);
 }
}
