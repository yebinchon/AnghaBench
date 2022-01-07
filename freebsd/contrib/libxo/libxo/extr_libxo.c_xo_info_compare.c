
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xi_name; } ;
typedef TYPE_1__ xo_info_t ;


 int strcmp (char const*,int ) ;

__attribute__((used)) static int
xo_info_compare (const void *key, const void *data)
{
    const char *name = key;
    const xo_info_t *xip = data;

    return strcmp(name, xip->xi_name);
}
