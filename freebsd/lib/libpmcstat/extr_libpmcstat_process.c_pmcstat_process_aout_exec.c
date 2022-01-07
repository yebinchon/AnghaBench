
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintfptr_t ;
struct pmcstat_process {int dummy; } ;
struct pmcstat_image {int dummy; } ;



void
pmcstat_process_aout_exec(struct pmcstat_process *pp,
    struct pmcstat_image *image, uintfptr_t entryaddr)
{
 (void) pp;
 (void) image;
 (void) entryaddr;

}
