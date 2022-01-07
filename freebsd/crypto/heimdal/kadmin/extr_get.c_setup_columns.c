
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct get_entry_data {int dummy; } ;
struct field_name {int * fieldname; } ;
typedef int buf ;


 int add_column (struct get_entry_data*,struct field_name*,char*) ;
 int context ;
 struct field_name* field_names ;
 int free_columns (struct get_entry_data*) ;
 int krb5_warnx (int ,char*,char*) ;
 scalar_t__ strcasecmp (char*,int *) ;
 char* strsep (char**,char*) ;
 int strsep_copy (char const**,char*,char*,int) ;

__attribute__((used)) static int
setup_columns(struct get_entry_data *data, const char *column_info)
{
    char buf[1024], *q;
    char *field, *header;
    struct field_name *f;

    while(strsep_copy(&column_info, ",", buf, sizeof(buf)) != -1) {
 q = buf;
 field = strsep(&q, "=");
 header = strsep(&q, "=");
 for(f = field_names; f->fieldname != ((void*)0); f++) {
     if(strcasecmp(field, f->fieldname) == 0) {
  add_column(data, f, header);
  break;
     }
 }
 if(f->fieldname == ((void*)0)) {
     krb5_warnx(context, "unknown field name \"%s\"", field);
     free_columns(data);
     return -1;
 }
    }
    return 0;
}
