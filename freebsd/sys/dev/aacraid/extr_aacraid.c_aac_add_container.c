
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct aac_softc {int aac_container_tqh; } ;
struct aac_mntobj {int dummy; } ;
struct aac_mntinforesp {scalar_t__ Status; TYPE_1__* MntTable; } ;
struct aac_container {int co_found; int co_uid; int co_mntobj; } ;
struct TYPE_2__ {scalar_t__ VolType; } ;


 scalar_t__ CT_NONE ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int M_AACRAIDBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 scalar_t__ ST_OK ;
 int TAILQ_INSERT_TAIL (int *,struct aac_container*,int ) ;
 int bcopy (TYPE_1__*,int *,int) ;
 int co_link ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 scalar_t__ malloc (int,int ,int) ;
 int panic (char*) ;

__attribute__((used)) static void
aac_add_container(struct aac_softc *sc, struct aac_mntinforesp *mir, int f,
    u_int32_t uid)
{
 struct aac_container *co;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");





 if ((mir->Status == ST_OK) && (mir->MntTable[0].VolType != CT_NONE)) {
  co = (struct aac_container *)malloc(sizeof *co, M_AACRAIDBUF,
         M_NOWAIT | M_ZERO);
  if (co == ((void*)0)) {
   panic("Out of memory?!");
  }

  co->co_found = f;
  bcopy(&mir->MntTable[0], &co->co_mntobj,
        sizeof(struct aac_mntobj));
  co->co_uid = uid;
  TAILQ_INSERT_TAIL(&sc->aac_container_tqh, co, co_link);
 }
}
