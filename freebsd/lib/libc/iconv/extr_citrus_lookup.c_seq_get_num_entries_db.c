
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_lookup {int cl_dbnum; } ;



__attribute__((used)) static int
seq_get_num_entries_db(struct _citrus_lookup *cl)
{

 return (cl->cl_dbnum);
}
