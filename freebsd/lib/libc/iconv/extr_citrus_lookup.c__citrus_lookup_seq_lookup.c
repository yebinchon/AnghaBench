
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _region {int dummy; } ;
struct _citrus_lookup {int (* cl_lookup ) (struct _citrus_lookup*,char const*,struct _region*) ;} ;


 int stub1 (struct _citrus_lookup*,char const*,struct _region*) ;

int
_citrus_lookup_seq_lookup(struct _citrus_lookup *cl, const char *key,
    struct _region *data)
{

 return ((*cl->cl_lookup)(cl, key, data));
}
