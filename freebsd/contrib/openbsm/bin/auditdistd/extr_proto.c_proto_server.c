
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proto_conn {int dummy; } ;


 int PJDLOG_ASSERT (int ) ;
 int PROTO_SIDE_SERVER_LISTEN ;
 int proto_common_setup (int *,char const*,int,int ,struct proto_conn**) ;

int
proto_server(const char *addr, struct proto_conn **connp)
{

 PJDLOG_ASSERT(addr != ((void*)0));

 return (proto_common_setup(((void*)0), addr, -1, PROTO_SIDE_SERVER_LISTEN,
     connp));
}
