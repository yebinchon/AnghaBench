
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_vtable {int archive_read_next_header2; int archive_read_next_header; int archive_read_data_block; int archive_close; int archive_free; } ;


 int _archive_read_close ;
 int _archive_read_data_block ;
 int _archive_read_free ;
 int _archive_read_next_header ;
 int _archive_read_next_header2 ;

__attribute__((used)) static struct archive_vtable *
archive_read_disk_vtable(void)
{
 static struct archive_vtable av;
 static int inited = 0;

 if (!inited) {
  av.archive_free = _archive_read_free;
  av.archive_close = _archive_read_close;
  av.archive_read_data_block = _archive_read_data_block;
  av.archive_read_next_header = _archive_read_next_header;
  av.archive_read_next_header2 = _archive_read_next_header2;
  inited = 1;
 }
 return (&av);
}
