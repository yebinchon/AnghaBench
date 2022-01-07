
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int canonicalize_max_dots; int canonicalize_fallback_local; int canonicalize_hostname; } ;
typedef TYPE_1__ Options ;


 int SSH_CANONICALISE_NO ;

void
fill_default_options_for_canonicalization(Options *options)
{
 if (options->canonicalize_max_dots == -1)
  options->canonicalize_max_dots = 1;
 if (options->canonicalize_fallback_local == -1)
  options->canonicalize_fallback_local = 1;
 if (options->canonicalize_hostname == -1)
  options->canonicalize_hostname = SSH_CANONICALISE_NO;
}
