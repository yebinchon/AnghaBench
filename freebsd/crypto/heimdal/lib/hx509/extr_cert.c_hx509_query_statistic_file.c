
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hx509_context ;
struct TYPE_3__ {scalar_t__ querystat; } ;


 int free (scalar_t__) ;
 scalar_t__ strdup (char const*) ;

void
hx509_query_statistic_file(hx509_context context, const char *fn)
{
    if (context->querystat)
 free(context->querystat);
    context->querystat = strdup(fn);
}
