
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ssh {int dummy; } ;


 int logit (char*,int,int ) ;

int
dispatch_protocol_ignore(int type, u_int32_t seq, struct ssh *ssh)
{
 logit("dispatch_protocol_ignore: type %d seq %u", type, seq);
 return 0;
}
