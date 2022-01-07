
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int _rrs; } ;
typedef TYPE_1__ ldns_rr_list ;
typedef int ldns_rr ;


 int ldns_rr_list_rr_count (TYPE_1__*) ;
 int qsort (int ,int ,int,int ) ;
 int qsort_rr_compare_nsec3 ;

void
ldns_rr_list_sort_nsec3(ldns_rr_list *unsorted)
{
 qsort(unsorted->_rrs,
       ldns_rr_list_rr_count(unsorted),
       sizeof(ldns_rr *),
       qsort_rr_compare_nsec3);
}
