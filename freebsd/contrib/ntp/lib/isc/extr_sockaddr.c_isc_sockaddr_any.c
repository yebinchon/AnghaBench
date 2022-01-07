
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int s_addr; } ;
struct TYPE_9__ {int sin_len; scalar_t__ sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct TYPE_10__ {TYPE_2__ sin; } ;
struct TYPE_11__ {int length; TYPE_3__ type; } ;
typedef TYPE_4__ isc_sockaddr_t ;


 int AF_INET ;
 int INADDR_ANY ;
 int ISC_LINK_INIT (TYPE_4__*,int ) ;
 int link ;
 int memset (TYPE_4__*,int ,int) ;

void
isc_sockaddr_any(isc_sockaddr_t *sockaddr)
{
 memset(sockaddr, 0, sizeof(*sockaddr));
 sockaddr->type.sin.sin_family = AF_INET;



 sockaddr->type.sin.sin_addr.s_addr = INADDR_ANY;
 sockaddr->type.sin.sin_port = 0;
 sockaddr->length = sizeof(sockaddr->type.sin);
 ISC_LINK_INIT(sockaddr, link);
}
