
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;
typedef scalar_t__ uintfptr_t ;
struct pmcstat_stats {int ps_exec_errors; } ;
struct pmcstat_process {int dummy; } ;
struct pmcstat_image {scalar_t__ pi_type; scalar_t__ pi_entry; int pi_dynlinkerpath; scalar_t__ pi_isdynamic; scalar_t__ pi_vaddr; } ;
struct pmcstat_args {int dummy; } ;
struct pmc_plugins {int dummy; } ;


 scalar_t__ PMCSTAT_IMAGE_ELF32 ;
 scalar_t__ PMCSTAT_IMAGE_ELF64 ;
 scalar_t__ PMCSTAT_IMAGE_UNKNOWN ;
 int assert (int) ;
 struct pmcstat_image* pmcstat_image_from_path (int ,int ,struct pmcstat_args*,struct pmc_plugins*) ;
 int pmcstat_image_get_elf_params (struct pmcstat_image*,struct pmcstat_args*) ;
 int pmcstat_image_link (struct pmcstat_process*,struct pmcstat_image*,scalar_t__) ;
 int pmcstat_string_unintern (int ) ;
 int warnx (char*,int ) ;

void
pmcstat_process_elf_exec(struct pmcstat_process *pp,
    struct pmcstat_image *image, uintfptr_t entryaddr,
    struct pmcstat_args *args, struct pmc_plugins *plugins,
    struct pmcstat_stats *pmcstat_stats)
{
 uintmax_t libstart;
 struct pmcstat_image *rtldimage;

 assert(image->pi_type == PMCSTAT_IMAGE_ELF32 ||
     image->pi_type == PMCSTAT_IMAGE_ELF64);


 pmcstat_image_link(pp, image, image->pi_vaddr);
 if (image->pi_isdynamic) {
  rtldimage = pmcstat_image_from_path(image->pi_dynlinkerpath,
      0, args, plugins);
  if (rtldimage == ((void*)0)) {
   warnx("WARNING: Cannot find image for \"%s\".",
       pmcstat_string_unintern(image->pi_dynlinkerpath));
   pmcstat_stats->ps_exec_errors++;
   return;
  }

  if (rtldimage->pi_type == PMCSTAT_IMAGE_UNKNOWN)
   pmcstat_image_get_elf_params(rtldimage, args);

  if (rtldimage->pi_type != PMCSTAT_IMAGE_ELF32 &&
      rtldimage->pi_type != PMCSTAT_IMAGE_ELF64) {
   warnx("WARNING: rtld not an ELF object \"%s\".",
       pmcstat_string_unintern(image->pi_dynlinkerpath));
   return;
  }

  libstart = entryaddr - rtldimage->pi_entry;
  pmcstat_image_link(pp, rtldimage, libstart);
 }
}
