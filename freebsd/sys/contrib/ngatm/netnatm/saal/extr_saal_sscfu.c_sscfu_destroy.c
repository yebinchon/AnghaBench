
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sscfu {int sigs; } ;


 int MEMFREE (struct sscfu*) ;
 int SIGQ_CLEAR (int *) ;

void
sscfu_destroy(struct sscfu *sscf)
{
 SIGQ_CLEAR(&sscf->sigs);
 MEMFREE(sscf);
}
