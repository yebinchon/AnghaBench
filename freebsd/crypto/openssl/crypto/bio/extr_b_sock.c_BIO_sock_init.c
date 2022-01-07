
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wsa_state ;
struct WSAData {int dummy; } ;


 int BIO_F_BIO_SOCK_INIT ;
 int BIO_R_WSASTARTUP ;
 int BIOerr (int ,int ) ;
 int SYS_F_WSASTARTUP ;
 int SYSerr (int ,int) ;
 int WSAGetLastError () ;
 scalar_t__ WSAStartup (int,struct WSAData*) ;
 int memset (struct WSAData*,int ,int) ;
 scalar_t__ sock_init () ;
 int wsa_init_done ;

int BIO_sock_init(void)
{
    return 1;
}
