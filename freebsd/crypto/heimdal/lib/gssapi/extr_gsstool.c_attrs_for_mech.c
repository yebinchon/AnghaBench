
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attrs_for_mech_options {char* mech_string; scalar_t__ all_flag; } ;
typedef int * gss_OID_set ;
typedef int * gss_OID ;
typedef scalar_t__ OM_uint32 ;


 int * GSS_C_NO_OID ;
 int errx (int,char*,...) ;
 scalar_t__ gss_inquire_attrs_for_mech (scalar_t__*,int *,int **,int **) ;
 int * gss_name_to_oid (char*) ;
 int gss_release_oid_set (scalar_t__*,int **) ;
 int print_mech_attr (char*,int *,int *) ;

int
attrs_for_mech(struct attrs_for_mech_options *opt, int argc, char **argv)
{
    gss_OID_set mech_attr = ((void*)0), known_mech_attrs = ((void*)0);
    gss_OID mech = GSS_C_NO_OID;
    OM_uint32 major, minor;

    if (opt->mech_string) {
 mech = gss_name_to_oid(opt->mech_string);
 if (mech == ((void*)0))
     errx(1, "mech %s is unknown", opt->mech_string);
    }

    major = gss_inquire_attrs_for_mech(&minor, mech, &mech_attr, &known_mech_attrs);
    if (major)
 errx(1, "gss_inquire_attrs_for_mech");

    if (mech) {
 print_mech_attr(opt->mech_string, mech, mech_attr);
    }

    if (opt->all_flag) {
 print_mech_attr("all mechs", ((void*)0), known_mech_attrs);
    }

    gss_release_oid_set(&minor, &mech_attr);
    gss_release_oid_set(&minor, &known_mech_attrs);

    return 0;
}
