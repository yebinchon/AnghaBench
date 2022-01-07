
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
typedef int __time64_t ;


 int _localtime64_s (struct tm*,int *) ;
 int localtime (int *) ;
 int localtime_r (int *,struct tm*) ;
 int memcpy (struct tm*,int ,int) ;
 int tzset () ;

__attribute__((used)) static void
get_tmfromtime(struct tm *tm, time_t *t)
{







 memcpy(tm, localtime(t), sizeof(*tm));

}
