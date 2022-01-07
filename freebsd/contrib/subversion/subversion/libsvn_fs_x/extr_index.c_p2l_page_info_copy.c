
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int offset; size_t page_no; int page_size; int page_count; scalar_t__ page_start; int first_revision; scalar_t__ next_offset; scalar_t__ start_offset; } ;
typedef TYPE_1__ p2l_page_info_baton_t ;
struct TYPE_6__ {int page_size; int page_count; int first_revision; } ;
typedef TYPE_2__ p2l_header_t ;
typedef size_t apr_size_t ;
typedef scalar_t__ apr_off_t ;



__attribute__((used)) static void
p2l_page_info_copy(p2l_page_info_baton_t *baton,
                   const p2l_header_t *header,
                   const apr_off_t *offsets)
{



  if (baton->offset / header->page_size < header->page_count)
    {

      baton->page_no = (apr_size_t)(baton->offset / header->page_size);
      baton->start_offset = offsets[baton->page_no];
      baton->next_offset = offsets[baton->page_no + 1];
      baton->page_size = header->page_size;
    }
  else
    {

      baton->page_no = header->page_count;
      baton->start_offset = offsets[baton->page_no];
      baton->next_offset = offsets[baton->page_no];
      baton->page_size = 0;
    }

  baton->first_revision = header->first_revision;
  baton->page_start = (apr_off_t)(header->page_size * baton->page_no);
  baton->page_count = header->page_count;
}
