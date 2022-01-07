
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fp_subtype_nm; int fp_version_nm; int fp_class_nm; int fp_os; } ;
struct pf_osfp_ioctl {TYPE_1__ fp_os; } ;
struct name_entry {int nm_num; void* nm_sublist_num; int nm_sublist; } ;


 int DEBUG (struct pf_osfp_ioctl*,char*,int,int,int) ;
 void* MAX (void*,int) ;
 int PF_OSFP_UNPACK (int ,int,int,int) ;
 void* class_count ;
 int classes ;
 int fingerprint_count ;
 struct name_entry* fingerprint_name_entry (int *,int ) ;

void
import_fingerprint(struct pf_osfp_ioctl *fp)
{
 struct name_entry *nm_class, *nm_version, *nm_subtype;
 int class, version, subtype;

 PF_OSFP_UNPACK(fp->fp_os.fp_os, class, version, subtype);

 nm_class = fingerprint_name_entry(&classes, fp->fp_os.fp_class_nm);
 if (nm_class->nm_num == 0) {
  nm_class->nm_num = class;
  class_count = MAX(class_count, class);
 }

 nm_version = fingerprint_name_entry(&nm_class->nm_sublist,
     fp->fp_os.fp_version_nm);
 if (nm_version) {
  if (nm_version->nm_num == 0) {
   nm_version->nm_num = version;
   nm_class->nm_sublist_num = MAX(nm_class->nm_sublist_num,
       version);
  }
  nm_subtype = fingerprint_name_entry(&nm_version->nm_sublist,
      fp->fp_os.fp_subtype_nm);
  if (nm_subtype) {
   if (nm_subtype->nm_num == 0) {
    nm_subtype->nm_num = subtype;
    nm_version->nm_sublist_num =
        MAX(nm_version->nm_sublist_num, subtype);
   }
  }
 }


 fingerprint_count++;
 DEBUG(fp, "import signature %d:%d:%d", class, version, subtype);
}
