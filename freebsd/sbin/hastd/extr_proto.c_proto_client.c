
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proto_conn {int dummy; } ;


 int PROTO_SIDE_CLIENT ;
 int proto_common_setup (char const*,char const*,struct proto_conn**,int ) ;

int
proto_client(const char *srcaddr, const char *dstaddr,
    struct proto_conn **connp)
{

 return (proto_common_setup(srcaddr, dstaddr, connp, PROTO_SIDE_CLIENT));
}
