
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct ieee80211_radiotap_iterator {int _arg_index; int _bitmap_shifter; int* _arg; int* _next_ns_data; int this_arg_index; int* this_arg; int this_arg_size; int _reset_on_ext; int is_radiotap_ns; int _next_bitmap; TYPE_2__* current_namespace; scalar_t__ _max_length; scalar_t__ _rtheader; } ;
struct TYPE_4__ {int n_bits; TYPE_1__* align_size; } ;
struct TYPE_3__ {int align; int size; } ;


 int EINVAL ;
 int ENOENT ;



 int find_ns (struct ieee80211_radiotap_iterator*,int,int) ;
 int find_override (struct ieee80211_radiotap_iterator*,int*,int*) ;
 int get_unaligned_le16 (int*) ;
 int get_unaligned_le32 (int ) ;
 TYPE_2__ radiotap_ns ;

int ieee80211_radiotap_iterator_next(
 struct ieee80211_radiotap_iterator *iterator)
{
 while (1) {
  int hit = 0;
  int pad, align, size, subns;
  uint32_t oui;


  if ((iterator->_arg_index % 32) == 130 &&
      !(iterator->_bitmap_shifter & 1))
   return -ENOENT;

  if (!(iterator->_bitmap_shifter & 1))
   goto next_entry;


  switch (iterator->_arg_index % 32) {
  case 129:
  case 130:
   align = 1;
   size = 0;
   break;
  case 128:
   align = 2;
   size = 6;
   break;
  default:





   if (!iterator->current_namespace ||
       iterator->_arg_index >= iterator->current_namespace->n_bits) {
    if (iterator->current_namespace == &radiotap_ns)
     return -ENOENT;
    align = 0;
   } else {
    align = iterator->current_namespace->align_size[iterator->_arg_index].align;
    size = iterator->current_namespace->align_size[iterator->_arg_index].size;
   }
   if (!align) {

    iterator->_arg = iterator->_next_ns_data;

    iterator->current_namespace = ((void*)0);
    goto next_entry;
   }
   break;
  }
  pad = ((unsigned long)iterator->_arg -
         (unsigned long)iterator->_rtheader) & (align - 1);

  if (pad)
   iterator->_arg += align - pad;

  if (iterator->_arg_index % 32 == 128) {
   int vnslen;

   if ((unsigned long)iterator->_arg + size -
       (unsigned long)iterator->_rtheader >
       (unsigned long)iterator->_max_length)
    return -EINVAL;

   oui = (*iterator->_arg << 16) |
    (*(iterator->_arg + 1) << 8) |
    *(iterator->_arg + 2);
   subns = *(iterator->_arg + 3);

   find_ns(iterator, oui, subns);

   vnslen = get_unaligned_le16(iterator->_arg + 4);
   iterator->_next_ns_data = iterator->_arg + size + vnslen;
   if (!iterator->current_namespace)
    size += vnslen;
  }





  iterator->this_arg_index = iterator->_arg_index;
  iterator->this_arg = iterator->_arg;
  iterator->this_arg_size = size;


  iterator->_arg += size;
  if ((unsigned long)iterator->_arg -
      (unsigned long)iterator->_rtheader >
      (unsigned long)iterator->_max_length)
   return -EINVAL;


  switch (iterator->_arg_index % 32) {
  case 128:
   iterator->_reset_on_ext = 1;

   iterator->is_radiotap_ns = 0;






   iterator->this_arg_index =
    128;
   if (!iterator->current_namespace)
    hit = 1;
   goto next_entry;
  case 129:
   iterator->_reset_on_ext = 1;
   iterator->current_namespace = &radiotap_ns;
   iterator->is_radiotap_ns = 1;
   goto next_entry;
  case 130:




   iterator->_bitmap_shifter =
    get_unaligned_le32(iterator->_next_bitmap);
   iterator->_next_bitmap++;
   if (iterator->_reset_on_ext)
    iterator->_arg_index = 0;
   else
    iterator->_arg_index++;
   iterator->_reset_on_ext = 0;
   break;
  default:

   hit = 1;
 next_entry:
   iterator->_bitmap_shifter >>= 1;
   iterator->_arg_index++;
  }


  if (hit)
   return 0;
 }
}
