
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ieee80211_radiotap_vendor_namespaces {int dummy; } ;
struct ieee80211_radiotap_iterator {int _max_length; int _bitmap_shifter; int is_radiotap_ns; scalar_t__ this_arg_size; scalar_t__ this_arg_index; int * _arg; int * this_arg; struct ieee80211_radiotap_header* _rtheader; int * overrides; scalar_t__ n_overrides; int * current_namespace; struct ieee80211_radiotap_vendor_namespaces const* _vns; int * _next_bitmap; scalar_t__ _reset_on_ext; int * _next_ns_data; scalar_t__ _arg_index; } ;
struct ieee80211_radiotap_header {int it_present; int it_len; scalar_t__ it_version; } ;


 int BIT (int ) ;
 int EINVAL ;
 int IEEE80211_RADIOTAP_EXT ;
 int get_unaligned_le16 (int *) ;
 int get_unaligned_le32 (int *) ;
 int radiotap_ns ;

int ieee80211_radiotap_iterator_init(
 struct ieee80211_radiotap_iterator *iterator,
 struct ieee80211_radiotap_header *radiotap_header,
 int max_length, const struct ieee80211_radiotap_vendor_namespaces *vns)
{

 if (max_length < (int)sizeof(struct ieee80211_radiotap_header))
  return -EINVAL;


 if (radiotap_header->it_version)
  return -EINVAL;


 if (max_length < get_unaligned_le16(&radiotap_header->it_len))
  return -EINVAL;

 iterator->_rtheader = radiotap_header;
 iterator->_max_length = get_unaligned_le16(&radiotap_header->it_len);
 iterator->_arg_index = 0;
 iterator->_bitmap_shifter = get_unaligned_le32(&radiotap_header->it_present);
 iterator->_arg = (uint8_t *)radiotap_header + sizeof(*radiotap_header);
 iterator->_next_ns_data = ((void*)0);
 iterator->_reset_on_ext = 0;
 iterator->_next_bitmap = &radiotap_header->it_present;
 iterator->_next_bitmap++;
 iterator->_vns = vns;
 iterator->current_namespace = &radiotap_ns;
 iterator->is_radiotap_ns = 1;







 if (iterator->_bitmap_shifter & BIT(IEEE80211_RADIOTAP_EXT)) {
  if ((unsigned long)iterator->_arg -
      (unsigned long)iterator->_rtheader + sizeof(uint32_t) >
      (unsigned long)iterator->_max_length)
   return -EINVAL;
  while (get_unaligned_le32(iterator->_arg) &
         BIT(IEEE80211_RADIOTAP_EXT)) {
   iterator->_arg += sizeof(uint32_t);







   if ((unsigned long)iterator->_arg -
       (unsigned long)iterator->_rtheader +
       sizeof(uint32_t) >
       (unsigned long)iterator->_max_length)
    return -EINVAL;
  }

  iterator->_arg += sizeof(uint32_t);






 }

 iterator->this_arg = iterator->_arg;
 iterator->this_arg_index = 0;
 iterator->this_arg_size = 0;



 return 0;
}
