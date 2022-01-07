
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct puffs_usermount {int dummy; } ;
struct TYPE_2__ {scalar_t__ va_type; scalar_t__ va_size; } ;
struct puffs_node {TYPE_1__ pn_va; } ;
struct puffs_cred {int dummy; } ;
struct dtfs_file {int ** df_blocks; } ;
typedef scalar_t__ off_t ;


 int BLOCKLEFT (scalar_t__,int ) ;
 int BLOCKNUM (scalar_t__,int ) ;
 int BLOCKOFF (scalar_t__,int ) ;
 int DTFS_BLOCKSHIFT ;
 int DTFS_BLOCKSIZE ;
 struct dtfs_file* DTFS_CTOF (void*) ;
 int EISDIR ;
 size_t MIN (size_t,int ) ;
 int PUFFS_IO_APPEND ;
 scalar_t__ VREG ;
 int dtfs_setsize (struct puffs_node*,scalar_t__) ;
 int dtfs_updatetimes (struct puffs_node*,int ,int,int) ;
 int memcpy (int *,int *,size_t) ;

int
dtfs_node_write(struct puffs_usermount *pu, void *opc, uint8_t *buf,
 off_t offset, size_t *resid, const struct puffs_cred *pcr, int ioflag)
{
 struct puffs_node *pn = opc;
 struct dtfs_file *df = DTFS_CTOF(opc);
 uint8_t *src, *dest;
 size_t copylen;

 if (pn->pn_va.va_type != VREG)
  return EISDIR;

 if (ioflag & PUFFS_IO_APPEND)
  offset = pn->pn_va.va_size;

 if (*resid + offset > pn->pn_va.va_size)
  dtfs_setsize(pn, *resid + offset);

 src = buf;
 while (*resid > 0) {
  int i;
  copylen = MIN(*resid, BLOCKLEFT(offset, DTFS_BLOCKSIZE));
  i = BLOCKNUM(offset, DTFS_BLOCKSHIFT);
  dest = df->df_blocks[i]
      + BLOCKOFF(offset, DTFS_BLOCKSIZE);
  memcpy(dest, src, copylen);
  offset += copylen;
  dest += copylen;
  *resid -= copylen;
 }

 dtfs_updatetimes(pn, 0, 1, 1);

 return 0;
}
