
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {TYPE_2__* mz_chunk; } ;
typedef TYPE_1__ mzap_phys_t ;
struct TYPE_6__ {int mze_value; int mze_name; } ;
typedef TYPE_2__ mzap_ent_phys_t ;
struct TYPE_7__ {int dn_datablkszsec; } ;
typedef TYPE_3__ dnode_phys_t ;


 int ENOENT ;
 size_t MZAP_ENT_LEN ;
 int strcmp (int ,char const*) ;
 scalar_t__ zap_scratch ;

__attribute__((used)) static int
mzap_lookup(const dnode_phys_t *dnode, const char *name, uint64_t *value)
{
 const mzap_phys_t *mz;
 const mzap_ent_phys_t *mze;
 size_t size;
 int chunks, i;





 size = dnode->dn_datablkszsec * 512;

 mz = (const mzap_phys_t *) zap_scratch;
 chunks = size / MZAP_ENT_LEN - 1;

 for (i = 0; i < chunks; i++) {
  mze = &mz->mz_chunk[i];
  if (!strcmp(mze->mze_name, name)) {
   *value = mze->mze_value;
   return (0);
  }
 }

 return (ENOENT);
}
