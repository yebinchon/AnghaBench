
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;


 int AF_INET ;
 int inet_ntop (int ,struct in_addr*,char*,int) ;
 int strcpy (char*,char*) ;

char *
inet_ntoa(struct in_addr in) {
 static char ret[18];

 strcpy(ret, "[inet_ntoa error]");
 (void) inet_ntop(AF_INET, &in, ret, sizeof ret);
 return (ret);
}
