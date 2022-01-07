
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmm_tspec_element {int* ts_info; } ;



__attribute__((used)) static inline u8 wmm_ac_get_tsid(const struct wmm_tspec_element *tspec)
{
 return (tspec->ts_info[0] >> 1) & 0x0f;
}
