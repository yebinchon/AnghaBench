
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proto_conn {int dummy; } ;


 int PROTO_SIDE_SERVER_LISTEN ;
 int proto_common_setup (int *,char const*,struct proto_conn**,int ) ;

int
proto_server(const char *addr, struct proto_conn **connp)
{

 return (proto_common_setup(((void*)0), addr, connp, PROTO_SIDE_SERVER_LISTEN));
}
