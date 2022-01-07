
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct so_list {struct lm_info* lm_info; } ;
struct section_table {int endaddr; int addr; TYPE_1__* the_bfd_section; } ;
struct lm_sec {scalar_t__ offset; int name; } ;
struct lm_info {scalar_t__ nsecs; TYPE_2__* secs; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int name; } ;


 struct lm_sec* bsearch (struct lm_sec*,TYPE_2__*,scalar_t__,int,int ) ;
 int fetch_sec_names (struct lm_info*) ;
 int lm_sec_cmp ;

__attribute__((used)) static void
osf_relocate_section_addresses (struct so_list *so,
    struct section_table *sec)
{
  struct lm_info *lmi;
  struct lm_sec lms_key, *lms;


  lmi = so->lm_info;
  if (lmi->nsecs && !lmi->secs[0].name)
    fetch_sec_names (lmi);


  lms_key.name = sec->the_bfd_section->name;
  lms = bsearch (&lms_key, lmi->secs, lmi->nsecs, sizeof *lms, lm_sec_cmp);
  if (lms)
    {
      sec->addr += lms->offset;
      sec->endaddr += lms->offset;
    }
}
