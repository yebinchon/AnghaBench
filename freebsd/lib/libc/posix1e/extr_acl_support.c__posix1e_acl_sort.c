
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct acl_entry {int dummy; } ;
struct acl {int acl_cnt; int * acl_entry; } ;
typedef int compare ;
typedef TYPE_1__* acl_t ;
struct TYPE_3__ {struct acl ats_acl; } ;


 scalar_t__ _posix1e_acl_entry_compare ;
 int qsort (int *,int ,int,int ) ;

void
_posix1e_acl_sort(acl_t acl)
{
 struct acl *acl_int;

 acl_int = &acl->ats_acl;

 qsort(&acl_int->acl_entry[0], acl_int->acl_cnt,
     sizeof(struct acl_entry), (compare) _posix1e_acl_entry_compare);
}
