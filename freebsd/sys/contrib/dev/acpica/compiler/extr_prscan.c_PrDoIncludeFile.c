
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PrOpenIncludeFile (char*,char*,char**) ;

__attribute__((used)) static void
PrDoIncludeFile (
    char *Pathname)
{
    char *FullPathname;


    (void) PrOpenIncludeFile (Pathname, "r", &FullPathname);
}
