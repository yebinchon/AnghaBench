
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ klen; int key; } ;
typedef TYPE_1__ svn_sort__item_t ;
typedef scalar_t__ apr_size_t ;


 int memcmp (int ,int ,scalar_t__) ;

int
svn_sort_compare_items_lexically(const svn_sort__item_t *a,
                                 const svn_sort__item_t *b)
{
  int val;
  apr_size_t len;


  len = (a->klen < b->klen) ? a->klen : b->klen;
  val = memcmp(a->key, b->key, len);
  if (val != 0)
    return val;


  return (a->klen < b->klen) ? -1 : (a->klen > b->klen) ? 1 : 0;
}
