
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; int data; } ;
typedef TYPE_1__ DBT ;


 int memcmp (int ,int ,int) ;

int
svn_fs_base__compare_dbt(const DBT *a, const DBT *b)
{
  int common_size = a->size > b->size ? b->size : a->size;
  int cmp = memcmp(a->data, b->data, common_size);

  if (cmp)
    return cmp;
  else
    return a->size - b->size;
}
