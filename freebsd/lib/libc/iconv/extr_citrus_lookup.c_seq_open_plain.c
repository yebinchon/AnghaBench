
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_lookup {int cl_rewind; int * cl_close; int * cl_num_entries; int * cl_lookup; int * cl_next; int cl_plainr; } ;


 int _map_file (int *,char const*) ;
 int seq_close_plain ;
 int seq_get_num_entries_plain ;
 int seq_lookup_plain ;
 int seq_next_plain ;

__attribute__((used)) static int
seq_open_plain(struct _citrus_lookup *cl, const char *name)
{
 int ret;


 ret = _map_file(&cl->cl_plainr, name);
 if (ret)
  return (ret);

 cl->cl_rewind = 1;
 cl->cl_next = &seq_next_plain;
 cl->cl_lookup = &seq_lookup_plain;
 cl->cl_num_entries = &seq_get_num_entries_plain;
 cl->cl_close = &seq_close_plain;

 return (0);
}
