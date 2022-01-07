
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sockaddr_u ;


 char* estrdup (int ) ;
 int stoa (int *) ;

char *
ss_to_str(
 sockaddr_u *saddr
 )
{
 return estrdup(stoa(saddr));
}
