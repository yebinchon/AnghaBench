
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
struct TYPE_4__ {int ui64; } ;
struct TYPE_5__ {TYPE_1__ value; } ;
struct TYPE_6__ {TYPE_2__ fmri_set_failed; } ;


 int FM_FMRI_AUTHORITY ;
 int FM_FMRI_MEM_OFFSET ;
 int FM_FMRI_MEM_SERIAL_ID ;
 int FM_FMRI_MEM_UNUM ;
 int FM_FMRI_SCHEME ;
 char const* FM_FMRI_SCHEME_MEM ;
 int FM_VERSION ;
 int MEM_SCHEME_VERSION0 ;
 int atomic_inc_64 (int *) ;
 TYPE_3__ erpt_kstat_data ;
 scalar_t__ nvlist_add_nvlist (int *,int ,int *) ;
 scalar_t__ nvlist_add_string (int *,int ,char const*) ;
 scalar_t__ nvlist_add_string_array (int *,int ,char**,int) ;
 scalar_t__ nvlist_add_uint64 (int *,int ,scalar_t__) ;
 scalar_t__ nvlist_add_uint8 (int *,int ,int) ;

void
fm_fmri_mem_set(nvlist_t *fmri, int version, const nvlist_t *auth,
    const char *unum, const char *serial, uint64_t offset)
{
 if (version != MEM_SCHEME_VERSION0) {
  atomic_inc_64(&erpt_kstat_data.fmri_set_failed.value.ui64);
  return;
 }

 if (!serial && (offset != (uint64_t)-1)) {
  atomic_inc_64(&erpt_kstat_data.fmri_set_failed.value.ui64);
  return;
 }

 if (nvlist_add_uint8(fmri, FM_VERSION, version) != 0) {
  atomic_inc_64(&erpt_kstat_data.fmri_set_failed.value.ui64);
  return;
 }

 if (nvlist_add_string(fmri, FM_FMRI_SCHEME, FM_FMRI_SCHEME_MEM) != 0) {
  atomic_inc_64(&erpt_kstat_data.fmri_set_failed.value.ui64);
  return;
 }

 if (auth != ((void*)0)) {
  if (nvlist_add_nvlist(fmri, FM_FMRI_AUTHORITY,
      (nvlist_t *)auth) != 0) {
   atomic_inc_64(
       &erpt_kstat_data.fmri_set_failed.value.ui64);
  }
 }

 if (nvlist_add_string(fmri, FM_FMRI_MEM_UNUM, unum) != 0) {
  atomic_inc_64(&erpt_kstat_data.fmri_set_failed.value.ui64);
 }

 if (serial != ((void*)0)) {
  if (nvlist_add_string_array(fmri, FM_FMRI_MEM_SERIAL_ID,
      (char **)&serial, 1) != 0) {
   atomic_inc_64(
       &erpt_kstat_data.fmri_set_failed.value.ui64);
  }
  if (offset != (uint64_t)-1 && nvlist_add_uint64(fmri,
      FM_FMRI_MEM_OFFSET, offset) != 0) {
   atomic_inc_64(
       &erpt_kstat_data.fmri_set_failed.value.ui64);
  }
 }
}
