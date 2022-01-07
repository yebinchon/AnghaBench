
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct column_entry {int * data; } ;
struct column_data {int num_rows; struct column_entry* rows; } ;


 int ENOMEM ;
 int free (int *) ;
 struct column_entry* realloc (struct column_entry*,int) ;
 int * strdup (char const*) ;

__attribute__((used)) static int
add_column_entry (struct column_data *c, const char *data)
{
    struct column_entry row, *tmp;

    row.data = strdup (data);
    if (row.data == ((void*)0))
 return ENOMEM;
    tmp = realloc (c->rows, (c->num_rows + 1) * sizeof (*tmp));
    if (tmp == ((void*)0)) {
 free (row.data);
 return ENOMEM;
    }
    c->rows = tmp;
    c->rows[c->num_rows++] = row;
    return 0;
}
