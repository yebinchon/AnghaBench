
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int spa_t ;
struct TYPE_6__ {int dn_datablkszsec; } ;
typedef TYPE_1__ dnode_phys_t ;


 scalar_t__ ZBT_MICRO ;
 int dnode_read (int const*,TYPE_1__ const*,int ,scalar_t__,size_t) ;
 int fzap_rlookup (int const*,TYPE_1__ const*,char*,scalar_t__) ;
 int mzap_rlookup (int const*,TYPE_1__ const*,char*,scalar_t__) ;
 scalar_t__ zap_scratch ;

__attribute__((used)) static int
zap_rlookup(const spa_t *spa, const dnode_phys_t *dnode, char *name, uint64_t value)
{
 int rc;
 uint64_t zap_type;
 size_t size = dnode->dn_datablkszsec * 512;

 rc = dnode_read(spa, dnode, 0, zap_scratch, size);
 if (rc)
  return (rc);

 zap_type = *(uint64_t *) zap_scratch;
 if (zap_type == ZBT_MICRO)
  return mzap_rlookup(spa, dnode, name, value);
 else
  return fzap_rlookup(spa, dnode, name, value);
}
