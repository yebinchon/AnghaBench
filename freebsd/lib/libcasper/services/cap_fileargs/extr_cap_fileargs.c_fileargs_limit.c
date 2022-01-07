
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef scalar_t__ mode_t ;


 int ENOTCAPABLE ;
 int O_CREAT ;
 int allowed_operations ;
 int capflags ;
 scalar_t__ capmode ;
 int caprightsp ;
 int dnvlist_get_binary (int const*,char*,int *,int *,int ) ;
 scalar_t__ dnvlist_get_number (int const*,char*,int ) ;
 scalar_t__ nvlist_get_number (int const*,char*) ;

__attribute__((used)) static int
fileargs_limit(const nvlist_t *oldlimits, const nvlist_t *newlimits)
{

 if (oldlimits != ((void*)0))
  return (ENOTCAPABLE);

 capflags = (int)dnvlist_get_number(newlimits, "flags", 0);
 allowed_operations = (int)dnvlist_get_number(newlimits, "operations", 0);
 if ((capflags & O_CREAT) != 0)
  capmode = (mode_t)nvlist_get_number(newlimits, "mode");
 else
  capmode = 0;

 caprightsp = dnvlist_get_binary(newlimits, "cap_rights", ((void*)0), ((void*)0), 0);

 return (0);
}
