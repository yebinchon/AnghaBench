
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dnslabel_table {scalar_t__ n_labels; } ;



__attribute__((used)) static void
dnslabel_table_init(struct dnslabel_table *table)
{
 table->n_labels = 0;
}
