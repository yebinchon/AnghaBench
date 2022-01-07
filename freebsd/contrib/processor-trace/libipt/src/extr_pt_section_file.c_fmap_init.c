
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_sec_file_mapping {int lock; } ;


 int memset (struct pt_sec_file_mapping*,int ,int) ;
 int mtx_init (int *,int ) ;
 int mtx_plain ;
 int pte_bad_lock ;
 int pte_internal ;
 int thrd_success ;

__attribute__((used)) static int fmap_init(struct pt_sec_file_mapping *mapping)
{
 if (!mapping)
  return -pte_internal;

 memset(mapping, 0, sizeof(*mapping));
 return 0;
}
