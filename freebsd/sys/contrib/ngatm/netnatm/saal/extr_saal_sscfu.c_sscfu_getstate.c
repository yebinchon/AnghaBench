
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sscfu {int state; } ;
typedef enum sscfu_state { ____Placeholder_sscfu_state } sscfu_state ;



enum sscfu_state
sscfu_getstate(const struct sscfu *sscf)
{
 return (sscf->state);
}
