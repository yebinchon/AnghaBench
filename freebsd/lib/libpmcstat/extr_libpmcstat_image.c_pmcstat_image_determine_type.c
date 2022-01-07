
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcstat_image {scalar_t__ pi_type; } ;
struct pmcstat_args {int dummy; } ;


 scalar_t__ PMCSTAT_IMAGE_INDETERMINABLE ;
 scalar_t__ PMCSTAT_IMAGE_UNKNOWN ;
 int assert (int) ;
 int pmcstat_image_get_aout_params (struct pmcstat_image*,struct pmcstat_args*) ;
 int pmcstat_image_get_elf_params (struct pmcstat_image*,struct pmcstat_args*) ;

void
pmcstat_image_determine_type(struct pmcstat_image *image,
    struct pmcstat_args *args)
{
 assert(image->pi_type == PMCSTAT_IMAGE_UNKNOWN);


 if (image->pi_type == PMCSTAT_IMAGE_UNKNOWN)
  pmcstat_image_get_elf_params(image, args);
 if (image->pi_type == PMCSTAT_IMAGE_UNKNOWN)
  pmcstat_image_get_aout_params(image, args);





 if (image->pi_type == PMCSTAT_IMAGE_UNKNOWN)
  image->pi_type = PMCSTAT_IMAGE_INDETERMINABLE;
}
