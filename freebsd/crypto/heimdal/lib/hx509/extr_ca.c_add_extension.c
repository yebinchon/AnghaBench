
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int hx509_context ;
typedef int heim_oid ;
typedef int heim_octet_string ;
typedef int ext ;
struct TYPE_8__ {int extnValue; int extnID; int * critical; } ;
struct TYPE_7__ {int extensions; } ;
typedef TYPE_1__ TBSCertificate ;
typedef TYPE_2__ Extension ;


 int ENOMEM ;
 int TRUE ;
 int add_Extensions (int ,TYPE_2__*) ;
 int der_copy_octet_string (int const*,int *) ;
 int der_copy_oid (int const*,int *) ;
 int free_Extension (TYPE_2__*) ;
 int hx509_set_error_string (int ,int ,int,char*) ;
 int * malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static int
add_extension(hx509_context context,
       TBSCertificate *tbsc,
       int critical_flag,
       const heim_oid *oid,
       const heim_octet_string *data)
{
    Extension ext;
    int ret;

    memset(&ext, 0, sizeof(ext));

    if (critical_flag) {
 ext.critical = malloc(sizeof(*ext.critical));
 if (ext.critical == ((void*)0)) {
     ret = ENOMEM;
     hx509_set_error_string(context, 0, ret, "Out of memory");
     goto out;
 }
 *ext.critical = TRUE;
    }

    ret = der_copy_oid(oid, &ext.extnID);
    if (ret) {
 hx509_set_error_string(context, 0, ret, "Out of memory");
 goto out;
    }
    ret = der_copy_octet_string(data, &ext.extnValue);
    if (ret) {
 hx509_set_error_string(context, 0, ret, "Out of memory");
 goto out;
    }
    ret = add_Extensions(tbsc->extensions, &ext);
    if (ret) {
 hx509_set_error_string(context, 0, ret, "Out of memory");
 goto out;
    }
out:
    free_Extension(&ext);
    return ret;
}
