
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ len; int * val; } ;
typedef TYPE_4__ hx509_octet_string_list ;
typedef int hx509_context ;
typedef int hx509_cert ;
typedef int heim_oid ;
struct TYPE_15__ {size_t len; TYPE_3__* val; } ;
struct TYPE_11__ {int value; int type_id; } ;
struct TYPE_12__ {TYPE_1__ otherName; } ;
struct TYPE_13__ {scalar_t__ element; TYPE_2__ u; } ;
typedef TYPE_5__ GeneralNames ;


 int HX509_EXTENSION_NOT_FOUND ;
 int _hx509_get_cert (int ) ;
 int add_to_list (TYPE_4__*,int *) ;
 scalar_t__ choice_GeneralName_otherName ;
 scalar_t__ der_heim_oid_cmp (int *,int const*) ;
 int find_extension_subject_alt_name (int ,size_t*,TYPE_5__*) ;
 int free_GeneralNames (TYPE_5__*) ;
 int hx509_free_octet_string_list (TYPE_4__*) ;
 int hx509_set_error_string (int ,int ,int,char*) ;

int
hx509_cert_find_subjectAltName_otherName(hx509_context context,
      hx509_cert cert,
      const heim_oid *oid,
      hx509_octet_string_list *list)
{
    GeneralNames sa;
    int ret;
    size_t i, j;

    list->val = ((void*)0);
    list->len = 0;

    i = 0;
    while (1) {
 ret = find_extension_subject_alt_name(_hx509_get_cert(cert), &i, &sa);
 i++;
 if (ret == HX509_EXTENSION_NOT_FOUND) {
     return 0;
 } else if (ret != 0) {
     hx509_set_error_string(context, 0, ret, "Error searching for SAN");
     hx509_free_octet_string_list(list);
     return ret;
 }

 for (j = 0; j < sa.len; j++) {
     if (sa.val[j].element == choice_GeneralName_otherName &&
  der_heim_oid_cmp(&sa.val[j].u.otherName.type_id, oid) == 0)
     {
  ret = add_to_list(list, &sa.val[j].u.otherName.value);
  if (ret) {
      hx509_set_error_string(context, 0, ret,
        "Error adding an exra SAN to "
        "return list");
      hx509_free_octet_string_list(list);
      free_GeneralNames(&sa);
      return ret;
  }
     }
 }
 free_GeneralNames(&sa);
    }
}
