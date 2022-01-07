
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int der_get_generalized_time (unsigned char const*,int ,int *,size_t*) ;
 int strlen (char const*) ;

__attribute__((used)) static int
corner_generalized_time(void)
{
    const char *str = "760520140000Z";
    size_t size;
    time_t t;
    int ret;

    ret = der_get_generalized_time((const unsigned char*)str, strlen(str),
       &t, &size);
    if (ret)
 return 1;
    return 0;
}
