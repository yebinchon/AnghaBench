
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Name ;


 int _hx509_Name_to_string (int *,char**) ;
 int decode_Name (void const*,size_t,int *,int *) ;
 int free_Name (int *) ;

int
hx509_unparse_der_name(const void *data, size_t length, char **str)
{
    Name name;
    int ret;

    *str = ((void*)0);

    ret = decode_Name(data, length, &name, ((void*)0));
    if (ret)
 return ret;
    ret = _hx509_Name_to_string(&name, str);
    free_Name(&name);
    return ret;
}
