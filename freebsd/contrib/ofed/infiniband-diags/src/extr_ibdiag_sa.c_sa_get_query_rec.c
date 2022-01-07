
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void uint8_t ;


 int IB_SA_ATTROFFS_F ;
 int IB_SA_DATA_OFFS ;
 int mad_get_field (void*,int ,int ) ;

void *sa_get_query_rec(void *mad, unsigned i)
{
 int offset = mad_get_field(mad, 0, IB_SA_ATTROFFS_F);
 return (uint8_t *) mad + IB_SA_DATA_OFFS + i * (offset << 3);
}
