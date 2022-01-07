
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_vtable {int archive_write_data; int archive_write_finish_entry; int archive_write_header; int archive_free; int archive_filter_count; int archive_filter_name; int archive_filter_code; int archive_filter_bytes; int archive_close; } ;


 int _archive_filter_bytes ;
 int _archive_filter_code ;
 int _archive_filter_name ;
 int _archive_write_close ;
 int _archive_write_data ;
 int _archive_write_filter_count ;
 int _archive_write_finish_entry ;
 int _archive_write_free ;
 int _archive_write_header ;

__attribute__((used)) static struct archive_vtable *
archive_write_vtable(void)
{
 static struct archive_vtable av;
 static int inited = 0;

 if (!inited) {
  av.archive_close = _archive_write_close;
  av.archive_filter_bytes = _archive_filter_bytes;
  av.archive_filter_code = _archive_filter_code;
  av.archive_filter_name = _archive_filter_name;
  av.archive_filter_count = _archive_write_filter_count;
  av.archive_free = _archive_write_free;
  av.archive_write_header = _archive_write_header;
  av.archive_write_finish_entry = _archive_write_finish_entry;
  av.archive_write_data = _archive_write_data;
  inited = 1;
 }
 return (&av);
}
