
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_2__ {scalar_t__ tv_sec; } ;


 int cftime (char*,char*,int *) ;
 scalar_t__ ctime (int *) ;
 TYPE_1__ epoch ;
 int memcpy (char*,scalar_t__,int) ;

__attribute__((used)) static char *
ts(time_t secs) {
 static char s[20];

 secs += epoch.tv_sec;



 memcpy(s, ctime(&secs)+11, 8);
 s[8] = '\0';

 return s;
}
