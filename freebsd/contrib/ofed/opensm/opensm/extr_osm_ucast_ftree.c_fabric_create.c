
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int io_guid_tbl; int cn_guid_tbl; int sw_by_tuple_tbl; int sw_tbl; int hca_tbl; } ;
typedef TYPE_1__ ftree_fabric_t ;


 int cl_qmap_init (int *) ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static ftree_fabric_t *fabric_create()
{
 ftree_fabric_t *p_ftree =
     (ftree_fabric_t *) malloc(sizeof(ftree_fabric_t));
 if (p_ftree == ((void*)0))
  return ((void*)0);

 memset(p_ftree, 0, sizeof(ftree_fabric_t));

 cl_qmap_init(&p_ftree->hca_tbl);
 cl_qmap_init(&p_ftree->sw_tbl);
 cl_qmap_init(&p_ftree->sw_by_tuple_tbl);
 cl_qmap_init(&p_ftree->cn_guid_tbl);
 cl_qmap_init(&p_ftree->io_guid_tbl);

 return p_ftree;
}
