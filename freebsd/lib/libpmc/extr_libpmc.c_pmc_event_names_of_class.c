
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pmc_event_descr {char* pm_ev_name; } ;
typedef enum pmc_class { ____Placeholder_pmc_class } pmc_class ;
struct TYPE_4__ {int pm_cputype; } ;
struct TYPE_3__ {int pm_nevent; } ;


 int EINVAL ;
 int PMC_EVENT_TABLE_SIZE (int ) ;
 int beri ;
 struct pmc_event_descr* beri_event_table ;
 int cortex_a53 ;
 struct pmc_event_descr* cortex_a53_event_table ;
 int cortex_a57 ;
 struct pmc_event_descr* cortex_a57_event_table ;
 int cortex_a8 ;
 struct pmc_event_descr* cortex_a8_event_table ;
 int cortex_a9 ;
 struct pmc_event_descr* cortex_a9_event_table ;
 TYPE_2__ cpu_info ;
 int e500 ;
 struct pmc_event_descr* e500_event_table ;
 int errno ;
 int iaf ;
 struct pmc_event_descr* iaf_event_table ;
 int k8 ;
 struct pmc_event_descr* k8_event_table ;
 char** malloc (int) ;
 int mips24k ;
 struct pmc_event_descr* mips24k_event_table ;
 int mips74k ;
 struct pmc_event_descr* mips74k_event_table ;
 int octeon ;
 struct pmc_event_descr* octeon_event_table ;
 int ppc7450 ;
 struct pmc_event_descr* ppc7450_event_table ;
 int ppc970 ;
 struct pmc_event_descr* ppc970_event_table ;
 TYPE_1__ soft_event_info ;
 struct pmc_event_descr* soft_event_table ;
 int tsc ;
 struct pmc_event_descr* tsc_event_table ;
 int xscale ;
 struct pmc_event_descr* xscale_event_table ;

int
pmc_event_names_of_class(enum pmc_class cl, const char ***eventnames,
    int *nevents)
{
 int count;
 const char **names;
 const struct pmc_event_descr *ev;

 switch (cl)
 {
 case 141:
  ev = iaf_event_table;
  count = PMC_EVENT_TABLE_SIZE(iaf);
  break;
 case 133:
  ev = tsc_event_table;
  count = PMC_EVENT_TABLE_SIZE(tsc);
  break;
 case 140:
  ev = k8_event_table;
  count = PMC_EVENT_TABLE_SIZE(k8);
  break;
 case 132:
  ev = xscale_event_table;
  count = PMC_EVENT_TABLE_SIZE(xscale);
  break;
 case 145:
  switch (cpu_info.pm_cputype) {
  default:
  case 131:
   ev = cortex_a8_event_table;
   count = PMC_EVENT_TABLE_SIZE(cortex_a8);
   break;
  case 130:
   ev = cortex_a9_event_table;
   count = PMC_EVENT_TABLE_SIZE(cortex_a9);
   break;
  }
  break;
 case 144:
  switch (cpu_info.pm_cputype) {
  default:
  case 129:
   ev = cortex_a53_event_table;
   count = PMC_EVENT_TABLE_SIZE(cortex_a53);
   break;
  case 128:
   ev = cortex_a57_event_table;
   count = PMC_EVENT_TABLE_SIZE(cortex_a57);
   break;
  }
  break;
 case 143:
  ev = beri_event_table;
  count = PMC_EVENT_TABLE_SIZE(beri);
  break;
 case 139:
  ev = mips24k_event_table;
  count = PMC_EVENT_TABLE_SIZE(mips24k);
  break;
 case 138:
  ev = mips74k_event_table;
  count = PMC_EVENT_TABLE_SIZE(mips74k);
  break;
 case 137:
  ev = octeon_event_table;
  count = PMC_EVENT_TABLE_SIZE(octeon);
  break;
 case 136:
  ev = ppc7450_event_table;
  count = PMC_EVENT_TABLE_SIZE(ppc7450);
  break;
 case 135:
  ev = ppc970_event_table;
  count = PMC_EVENT_TABLE_SIZE(ppc970);
  break;
 case 142:
  ev = e500_event_table;
  count = PMC_EVENT_TABLE_SIZE(e500);
  break;
 case 134:
  ev = soft_event_table;
  count = soft_event_info.pm_nevent;
  break;
 default:
  errno = EINVAL;
  return (-1);
 }

 if ((names = malloc(count * sizeof(const char *))) == ((void*)0))
  return (-1);

 *eventnames = names;
 *nevents = count;

 for (;count--; ev++, names++)
  *names = ev->pm_ev_name;

 return (0);
}
