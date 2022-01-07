
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;


 int G_ELI_SUFFIX ;
 int MAXPATHLEN ;
 scalar_t__ g_get_sectorsize (char*) ;
 int snprintf (char*,int,char*,char const*,int ) ;

__attribute__((used)) static bool
eli_is_attached(const char *prov)
{
 char name[MAXPATHLEN];






 snprintf(name, sizeof(name), "%s%s", prov, G_ELI_SUFFIX);
 return (g_get_sectorsize(name) > 0);
}
