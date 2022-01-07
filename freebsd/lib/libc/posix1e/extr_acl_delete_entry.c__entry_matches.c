
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* acl_entry_t ;
struct TYPE_5__ {int ae_id; int ae_tag; int ae_entry_type; } ;



 int ACL_GROUP ;
 int ACL_USER ;
 int _entry_brand (TYPE_1__* const) ;

__attribute__((used)) static int
_entry_matches(const acl_entry_t a, const acl_entry_t b)
{






 switch (_entry_brand(a)) {
 case 128:
  if (a->ae_tag != b->ae_tag || a->ae_entry_type != b->ae_entry_type)
   return (0);


  if (a->ae_tag == ACL_USER || a->ae_tag == ACL_GROUP) {
   if (a->ae_id != b->ae_id)
    return (0);
  }

  return (1);

 default:
  if ((a->ae_tag == b->ae_tag) && (a->ae_id == b->ae_id))
   return (1);
 }

 return (0);
}
