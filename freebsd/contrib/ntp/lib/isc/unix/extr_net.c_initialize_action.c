
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_INET ;
 int PF_INET6 ;
 int PF_UNIX ;
 void* ipv4_result ;
 void* ipv6_result ;
 void* try_proto (int ) ;
 void* unix_result ;

__attribute__((used)) static void
initialize_action(void) {
 ipv4_result = try_proto(PF_INET);
}
