
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_info {int * qname; } ;


 int free (int *) ;

void
query_info_clear(struct query_info* m)
{
 free(m->qname);
 m->qname = ((void*)0);
}
