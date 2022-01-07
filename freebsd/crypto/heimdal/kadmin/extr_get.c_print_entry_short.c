
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct get_entry_data {int table; struct field_info* chead; } ;
struct field_info {TYPE_1__* ff; struct field_info* next; } ;
typedef int kadm5_principal_ent_t ;
typedef int buf ;
struct TYPE_2__ {int fieldvalue; int subvalue; } ;


 int format_field (int ,int ,int ,char*,int,int) ;
 int rtbl_add_column_entry_by_id (int ,int ,char*) ;

__attribute__((used)) static void
print_entry_short(struct get_entry_data *data, kadm5_principal_ent_t princ)
{
    char buf[1024];
    struct field_info *f;

    for(f = data->chead; f != ((void*)0); f = f->next) {
 format_field(princ, f->ff->fieldvalue, f->ff->subvalue, buf, sizeof(buf), 1);
 rtbl_add_column_entry_by_id(data->table, f->ff->fieldvalue, buf);
    }
}
