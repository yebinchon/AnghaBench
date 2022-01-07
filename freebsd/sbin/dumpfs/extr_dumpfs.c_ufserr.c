
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * d_error; } ;


 TYPE_1__ disk ;
 scalar_t__ errno ;
 int warn (char*,char const*) ;
 int warnx (char*,char const*,int *) ;

__attribute__((used)) static void
ufserr(const char *name)
{
 if (disk.d_error != ((void*)0))
  warnx("%s: %s", name, disk.d_error);
 else if (errno)
  warn("%s", name);
}
