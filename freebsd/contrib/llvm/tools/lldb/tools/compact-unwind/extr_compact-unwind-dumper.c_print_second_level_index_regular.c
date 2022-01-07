
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int secondLevelPagesSectionOffset; scalar_t__ functionOffset; } ;
struct TYPE_4__ {int entryPageOffset; scalar_t__ entryCount; } ;
struct baton {TYPE_1__ first_level_index_entry; TYPE_2__ regular_second_level_page_header; int * compact_unwind_start; } ;


 int print_function_encoding (struct baton,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

void print_second_level_index_regular(struct baton baton) {
  uint8_t *page_entries =
      baton.compact_unwind_start +
      baton.first_level_index_entry.secondLevelPagesSectionOffset +
      baton.regular_second_level_page_header.entryPageOffset;
  uint32_t entries_count = baton.regular_second_level_page_header.entryCount;

  uint8_t *offset = page_entries;

  uint32_t idx = 0;
  while (idx < entries_count) {
    uint32_t func_offset = *((uint32_t *)(offset));
    uint32_t encoding = *((uint32_t *)(offset + 4));
    print_function_encoding(baton, idx, encoding, (uint32_t)-1,
                            func_offset -
                                baton.first_level_index_entry.functionOffset);
    idx++;
    offset += 8;
  }
}
