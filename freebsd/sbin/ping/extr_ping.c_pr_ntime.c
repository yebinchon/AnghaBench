
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int n_time ;
typedef int buf ;


 int ntohl (int ) ;
 int snprintf (char*,int,char*,int,int,int) ;

__attribute__((used)) static char *
pr_ntime(n_time timestamp)
{
 static char buf[11];
 int hour, min, sec;

 sec = ntohl(timestamp) / 1000;
 hour = sec / 60 / 60;
 min = (sec % (60 * 60)) / 60;
 sec = (sec % (60 * 60)) % 60;

 (void)snprintf(buf, sizeof(buf), "%02d:%02d:%02d", hour, min, sec);

 return (buf);
}
