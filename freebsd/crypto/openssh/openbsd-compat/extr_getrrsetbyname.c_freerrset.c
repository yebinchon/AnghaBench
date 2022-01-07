
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int16_t ;
struct rrsetinfo {size_t rri_nrdatas; size_t rri_nsigs; struct rrsetinfo* rri_name; struct rrsetinfo* rri_sigs; struct rrsetinfo* rdi_data; struct rrsetinfo* rri_rdatas; } ;


 int free (struct rrsetinfo*) ;

void
freerrset(struct rrsetinfo *rrset)
{
 u_int16_t i;

 if (rrset == ((void*)0))
  return;

 if (rrset->rri_rdatas) {
  for (i = 0; i < rrset->rri_nrdatas; i++) {
   if (rrset->rri_rdatas[i].rdi_data == ((void*)0))
    break;
   free(rrset->rri_rdatas[i].rdi_data);
  }
  free(rrset->rri_rdatas);
 }

 if (rrset->rri_sigs) {
  for (i = 0; i < rrset->rri_nsigs; i++) {
   if (rrset->rri_sigs[i].rdi_data == ((void*)0))
    break;
   free(rrset->rri_sigs[i].rdi_data);
  }
  free(rrset->rri_sigs);
 }

 if (rrset->rri_name)
  free(rrset->rri_name);
 free(rrset);
}
