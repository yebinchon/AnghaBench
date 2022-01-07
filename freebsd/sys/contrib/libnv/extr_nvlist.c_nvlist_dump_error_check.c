
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int dprintf (int,char*,int,char*,scalar_t__) ;
 scalar_t__ nvlist_error (int const*) ;

__attribute__((used)) static bool
nvlist_dump_error_check(const nvlist_t *nvl, int fd, int level)
{

 if (nvlist_error(nvl) != 0) {
  dprintf(fd, "%*serror: %d\n", level * 4, "",
      nvlist_error(nvl));
  return (1);
 }

 return (0);
}
