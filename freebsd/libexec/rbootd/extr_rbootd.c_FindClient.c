
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int * addr; struct TYPE_11__* next; } ;
struct TYPE_8__ {int * saddr; } ;
struct TYPE_9__ {TYPE_1__ hp_hdr; } ;
struct TYPE_10__ {TYPE_2__ rmp; } ;
typedef TYPE_3__ RMPCONN ;
typedef TYPE_4__ CLIENT ;


 TYPE_4__* Clients ;
 int RMP_ADDRLEN ;
 scalar_t__ bcmp (char*,char*,int ) ;

CLIENT *
FindClient(RMPCONN *rconn)
{
 CLIENT *ctmp;

 for (ctmp = Clients; ctmp != ((void*)0); ctmp = ctmp->next)
  if (bcmp((char *)&rconn->rmp.hp_hdr.saddr[0],
           (char *)&ctmp->addr[0], RMP_ADDRLEN) == 0)
   break;

 return(ctmp);
}
