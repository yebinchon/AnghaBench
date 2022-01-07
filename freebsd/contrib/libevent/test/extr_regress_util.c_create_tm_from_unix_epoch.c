
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct tm {int dummy; } ;


 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,char*,int) ;
 struct tm* gmtime (scalar_t__ const*) ;
 int gmtime_r (scalar_t__ const*,struct tm*) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static void
create_tm_from_unix_epoch(struct tm *cur_p, const time_t t)
{
 gmtime_r(&t, cur_p);

}
