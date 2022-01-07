
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshauthopt {int permit_port_forwarding_flag; int permit_agent_forwarding_flag; int permit_x11_forwarding_flag; int permit_pty_flag; int permit_user_rc; } ;


 int ASSERT_PTR_NE (struct sshauthopt*,int *) ;
 struct sshauthopt* sshauthopt_new () ;

__attribute__((used)) static struct sshauthopt *
default_authkey_opts(void)
{
 struct sshauthopt *ret = sshauthopt_new();

 ASSERT_PTR_NE(ret, ((void*)0));
 ret->permit_port_forwarding_flag = 1;
 ret->permit_agent_forwarding_flag = 1;
 ret->permit_x11_forwarding_flag = 1;
 ret->permit_pty_flag = 1;
 ret->permit_user_rc = 1;
 return ret;
}
