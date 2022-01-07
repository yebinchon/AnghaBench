
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rk_strpool {int dummy; } ;
struct TYPE_3__ {size_t length; char* components; } ;
typedef TYPE_1__ heim_oid ;


 int EINVAL ;
 int ENOMEM ;
 char* rk_strpoolcollect (struct rk_strpool*) ;
 struct rk_strpool* rk_strpoolprintf (struct rk_strpool*,char*,char) ;

int
der_print_heim_oid (const heim_oid *oid, char delim, char **str)
{
    struct rk_strpool *p = ((void*)0);
    size_t i;

    if (oid->length == 0)
 return EINVAL;

    for (i = 0; i < oid->length ; i++) {
 p = rk_strpoolprintf(p, "%d", oid->components[i]);
 if (p && i < oid->length - 1)
     p = rk_strpoolprintf(p, "%c", delim);
 if (p == ((void*)0)) {
     *str = ((void*)0);
     return ENOMEM;
 }
    }

    *str = rk_strpoolcollect(p);
    if (*str == ((void*)0))
 return ENOMEM;
    return 0;
}
