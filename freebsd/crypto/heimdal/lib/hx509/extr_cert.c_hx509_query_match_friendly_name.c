
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int match; int * friendlyname; } ;
typedef TYPE_1__ hx509_query ;


 int ENOMEM ;
 int HX509_QUERY_MATCH_FRIENDLY_NAME ;
 int free (int *) ;
 int * strdup (char const*) ;

int
hx509_query_match_friendly_name(hx509_query *q, const char *name)
{
    if (q->friendlyname)
 free(q->friendlyname);
    q->friendlyname = strdup(name);
    if (q->friendlyname == ((void*)0))
 return ENOMEM;
    q->match |= HX509_QUERY_MATCH_FRIENDLY_NAME;
    return 0;
}
