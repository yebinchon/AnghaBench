
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aac_softc {int aac_container_lock; int aac_container_tqh; int aac_dev; } ;
struct aac_mntobj {int dummy; } ;
struct aac_mntinforesp {scalar_t__ Status; TYPE_1__* MntTable; } ;
struct aac_container {int co_found; int co_mntobj; int * co_disk; } ;
typedef int * device_t ;
struct TYPE_2__ {scalar_t__ VolType; int Capacity; int FileSystemName; int ObjectId; } ;


 scalar_t__ CT_NONE ;
 char* HBA_FLAGS_DBG_INIT_B ;
 int M_AACBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 scalar_t__ ST_OK ;
 int TAILQ_INSERT_TAIL (int *,struct aac_container*,int ) ;
 int aac_container_types ;
 int aac_describe_code (int ,scalar_t__) ;
 int bcopy (TYPE_1__*,int *,int) ;
 int co_link ;
 int * device_add_child (int ,char*,int) ;
 int device_printf (int ,char*) ;
 int device_set_desc (int *,int ) ;
 int device_set_ivars (int *,struct aac_container*) ;
 int fwprintf (struct aac_softc*,char*,char*,int ,int ,int ,scalar_t__) ;
 scalar_t__ malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*) ;

__attribute__((used)) static void
aac_add_container(struct aac_softc *sc, struct aac_mntinforesp *mir, int f)
{
 struct aac_container *co;
 device_t child;





 if ((mir->Status == ST_OK) && (mir->MntTable[0].VolType != CT_NONE)) {
  co = (struct aac_container *)malloc(sizeof *co, M_AACBUF,
         M_NOWAIT | M_ZERO);
  if (co == ((void*)0))
   panic("Out of memory?!");
  fwprintf(sc, HBA_FLAGS_DBG_INIT_B, "id %x  name '%.16s'  size %u  type %d",
        mir->MntTable[0].ObjectId,
        mir->MntTable[0].FileSystemName,
        mir->MntTable[0].Capacity, mir->MntTable[0].VolType);

  if ((child = device_add_child(sc->aac_dev, "aacd", -1)) == ((void*)0))
   device_printf(sc->aac_dev, "device_add_child failed\n");
  else
   device_set_ivars(child, co);
  device_set_desc(child, aac_describe_code(aac_container_types,
    mir->MntTable[0].VolType));
  co->co_disk = child;
  co->co_found = f;
  bcopy(&mir->MntTable[0], &co->co_mntobj,
        sizeof(struct aac_mntobj));
  mtx_lock(&sc->aac_container_lock);
  TAILQ_INSERT_TAIL(&sc->aac_container_tqh, co, co_link);
  mtx_unlock(&sc->aac_container_lock);
 }
}
