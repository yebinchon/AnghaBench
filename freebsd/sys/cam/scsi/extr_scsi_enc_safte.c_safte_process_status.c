
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
typedef int uint8_t ;
typedef int uint16_t ;
struct scfg {int enc_status; int Nfans; int flag1; int Ntherm; int Ntstats; int Npwr; int Nslots; int slotoff; int slot_status; int adm_status; scalar_t__ Nspkrs; scalar_t__ DoorLock; } ;
struct enc_fsm_state {int dummy; } ;
struct TYPE_8__ {int enc_status; TYPE_1__* elm_map; } ;
struct TYPE_7__ {TYPE_3__ enc_cache; struct scfg* enc_private; } ;
typedef TYPE_2__ enc_softc_t ;
typedef TYPE_3__ enc_cache_t ;
struct TYPE_6__ {int* encstat; int svalid; scalar_t__ elm_type; } ;


 scalar_t__ ELMTYP_DEVICE ;
 int ENC_VLOG (TYPE_2__*,char*,int,...) ;
 int ENXIO ;
 int SAFT_BAIL (int,int) ;
 int SAFT_FLG1_ENCFANFAIL ;
 int SESCTL_DISABLE ;
 int SES_ENCSTAT_CRITICAL ;
 int SES_ENCSTAT_INFO ;
 int SES_ENCSTAT_NONCRITICAL ;
 void* SES_OBJSTAT_CRIT ;
 int SES_OBJSTAT_NONCRIT ;
 int SES_OBJSTAT_NOTAVAIL ;
 void* SES_OBJSTAT_NOTINSTALLED ;
 void* SES_OBJSTAT_OK ;
 void* SES_OBJSTAT_UNKNOWN ;
 void* SES_OBJSTAT_UNSUPPORTED ;

__attribute__((used)) static int
safte_process_status(enc_softc_t *enc, struct enc_fsm_state *state,
    union ccb *ccb, uint8_t **bufp, int error, int xfer_len)
{
 struct scfg *cfg;
 uint8_t *buf = *bufp;
 int oid, r, i, nitems;
 uint16_t tempflags;
 enc_cache_t *cache = &enc->enc_cache;

 cfg = enc->enc_private;
 if (cfg == ((void*)0))
  return (ENXIO);
 if (error != 0)
  return (error);

 oid = r = 0;
 cfg->enc_status = 0;

 for (nitems = i = 0; i < cfg->Nfans; i++) {
  SAFT_BAIL(r, xfer_len);






  cache->elm_map[oid].encstat[1] = 0;
  cache->elm_map[oid].encstat[2] = 0;
  if (cfg->flag1 & SAFT_FLG1_ENCFANFAIL)
   cache->elm_map[oid].encstat[3] |= 0x40;
  else
   cache->elm_map[oid].encstat[3] &= ~0x40;
  switch ((int)buf[r]) {
  case 0:
   nitems++;
   cache->elm_map[oid].encstat[0] = SES_OBJSTAT_OK;
   if ((cache->elm_map[oid].encstat[3] & 0x37) == 0)
    cache->elm_map[oid].encstat[3] |= 0x27;
   break;

  case 1:
   cache->elm_map[oid].encstat[0] =
       SES_OBJSTAT_CRIT;



   cache->elm_map[oid].encstat[3] |= 0x10;
   cache->elm_map[oid].encstat[3] &= ~0x07;





   if (cfg->Nfans == 1 || (cfg->Ntherm + cfg->Ntstats) == 0)
    cfg->enc_status |= SES_ENCSTAT_CRITICAL;
   else
    cfg->enc_status |= SES_ENCSTAT_NONCRITICAL;
   break;
  case 2:
   cache->elm_map[oid].encstat[0] =
       SES_OBJSTAT_NOTINSTALLED;
   cache->elm_map[oid].encstat[3] |= 0x10;
   cache->elm_map[oid].encstat[3] &= ~0x07;





   if (cfg->Nfans == 1)
    cfg->enc_status |= SES_ENCSTAT_CRITICAL;
   else
    cfg->enc_status |= SES_ENCSTAT_NONCRITICAL;
   break;
  case 0x80:
   cache->elm_map[oid].encstat[0] = SES_OBJSTAT_UNKNOWN;
   cache->elm_map[oid].encstat[3] = 0;
   cfg->enc_status |= SES_ENCSTAT_INFO;
   break;
  default:
   cache->elm_map[oid].encstat[0] = SES_OBJSTAT_UNSUPPORTED;
   ENC_VLOG(enc, "Unknown fan%d status 0x%x\n", i,
       buf[r] & 0xff);
   break;
  }
  cache->elm_map[oid++].svalid = 1;
  r++;
 }





 if (cfg->Nfans && nitems == 0)
  cfg->enc_status |= SES_ENCSTAT_CRITICAL;

