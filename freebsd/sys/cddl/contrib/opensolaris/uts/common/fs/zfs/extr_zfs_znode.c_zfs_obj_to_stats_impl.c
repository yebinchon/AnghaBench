
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zs_ctime; int zs_links; int zs_gen; int zs_mode; } ;
typedef TYPE_1__ zfs_stat_t ;
typedef int sa_handle_t ;
typedef int sa_bulk_attr_t ;
typedef int sa_attr_type_t ;


 int SA_ADD_BULK_ATTR (int *,int,int ,int *,int *,int) ;
 size_t ZPL_CTIME ;
 size_t ZPL_GEN ;
 size_t ZPL_LINKS ;
 size_t ZPL_MODE ;
 int sa_bulk_lookup (int *,int *,int) ;

__attribute__((used)) static int
zfs_obj_to_stats_impl(sa_handle_t *hdl, sa_attr_type_t *sa_table,
    zfs_stat_t *sb)
{
 sa_bulk_attr_t bulk[4];
 int count = 0;

 SA_ADD_BULK_ATTR(bulk, count, sa_table[ZPL_MODE], ((void*)0),
     &sb->zs_mode, sizeof (sb->zs_mode));
 SA_ADD_BULK_ATTR(bulk, count, sa_table[ZPL_GEN], ((void*)0),
     &sb->zs_gen, sizeof (sb->zs_gen));
 SA_ADD_BULK_ATTR(bulk, count, sa_table[ZPL_LINKS], ((void*)0),
     &sb->zs_links, sizeof (sb->zs_links));
 SA_ADD_BULK_ATTR(bulk, count, sa_table[ZPL_CTIME], ((void*)0),
     &sb->zs_ctime, sizeof (sb->zs_ctime));

 return (sa_bulk_lookup(hdl, bulk, count));
}
