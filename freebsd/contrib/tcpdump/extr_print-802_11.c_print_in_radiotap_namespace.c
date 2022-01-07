
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct cpack_state {int dummy; } ;
typedef int netdissect_options ;
typedef enum ieee80211_radiotap_type { ____Placeholder_ieee80211_radiotap_type } ieee80211_radiotap_type ;


 int BITNO_32 (int) ;
 int IEEE80211_RADIOTAP_NAMESPACE ;
 int print_radiotap_field (int *,struct cpack_state*,int,int *,int) ;

__attribute__((used)) static int
print_in_radiotap_namespace(netdissect_options *ndo,
                            struct cpack_state *s, uint8_t *flags,
                            uint32_t presentflags, int bit0)
{





 uint32_t present, next_present;
 int bitno;
 enum ieee80211_radiotap_type bit;
 int rc;

 for (present = presentflags; present; present = next_present) {



  next_present = present & (present - 1);






  bitno = (((present ^ next_present) >> 16) ? 16 + ((((present ^ next_present) >> 16) >> 8) ? 8 + (((((present ^ next_present) >> 16) >> 8) >> 4) ? 4 + ((((((present ^ next_present) >> 16) >> 8) >> 4) >> 2) ? 2 + (((((((present ^ next_present) >> 16) >> 8) >> 4) >> 2) & 2) ? 1 : 0) : (((((((present ^ next_present) >> 16) >> 8) >> 4)) & 2) ? 1 : 0)) : ((((((present ^ next_present) >> 16) >> 8)) >> 2) ? 2 + (((((((present ^ next_present) >> 16) >> 8)) >> 2) & 2) ? 1 : 0) : (((((((present ^ next_present) >> 16) >> 8))) & 2) ? 1 : 0))) : (((((present ^ next_present) >> 16)) >> 4) ? 4 + ((((((present ^ next_present) >> 16)) >> 4) >> 2) ? 2 + (((((((present ^ next_present) >> 16)) >> 4) >> 2) & 2) ? 1 : 0) : (((((((present ^ next_present) >> 16)) >> 4)) & 2) ? 1 : 0)) : ((((((present ^ next_present) >> 16))) >> 2) ? 2 + (((((((present ^ next_present) >> 16))) >> 2) & 2) ? 1 : 0) : (((((((present ^ next_present) >> 16)))) & 2) ? 1 : 0)))) : ((((present ^ next_present)) >> 8) ? 8 + (((((present ^ next_present)) >> 8) >> 4) ? 4 + ((((((present ^ next_present)) >> 8) >> 4) >> 2) ? 2 + (((((((present ^ next_present)) >> 8) >> 4) >> 2) & 2) ? 1 : 0) : (((((((present ^ next_present)) >> 8) >> 4)) & 2) ? 1 : 0)) : ((((((present ^ next_present)) >> 8)) >> 2) ? 2 + (((((((present ^ next_present)) >> 8)) >> 2) & 2) ? 1 : 0) : (((((((present ^ next_present)) >> 8))) & 2) ? 1 : 0))) : (((((present ^ next_present))) >> 4) ? 4 + ((((((present ^ next_present))) >> 4) >> 2) ? 2 + (((((((present ^ next_present))) >> 4) >> 2) & 2) ? 1 : 0) : (((((((present ^ next_present))) >> 4)) & 2) ? 1 : 0)) : ((((((present ^ next_present)))) >> 2) ? 2 + (((((((present ^ next_present)))) >> 2) & 2) ? 1 : 0) : (((((((present ^ next_present))))) & 2) ? 1 : 0)))));





  if (bitno >= IEEE80211_RADIOTAP_NAMESPACE)
   break;




  bit = (enum ieee80211_radiotap_type)(bit0 + bitno);

  rc = print_radiotap_field(ndo, s, bit, flags, presentflags);
  if (rc != 0)
   return rc;
 }

 return 0;
}
