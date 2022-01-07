
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_context ;
typedef int heim_bit_string ;


 int HX509_EXTENSION_NOT_FOUND ;
 int der_copy_bit_string (int const*,int *) ;
 int hx509_set_error_string (int ,int ,int,char*,char const*) ;

__attribute__((used)) static int
get_x_unique_id(hx509_context context, const char *name,
  const heim_bit_string *cert, heim_bit_string *subject)
{
    int ret;

    if (cert == ((void*)0)) {
 ret = HX509_EXTENSION_NOT_FOUND;
 hx509_set_error_string(context, 0, ret, "%s unique id doesn't exists", name);
 return ret;
    }
    ret = der_copy_bit_string(cert, subject);
    if (ret) {
 hx509_set_error_string(context, 0, ret, "malloc out of memory", name);
 return ret;
    }
    return 0;
}
