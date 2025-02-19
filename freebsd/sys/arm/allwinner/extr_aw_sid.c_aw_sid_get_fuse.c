
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct aw_sid_softc {int prctl_mtx; TYPE_2__* sid_conf; } ;
typedef enum aw_sid_fuse_id { ____Placeholder_aw_sid_fuse_id } aw_sid_fuse_id ;
struct TYPE_4__ {int nfuses; TYPE_1__* efuses; } ;
struct TYPE_3__ {int id; int size; int public; scalar_t__ offset; scalar_t__ base; } ;


 int ENOENT ;
 int ENOMEM ;
 int ENXIO ;
 int RD4 (struct aw_sid_softc*,scalar_t__) ;
 scalar_t__ SID_PRCTL ;
 int SID_PRCTL_LOCK ;
 int SID_PRCTL_OFFSET (scalar_t__) ;
 int SID_PRCTL_READ ;
 scalar_t__ SID_RDKEY ;
 int WR4 (struct aw_sid_softc*,scalar_t__,int) ;
 struct aw_sid_softc* aw_sid_sc ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
aw_sid_get_fuse(enum aw_sid_fuse_id id, uint8_t *out, uint32_t *size)
{
 struct aw_sid_softc *sc;
 uint32_t val;
 int i, j;

 sc = aw_sid_sc;
 if (sc == ((void*)0))
  return (ENXIO);

 for (i = 0; i < sc->sid_conf->nfuses; i++)
  if (id == sc->sid_conf->efuses[i].id)
   break;

 if (i == sc->sid_conf->nfuses)
  return (ENOENT);

 if (*size != sc->sid_conf->efuses[i].size) {
  *size = sc->sid_conf->efuses[i].size;
  return (ENOMEM);
 }

 if (out == ((void*)0))
  return (ENOMEM);

 if (sc->sid_conf->efuses[i].public == 0)
  mtx_lock(&sc->prctl_mtx);
 for (j = 0; j < sc->sid_conf->efuses[i].size; j += 4) {
  if (sc->sid_conf->efuses[i].public == 0) {
   val = SID_PRCTL_OFFSET(sc->sid_conf->efuses[i].offset + j) |
    SID_PRCTL_LOCK |
    SID_PRCTL_READ;
   WR4(sc, SID_PRCTL, val);

   while (RD4(sc, SID_PRCTL) & SID_PRCTL_READ)
    continue;
   val = RD4(sc, SID_RDKEY);
  } else
   val = RD4(sc, sc->sid_conf->efuses[i].base +
       sc->sid_conf->efuses[i].offset + j);
  out[j] = val & 0xFF;
  if (j + 1 < *size)
   out[j + 1] = (val & 0xFF00) >> 8;
  if (j + 2 < *size)
   out[j + 2] = (val & 0xFF0000) >> 16;
  if (j + 3 < *size)
   out[j + 3] = (val & 0xFF000000) >> 24;
 }
 if (sc->sid_conf->efuses[i].public == 0)
  mtx_unlock(&sc->prctl_mtx);

 return (0);
}
