
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct get_entry_data {struct field_info* chead; struct field_info** ctail; } ;
struct field_info {struct field_info* next; struct field_info* header; } ;


 int free (struct field_info*) ;

__attribute__((used)) static void
free_columns(struct get_entry_data *data)
{
    struct field_info *f, *next;
    for(f = data->chead; f != ((void*)0); f = next) {
 free(f->header);
 next = f->next;
 free(f);
    }
    data->chead = ((void*)0);
    data->ctail = &data->chead;
}
