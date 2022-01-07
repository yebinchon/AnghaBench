
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;


 int dname_count_labels (int *) ;
 int * dname_get_shared_topdomain (int *,int ) ;
 int dname_remove_labels (int **,size_t*,int) ;

__attribute__((used)) static void
dlv_topdomain(struct ub_packed_rrset_key* nsec, uint8_t* qname,
 uint8_t** nm, size_t* nm_len)
{
 int n;
 uint8_t* common = dname_get_shared_topdomain(qname, nsec->rk.dname);
 n = dname_count_labels(*nm) - dname_count_labels(common);
 dname_remove_labels(nm, nm_len, n);
}
