
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_softc {int flags; int aac_dev; } ;
struct aac_mntinforesp {int dummy; } ;
struct aac_mntinfo {int MntCount; int MntType; int Command; } ;
struct aac_fib {int * data; } ;


 int AAC_FLAGS_LBA_64BIT ;
 int ContainerCommand ;
 int FT_FILESYS ;
 int VM_NameServe ;
 int VM_NameServe64 ;
 scalar_t__ aac_sync_fib (struct aac_softc*,int ,int ,struct aac_fib*,int) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static struct aac_mntinforesp *
aac_get_container_info(struct aac_softc *sc, struct aac_fib *fib, int cid)
{
 struct aac_mntinfo *mi;

 mi = (struct aac_mntinfo *)&fib->data[0];

 mi->Command = (sc->flags & AAC_FLAGS_LBA_64BIT) ?
     VM_NameServe64 : VM_NameServe;
 mi->MntType = FT_FILESYS;
 mi->MntCount = cid;

 if (aac_sync_fib(sc, ContainerCommand, 0, fib,
    sizeof(struct aac_mntinfo))) {
  device_printf(sc->aac_dev, "Error probing container %d\n", cid);
  return (((void*)0));
 }

 return ((struct aac_mntinforesp *)&fib->data[0]);
}
