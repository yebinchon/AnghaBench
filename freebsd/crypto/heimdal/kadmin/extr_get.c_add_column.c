
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct get_entry_data {int * table; int extra_mask; int mask; struct field_info** ctail; } ;
struct field_name {char const* default_header; int flags; int fieldvalue; int extra_mask; } ;
struct field_info {struct field_info* next; int * header; struct field_name* ff; } ;


 int ENOMEM ;
 struct field_info* malloc (int) ;
 int rtbl_add_column_by_id (int *,int ,char const*,int ) ;
 int * strdup (char const*) ;

__attribute__((used)) static int
add_column(struct get_entry_data *data, struct field_name *ff, const char *header)
{
    struct field_info *f = malloc(sizeof(*f));
    if (f == ((void*)0))
 return ENOMEM;
    f->ff = ff;
    if(header)
 f->header = strdup(header);
    else
 f->header = ((void*)0);
    f->next = ((void*)0);
    *data->ctail = f;
    data->ctail = &f->next;
    data->mask |= ff->fieldvalue;
    data->extra_mask |= ff->extra_mask;
    if(data->table != ((void*)0))
 rtbl_add_column_by_id(data->table, ff->fieldvalue,
         header ? header : ff->default_header, ff->flags);
    return 0;
}
