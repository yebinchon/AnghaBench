
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvmx_coremask {int dummy; } ;


 int cvmx_coremask_is_set_core (struct cvmx_coremask*,int) ;
 scalar_t__ cvmx_get_core_num () ;

__attribute__((used)) static inline int cvmx_coremask_is_member_bmp(struct cvmx_coremask *pcm)
{
    return cvmx_coremask_is_set_core(pcm, (int)cvmx_get_core_num());
}
