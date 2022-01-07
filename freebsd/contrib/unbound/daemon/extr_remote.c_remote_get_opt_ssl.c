
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RES ;


 int ssl_printf (int *,char*,char*) ;

void remote_get_opt_ssl(char* line, void* arg)
{
 RES* ssl = (RES*)arg;
 (void)ssl_printf(ssl, "%s\n", line);
}
