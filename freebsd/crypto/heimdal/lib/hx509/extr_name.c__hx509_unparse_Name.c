
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_name ;
typedef int Name ;


 int _hx509_name_from_Name (int const*,int *) ;
 int hx509_name_free (int *) ;
 int hx509_name_to_string (int ,char**) ;

int
_hx509_unparse_Name(const Name *aname, char **str)
{
    hx509_name name;
    int ret;

    ret = _hx509_name_from_Name(aname, &name);
    if (ret)
 return ret;

    ret = hx509_name_to_string(name, str);
    hx509_name_free(&name);
    return ret;
}
