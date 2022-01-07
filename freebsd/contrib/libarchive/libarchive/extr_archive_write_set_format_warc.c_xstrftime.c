
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
struct archive_string {int dummy; } ;
typedef int strtime ;


 int _gmtime64_s (struct tm*,int *) ;
 int archive_strncat (struct archive_string*,char*,size_t) ;
 struct tm* gmtime (int *) ;
 struct tm* gmtime_r (int *,struct tm*) ;
 size_t strftime (char*,int,char const*,struct tm*) ;

__attribute__((used)) static void
xstrftime(struct archive_string *as, const char *fmt, time_t t)
{

 struct tm *rt;



 char strtime[100];
 size_t len;







 if ((rt = gmtime(&t)) == ((void*)0))
  return;


 len = strftime(strtime, sizeof(strtime)-1, fmt, rt);
 archive_strncat(as, strtime, len);
}
