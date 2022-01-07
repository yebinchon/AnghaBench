
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_vtable {int archive_write_data_block; int archive_write_data; int archive_write_finish_entry; int archive_write_header; int archive_free; int archive_filter_bytes; int archive_close; } ;


 int _archive_write_disk_close ;
 int _archive_write_disk_data ;
 int _archive_write_disk_data_block ;
 int _archive_write_disk_filter_bytes ;
 int _archive_write_disk_finish_entry ;
 int _archive_write_disk_free ;
 int _archive_write_disk_header ;

__attribute__((used)) static struct archive_vtable *
archive_write_disk_vtable(void)
{
 static struct archive_vtable av;
 static int inited = 0;

 if (!inited) {
  av.archive_close = _archive_write_disk_close;
  av.archive_filter_bytes = _archive_write_disk_filter_bytes;
  av.archive_free = _archive_write_disk_free;
  av.archive_write_header = _archive_write_disk_header;
  av.archive_write_finish_entry
      = _archive_write_disk_finish_entry;
  av.archive_write_data = _archive_write_disk_data;
  av.archive_write_data_block = _archive_write_disk_data_block;
  inited = 1;
 }
 return (&av);
}
