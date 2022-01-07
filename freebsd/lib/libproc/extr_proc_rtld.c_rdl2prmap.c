
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rdl_prot; int rdl_path; int rdl_offset; scalar_t__ rdl_saddr; scalar_t__ rdl_eaddr; } ;
typedef TYPE_1__ rd_loadobj_t ;
struct TYPE_6__ {int pr_mapname; int pr_mflags; int pr_offset; scalar_t__ pr_size; scalar_t__ pr_vaddr; } ;
typedef TYPE_2__ prmap_t ;


 int MA_EXEC ;
 int MA_READ ;
 int MA_WRITE ;
 int RD_RDL_R ;
 int RD_RDL_W ;
 int RD_RDL_X ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
rdl2prmap(const rd_loadobj_t *rdl, prmap_t *map)
{

 map->pr_vaddr = rdl->rdl_saddr;
 map->pr_size = rdl->rdl_eaddr - rdl->rdl_saddr;
 map->pr_offset = rdl->rdl_offset;
 map->pr_mflags = 0;
 if (rdl->rdl_prot & RD_RDL_R)
  map->pr_mflags |= MA_READ;
 if (rdl->rdl_prot & RD_RDL_W)
  map->pr_mflags |= MA_WRITE;
 if (rdl->rdl_prot & RD_RDL_X)
  map->pr_mflags |= MA_EXEC;
 (void)strlcpy(map->pr_mapname, rdl->rdl_path,
     sizeof(map->pr_mapname));
}
