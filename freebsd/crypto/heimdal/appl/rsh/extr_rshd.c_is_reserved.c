
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;


 scalar_t__ IPPORT_RESERVED ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static int
is_reserved(u_short port)
{
    return ntohs(port) < IPPORT_RESERVED;
}
