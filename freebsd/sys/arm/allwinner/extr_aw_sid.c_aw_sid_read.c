
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct aw_sid_softc {TYPE_2__* sid_conf; } ;
typedef enum aw_sid_fuse_id { ____Placeholder_aw_sid_fuse_id } aw_sid_fuse_id ;
typedef int device_t ;
struct TYPE_4__ {int nfuses; TYPE_1__* efuses; } ;
struct TYPE_3__ {scalar_t__ base; scalar_t__ offset; int id; } ;


 int ENOENT ;
 int aw_sid_get_fuse (int,int *,scalar_t__*) ;
 struct aw_sid_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aw_sid_read(device_t dev, uint32_t offset, uint32_t size, uint8_t *buffer)
{
 struct aw_sid_softc *sc;
 enum aw_sid_fuse_id fuse_id = 0;
 int i;

 sc = device_get_softc(dev);

 for (i = 0; i < sc->sid_conf->nfuses; i++)
  if (offset == (sc->sid_conf->efuses[i].base +
      sc->sid_conf->efuses[i].offset)) {
   fuse_id = sc->sid_conf->efuses[i].id;
   break;
  }

 if (fuse_id == 0)
  return (ENOENT);

 return (aw_sid_get_fuse(fuse_id, buffer, &size));
}
