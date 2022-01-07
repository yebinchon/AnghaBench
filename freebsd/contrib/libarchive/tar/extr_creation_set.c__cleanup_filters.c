
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_set {struct filter_set* filter_name; } ;


 int free (struct filter_set*) ;

__attribute__((used)) static void
_cleanup_filters(struct filter_set *filters, int count)
{
 int i;

 for (i = 0; i < count; i++)
  free(filters[i].filter_name);
 free(filters);
}
