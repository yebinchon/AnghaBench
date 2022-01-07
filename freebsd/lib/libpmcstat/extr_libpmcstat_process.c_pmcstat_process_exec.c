
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintfptr_t ;
struct pmcstat_stats {int ps_exec_indeterminable; int ps_exec_aout; int ps_exec_elf; int ps_exec_errors; } ;
struct pmcstat_process {int dummy; } ;
struct pmcstat_image {int pi_type; } ;
struct pmcstat_args {int dummy; } ;
struct pmc_plugins {int dummy; } ;
typedef int pmcstat_interned_string ;


 int EX_SOFTWARE ;




 int PMCSTAT_IMAGE_UNKNOWN ;
 int assert (int) ;
 int err (int ,char*,int ) ;
 int pmcstat_image_determine_type (struct pmcstat_image*,struct pmcstat_args*) ;
 struct pmcstat_image* pmcstat_image_from_path (int ,int ,struct pmcstat_args*,struct pmc_plugins*) ;
 int pmcstat_process_aout_exec (struct pmcstat_process*,struct pmcstat_image*,int ) ;
 int pmcstat_process_elf_exec (struct pmcstat_process*,struct pmcstat_image*,int ,struct pmcstat_args*,struct pmc_plugins*,struct pmcstat_stats*) ;
 int pmcstat_string_unintern (int ) ;

void
pmcstat_process_exec(struct pmcstat_process *pp,
    pmcstat_interned_string path, uintfptr_t entryaddr,
    struct pmcstat_args *args, struct pmc_plugins *plugins,
    struct pmcstat_stats *pmcstat_stats)
{
 struct pmcstat_image *image;

 if ((image = pmcstat_image_from_path(path, 0,
     args, plugins)) == ((void*)0)) {
  pmcstat_stats->ps_exec_errors++;
  return;
 }

 if (image->pi_type == PMCSTAT_IMAGE_UNKNOWN)
  pmcstat_image_determine_type(image, args);

 assert(image->pi_type != PMCSTAT_IMAGE_UNKNOWN);

 switch (image->pi_type) {
 case 130:
 case 129:
  pmcstat_stats->ps_exec_elf++;
  pmcstat_process_elf_exec(pp, image, entryaddr,
      args, plugins, pmcstat_stats);
  break;

 case 131:
  pmcstat_stats->ps_exec_aout++;
  pmcstat_process_aout_exec(pp, image, entryaddr);
  break;

 case 128:
  pmcstat_stats->ps_exec_indeterminable++;
  break;

 default:
  err(EX_SOFTWARE,
      "ERROR: Unsupported executable type for \"%s\"",
      pmcstat_string_unintern(path));
 }
}
