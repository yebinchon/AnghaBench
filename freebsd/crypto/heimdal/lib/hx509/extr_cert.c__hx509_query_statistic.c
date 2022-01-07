
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int match; } ;
typedef TYPE_1__ hx509_query ;
typedef TYPE_2__* hx509_context ;
struct TYPE_6__ {int * querystat; } ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (int *,char*) ;
 int fprintf (int *,char*,int,int) ;
 int rk_cloexec_file (int *) ;

void
_hx509_query_statistic(hx509_context context, int type, const hx509_query *q)
{
    FILE *f;
    if (context->querystat == ((void*)0))
 return;
    f = fopen(context->querystat, "a");
    if (f == ((void*)0))
 return;
    rk_cloexec_file(f);
    fprintf(f, "%d %d\n", type, q->match);
    fclose(f);
}
