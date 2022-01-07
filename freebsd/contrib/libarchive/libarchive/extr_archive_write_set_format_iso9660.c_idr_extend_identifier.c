
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct idrent {int noff; TYPE_1__* isoent; } ;
struct TYPE_2__ {int ext_off; scalar_t__ ext_len; scalar_t__ id_len; scalar_t__ identifier; } ;


 int memmove (unsigned char*,unsigned char*,scalar_t__) ;

__attribute__((used)) static void
idr_extend_identifier(struct idrent *wnp, int numsize, int nullsize)
{
 unsigned char *p;
 int wnp_ext_off;

 wnp_ext_off = wnp->isoent->ext_off;
 if (wnp->noff + numsize != wnp_ext_off) {
  p = (unsigned char *)wnp->isoent->identifier;

  memmove(p + wnp->noff + numsize, p + wnp_ext_off,
      wnp->isoent->ext_len + nullsize);
  wnp->isoent->ext_off = wnp_ext_off = wnp->noff + numsize;
  wnp->isoent->id_len = wnp_ext_off + wnp->isoent->ext_len;
 }
}
