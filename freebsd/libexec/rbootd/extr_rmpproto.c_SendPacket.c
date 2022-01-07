
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct hp_hdr {int dummy; } ;
struct TYPE_9__ {void* sxsap; void* dxsap; } ;
struct TYPE_8__ {void* len; int * saddr; int * daddr; } ;
struct TYPE_10__ {TYPE_2__ hp_llc; TYPE_1__ hp_hdr; } ;
struct TYPE_11__ {int tstamp; TYPE_3__ rmp; scalar_t__ rmplen; } ;
typedef TYPE_4__ RMPCONN ;


 int BpfWrite (TYPE_4__*) ;
 int DIR_SENT ;
 int * DbgFp ;
 int DispPkt (TYPE_4__*,int ) ;
 scalar_t__ HPEXT_DXSAP ;
 scalar_t__ HPEXT_SXSAP ;
 int RMP_ADDRLEN ;
 int gettimeofday (int *,int *) ;
 void* htons (scalar_t__) ;
 int memmove (char*,char*,int ) ;

int
SendPacket(RMPCONN *rconn)
{




 memmove((char *)&rconn->rmp.hp_hdr.daddr[0],
         (char *)&rconn->rmp.hp_hdr.saddr[0], RMP_ADDRLEN);
 rconn->rmp.hp_hdr.len = htons(rconn->rmplen - sizeof(struct hp_hdr));




 rconn->rmp.hp_llc.dxsap = htons(HPEXT_SXSAP);
 rconn->rmp.hp_llc.sxsap = htons(HPEXT_DXSAP);




 (void)gettimeofday(&rconn->tstamp, ((void*)0));

 if (DbgFp != ((void*)0))
  DispPkt(rconn,DIR_SENT);




 return(BpfWrite(rconn));
}
