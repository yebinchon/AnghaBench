
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* z_ctldir; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef int sfs_node_t ;
struct TYPE_4__ {int * snapdir; } ;


 int sfs_destroy_node (int *) ;

void
zfsctl_destroy(zfsvfs_t *zfsvfs)
{
 sfs_destroy_node(zfsvfs->z_ctldir->snapdir);
 sfs_destroy_node((sfs_node_t *)zfsvfs->z_ctldir);
 zfsvfs->z_ctldir = ((void*)0);
}
