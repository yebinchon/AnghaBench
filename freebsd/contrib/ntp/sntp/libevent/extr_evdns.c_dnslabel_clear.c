
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dnslabel_table {int n_labels; TYPE_1__* labels; } ;
struct TYPE_2__ {int v; } ;


 int mm_free (int ) ;

__attribute__((used)) static void
dnslabel_clear(struct dnslabel_table *table)
{
 int i;
 for (i = 0; i < table->n_labels; ++i)
  mm_free(table->labels[i].v);
 table->n_labels = 0;
}
