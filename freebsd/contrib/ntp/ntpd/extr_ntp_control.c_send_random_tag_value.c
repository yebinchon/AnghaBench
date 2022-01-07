
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int ctl_putuint (char*,int) ;
 int rand () ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
send_random_tag_value(
 int indx
 )
{
 int noise;
 char buf[32];

 noise = rand() ^ (rand() << 16);
 buf[0] = 'a' + noise % 26;
 noise >>= 5;
 buf[1] = 'a' + noise % 26;
 noise >>= 5;
 buf[2] = 'a' + noise % 26;
 noise >>= 5;
 buf[3] = '.';
 snprintf(&buf[4], sizeof(buf) - 4, "%d", indx);
 ctl_putuint(buf, noise);
}
