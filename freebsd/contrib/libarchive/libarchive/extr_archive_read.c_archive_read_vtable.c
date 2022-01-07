
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_vtable {int archive_close; int archive_free; int archive_read_next_header2; int archive_read_next_header; int archive_read_data_block; int archive_filter_count; int archive_filter_name; int archive_filter_code; int archive_filter_bytes; } ;


 int _archive_filter_bytes ;
 int _archive_filter_code ;
 int _archive_filter_count ;
 int _archive_filter_name ;
 int _archive_read_close ;
 int _archive_read_data_block ;
 int _archive_read_free ;
 int _archive_read_next_header ;
 int _archive_read_next_header2 ;

__attribute__((used)) static struct archive_vtable *
archive_read_vtable(void)
{
 static struct archive_vtable av;
 static int inited = 0;

 if (!inited) {
  av.archive_filter_bytes = _archive_filter_bytes;
  av.archive_filter_code = _archive_filter_code;
  av.archive_filter_name = _archive_filter_name;
  av.archive_filter_count = _archive_filter_count;
  av.archive_read_data_block = _archive_read_data_block;
  av.archive_read_next_header = _archive_read_next_header;
  av.archive_read_next_header2 = _archive_read_next_header2;
  av.archive_free = _archive_read_free;
  av.archive_close = _archive_read_close;
  inited = 1;
 }
 return (&av);
}
