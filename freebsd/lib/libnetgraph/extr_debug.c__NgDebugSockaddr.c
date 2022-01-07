
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_ng {int sg_data; int sg_len; int sg_family; } ;


 int NGLOGX (char*,int ,int ,int ) ;

void
_NgDebugSockaddr(const struct sockaddr_ng *sg)
{
 NGLOGX("SOCKADDR: { fam=%d len=%d addr=\"%s\" }",
        sg->sg_family, sg->sg_len, sg->sg_data);
}
