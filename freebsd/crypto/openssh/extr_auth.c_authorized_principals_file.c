
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct passwd {int dummy; } ;
struct TYPE_2__ {int * authorized_principals_file; } ;


 char* expand_authorized_keys (int *,struct passwd*) ;
 TYPE_1__ options ;

char *
authorized_principals_file(struct passwd *pw)
{
 if (options.authorized_principals_file == ((void*)0))
  return ((void*)0);
 return expand_authorized_keys(options.authorized_principals_file, pw);
}
