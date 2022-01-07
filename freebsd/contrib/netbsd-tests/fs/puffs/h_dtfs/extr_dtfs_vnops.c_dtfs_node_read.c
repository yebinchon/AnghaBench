
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct puffs_usermount {int dummy; } ;
struct TYPE_2__ {scalar_t__ va_type; } ;
struct puffs_node {TYPE_1__ pn_va; } ;
struct puffs_cred {int dummy; } ;
struct dtfs_file {int ** df_blocks; scalar_t__ df_datalen; } ;
typedef size_t quad_t ;
typedef scalar_t__ off_t ;


 scalar_t__ BLOCKLEFT (scalar_t__,int ) ;
 size_t BLOCKNUM (scalar_t__,int ) ;
 int BLOCKOFF (scalar_t__,int ) ;
 int DTFS_BLOCKSHIFT ;
 int DTFS_BLOCKSIZE ;
 struct dtfs_file* DTFS_CTOF (void*) ;
 int EINVAL ;
 int EISDIR ;
 size_t MIN (size_t,scalar_t__) ;
 scalar_t__ VREG ;
 int dtfs_updatetimes (struct puffs_node*,int,int ,int ) ;
 int memcpy (int *,int *,size_t) ;

int
dtfs_node_read(struct puffs_usermount *pu, void *opc, uint8_t *buf,
 off_t offset, size_t *resid, const struct puffs_cred *pcr, int ioflag)
{
 struct puffs_node *pn = opc;
 struct dtfs_file *df = DTFS_CTOF(opc);
 quad_t xfer, origxfer;
 uint8_t *src, *dest;
 size_t copylen;

 if (pn->pn_va.va_type != VREG)
  return EISDIR;

 xfer = MIN(*resid, df->df_datalen - offset);
 if (xfer < 0)
  return EINVAL;

 dest = buf;
 origxfer = xfer;
 while (xfer > 0) {
  copylen = MIN(xfer, BLOCKLEFT(offset, DTFS_BLOCKSIZE));
  src = df->df_blocks[BLOCKNUM(offset, DTFS_BLOCKSHIFT)]
      + BLOCKOFF(offset, DTFS_BLOCKSIZE);
  memcpy(dest, src, copylen);
  offset += copylen;
  dest += copylen;
  xfer -= copylen;
 }
 *resid -= origxfer;

 dtfs_updatetimes(pn, 1, 0, 0);

 return 0;
}
