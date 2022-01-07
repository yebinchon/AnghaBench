
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ssh {int dummy; } ;


 int fatal (char*,int) ;

int
input_userauth_error(int type, u_int32_t seq, struct ssh *ssh)
{
 fatal("input_userauth_error: bad message during authentication: "
     "type %d", type);
 return 0;
}
