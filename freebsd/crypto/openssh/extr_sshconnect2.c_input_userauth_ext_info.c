
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ssh {int dummy; } ;


 int kex_input_ext_info (int,int ,struct ssh*) ;

int
input_userauth_ext_info(int type, u_int32_t seqnr, struct ssh *ssh)
{
 return kex_input_ext_info(type, seqnr, ssh);
}
