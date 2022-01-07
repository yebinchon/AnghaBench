
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;


 int nvlist_lookup_nvpair_ei_sep (int *,char const*,char,int **,int*,char**) ;

int nvlist_lookup_nvpair_embedded_index(nvlist_t *nvl,
    const char *name, nvpair_t **ret, int *ip, char **ep)
{
 return (nvlist_lookup_nvpair_ei_sep(nvl, name, '.', ret, ip, ep));
}
