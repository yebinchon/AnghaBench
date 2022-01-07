
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RES ;


 int ssl_printf (int *,char*) ;

__attribute__((used)) static void send_ok(RES* ssl)
{
 (void)ssl_printf(ssl, "ok\n");
}
