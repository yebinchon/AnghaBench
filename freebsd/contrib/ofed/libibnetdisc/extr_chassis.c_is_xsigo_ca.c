
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ ibnd_is_xsigo_hca (int ) ;
 scalar_t__ ibnd_is_xsigo_tca (int ) ;

__attribute__((used)) static int is_xsigo_ca(uint64_t guid)
{
 if (ibnd_is_xsigo_hca(guid) || ibnd_is_xsigo_tca(guid))
  return 1;
 else
  return 0;
}
