
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int * rtbl_t ;
typedef scalar_t__ gss_const_OID ;
struct TYPE_8__ {scalar_t__ value; scalar_t__ length; } ;
typedef TYPE_1__ gss_buffer_desc ;
typedef TYPE_2__* gss_OID_set ;
struct TYPE_9__ {size_t count; int * elements; } ;
typedef scalar_t__ OM_uint32 ;


 int COL_DESC ;
 int COL_OID ;
 int COL_VALUE ;
 int errx (int,char*) ;
 scalar_t__ gss_display_mech_attr (scalar_t__*,int *,TYPE_1__*,TYPE_1__*,int *) ;
 scalar_t__ gss_mo_get (scalar_t__,int *,TYPE_1__*) ;
 int gss_release_buffer (scalar_t__*,TYPE_1__*) ;
 int printf (char*,char const*) ;
 int rtbl_add_column (int *,int ,int ) ;
 int rtbl_add_column_entryv (int *,int ,char*,...) ;
 int * rtbl_create () ;
 int rtbl_destroy (int *) ;
 int rtbl_format (int *,int ) ;
 int rtbl_set_separator (int *,char*) ;
 int stdout ;

__attribute__((used)) static void
print_mech_attr(const char *mechname, gss_const_OID mech, gss_OID_set set)
{
    gss_buffer_desc name, desc;
    OM_uint32 major, minor;
    rtbl_t ct;
    size_t n;

    ct = rtbl_create();
    if (ct == ((void*)0))
 errx(1, "rtbl_create");

    rtbl_set_separator(ct, "  ");
    rtbl_add_column(ct, COL_OID, 0);
    rtbl_add_column(ct, COL_DESC, 0);
    if (mech)
 rtbl_add_column(ct, COL_VALUE, 0);

    for (n = 0; n < set->count; n++) {
 major = gss_display_mech_attr(&minor, &set->elements[n], &name, &desc, ((void*)0));
 if (major)
     continue;

 rtbl_add_column_entryv(ct, COL_OID, "%.*s",
          (int)name.length, (char *)name.value);
 rtbl_add_column_entryv(ct, COL_DESC, "%.*s",
          (int)desc.length, (char *)desc.value);
 if (mech) {
     gss_buffer_desc value;

     if (gss_mo_get(mech, &set->elements[n], &value) != 0)
  value.length = 0;

     if (value.length)
  rtbl_add_column_entryv(ct, COL_VALUE, "%.*s",
           (int)value.length, (char *)value.value);
     else
  rtbl_add_column_entryv(ct, COL_VALUE, "<>");
     gss_release_buffer(&minor, &value);
 }

 gss_release_buffer(&minor, &name);
 gss_release_buffer(&minor, &desc);
    }

    printf("attributes for: %s\n", mechname);
    rtbl_format(ct, stdout);
    rtbl_destroy(ct);
}
