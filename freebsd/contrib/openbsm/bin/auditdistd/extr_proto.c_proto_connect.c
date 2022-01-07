
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proto_conn {int dummy; } ;


 int PJDLOG_ASSERT (int) ;
 int PROTO_SIDE_CLIENT ;
 int proto_common_setup (char const*,char const*,int,int ,struct proto_conn**) ;

int
proto_connect(const char *srcaddr, const char *dstaddr, int timeout,
    struct proto_conn **connp)
{

 PJDLOG_ASSERT(srcaddr == ((void*)0) || srcaddr[0] != '\0');
 PJDLOG_ASSERT(dstaddr != ((void*)0));
 PJDLOG_ASSERT(timeout >= -1);

 return (proto_common_setup(srcaddr, dstaddr, timeout,
     PROTO_SIDE_CLIENT, connp));
}
