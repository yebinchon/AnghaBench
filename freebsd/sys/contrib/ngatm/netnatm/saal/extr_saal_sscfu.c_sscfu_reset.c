
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sscfu {int sigs; scalar_t__ inhand; int state; } ;


 int SIGQ_CLEAR (int *) ;
 int SSCFU_RELEASED ;

void
sscfu_reset(struct sscfu *sscf)
{
 sscf->state = SSCFU_RELEASED;
 sscf->inhand = 0;
 SIGQ_CLEAR(&sscf->sigs);
}
