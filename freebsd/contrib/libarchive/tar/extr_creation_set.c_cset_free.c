
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct creation_set {struct creation_set* create_format; int filter_count; int filters; } ;


 int _cleanup_filters (int ,int ) ;
 int free (struct creation_set*) ;

void
cset_free(struct creation_set *cset)
{
 _cleanup_filters(cset->filters, cset->filter_count);
 free(cset->create_format);
 free(cset);
}
