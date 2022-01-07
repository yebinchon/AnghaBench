
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;


 int IPPORT_RESERVED ;
 scalar_t__ use_privsep ;

__attribute__((used)) static int
bind_permitted(int port, uid_t uid)
{
 if (use_privsep)
  return 1;
 if (port < IPPORT_RESERVED && uid != 0)
  return 0;
 return 1;
}
