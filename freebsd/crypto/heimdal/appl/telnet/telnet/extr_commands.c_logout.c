
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TELOPT_LOGOUT ;
 int netflush () ;
 int send_do (int ,int) ;

__attribute__((used)) static int
logout()
{
 send_do(TELOPT_LOGOUT, 1);
 netflush();
 return 1;
}
