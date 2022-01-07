
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ssh {int dummy; } ;


 int debug (char*,int,int ) ;
 int packet_set_alive_timeouts (int ) ;

__attribute__((used)) static int
server_input_keep_alive(int type, u_int32_t seq, struct ssh *ssh)
{
 debug("Got %d/%u for keepalive", type, seq);





 packet_set_alive_timeouts(0);
 return 0;
}