 for (i = 0; i < cfg->Npwr; i++) {
  SAFT_BAIL(r, xfer_len);
  cache->elm_map[oid].encstat[0] = SES_OBJSTAT_UNKNOWN;
  cache->elm_map[oid].encstat[1] = 0;
  cache->elm_map[oid].encstat[2] = 0;
  cache->elm_map[oid].encstat[3] = 0x20;
  switch (buf[r]) {
  case 0x00:
   cache->elm_map[oid].encstat[0] = SES_OBJSTAT_OK;
   break;
  case 0x01:
   cache->elm_map[oid].encstat[0] = SES_OBJSTAT_OK;
   cache->elm_map[oid].encstat[3] = 0x10;
   cfg->enc_status |= SES_ENCSTAT_INFO;
   break;
  case 0x10:
   cache->elm_map[oid].encstat[0] = SES_OBJSTAT_CRIT;
   cache->elm_map[oid].encstat[3] = 0x61;
   cfg->enc_status |= SES_ENCSTAT_NONCRITICAL;
   break;

  case 0x11:
   cache->elm_map[oid].encstat[0] = SES_OBJSTAT_NONCRIT;
   cache->elm_map[oid].encstat[3] = 0x51;
   cfg->enc_status |= SES_ENCSTAT_NONCRITICAL;
   break;
  case 0x20:
   cache->elm_map[oid].encstat[0] =
       SES_OBJSTAT_NOTINSTALLED;
   cache->elm_map[oid].encstat[3] = 0;
   cfg->enc_status |= SES_ENCSTAT_INFO;
   break;
  case 0x21:






  case 0x80:
   cache->elm_map[oid].encstat[0] = SES_OBJSTAT_UNKNOWN;
   cache->elm_map[oid].encstat[3] = 0;
   cfg->enc_status |= SES_ENCSTAT_INFO;
   break;
  default:
   ENC_VLOG(enc, "unknown power supply %d status (0x%x)\n",
       i, buf[r] & 0xff);
   break;
  }
  enc->enc_cache.elm_map[oid++].svalid = 1;
  r++;
 }




 for (i = 0; i < cfg->Nslots; i++) {
  SAFT_BAIL(r, xfer_len);
  if (cache->elm_map[cfg->slotoff + i].elm_type == ELMTYP_DEVICE)
   cache->elm_map[cfg->slotoff + i].encstat[1] = buf[r];
  r++;
 }





 SAFT_BAIL(r, xfer_len);
 if (cfg->DoorLock) {





  cache->elm_map[oid].encstat[1] = 0;
  cache->elm_map[oid].encstat[2] = 0;
  switch (buf[r]) {
  case 0:
   cache->elm_map[oid].encstat[0] = SES_OBJSTAT_OK;
   cache->elm_map[oid].encstat[3] = 0;
   break;
  case 1:
   cache->elm_map[oid].encstat[0] = SES_OBJSTAT_OK;
   cache->elm_map[oid].encstat[3] = 1;
   break;
  case 0x80:
   cache->elm_map[oid].encstat[0] = SES_OBJSTAT_UNKNOWN;
   cache->elm_map[oid].encstat[3] = 0;
   cfg->enc_status |= SES_ENCSTAT_INFO;
   break;
  default:
   cache->elm_map[oid].encstat[0] =
       SES_OBJSTAT_UNSUPPORTED;
   ENC_VLOG(enc, "unknown lock status 0x%x\n",
       buf[r] & 0xff);
   break;
  }
  cache->elm_map[oid++].svalid = 1;
 }
 r++;





 SAFT_BAIL(r, xfer_len);
 if (cfg->Nspkrs) {
  cache->elm_map[oid].encstat[0] = SES_OBJSTAT_OK;
  cache->elm_map[oid].encstat[1] = 0;
  cache->elm_map[oid].encstat[2] = 0;
  if (buf[r] == 0) {
   cache->elm_map[oid].encstat[0] |= SESCTL_DISABLE;
   cache->elm_map[oid].encstat[3] |= 0x40;
  }
  cache->elm_map[oid++].svalid = 1;
 }
 r++;
 SAFT_BAIL(r + cfg->Ntherm, xfer_len);
 tempflags = buf[r + cfg->Ntherm];
 SAFT_BAIL(r + cfg->Ntherm + 1, xfer_len);
 tempflags |= (tempflags << 8) | buf[r + cfg->Ntherm + 1];

 for (i = 0; i < cfg->Ntherm; i++) {
  SAFT_BAIL(r, xfer_len);
  if (tempflags & (1 << i)) {
   cache->elm_map[oid].encstat[0] = SES_OBJSTAT_CRIT;
   cfg->enc_status |= SES_ENCSTAT_CRITICAL;
  } else
   cache->elm_map[oid].encstat[0] = SES_OBJSTAT_OK;
  cache->elm_map[oid].encstat[1] = 0;
  cache->elm_map[oid].encstat[2] = buf[r];
  cache->elm_map[oid].encstat[3] = 0;
  cache->elm_map[oid++].svalid = 1;
  r++;
 }

 for (i = 0; i <= cfg->Ntstats; i++) {
  cache->elm_map[oid].encstat[1] = 0;
  if (tempflags & (1 <<
      ((i == cfg->Ntstats) ? 15 : (cfg->Ntherm + i)))) {
   cache->elm_map[oid].encstat[0] = SES_OBJSTAT_CRIT;
   cache->elm_map[4].encstat[2] = 0xff;



   cache->elm_map[oid].encstat[3] = 8;
   cfg->enc_status |= SES_ENCSTAT_CRITICAL;
  } else {






   if ((cfg->Ntherm + cfg->Ntstats) == 0)
    cache->elm_map[oid].encstat[0] =
        SES_OBJSTAT_NOTAVAIL;
   else
    cache->elm_map[oid].encstat[0] =
        SES_OBJSTAT_OK;
   cache->elm_map[oid].encstat[2] = 0;
   cache->elm_map[oid].encstat[3] = 0;
  }
  cache->elm_map[oid++].svalid = 1;
 }
 r += 2;

 cache->enc_status =
     cfg->enc_status | cfg->slot_status | cfg->adm_status;
 return (0);
}
