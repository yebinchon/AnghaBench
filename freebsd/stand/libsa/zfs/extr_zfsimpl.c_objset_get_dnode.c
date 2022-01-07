
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int spa_t ;
typedef int off_t ;
struct TYPE_3__ {int os_meta_dnode; } ;
typedef TYPE_1__ objset_phys_t ;
typedef int dnode_phys_t ;


 int dnode_read (int const*,int *,int,int *,int) ;

__attribute__((used)) static int
objset_get_dnode(const spa_t *spa, const objset_phys_t *os, uint64_t objnum, dnode_phys_t *dnode)
{
 off_t offset;

 offset = objnum * sizeof(dnode_phys_t);
 return dnode_read(spa, &os->os_meta_dnode, offset,
  dnode, sizeof(dnode_phys_t));
}
