
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDBFlags ;


 int int2HDBFlags (unsigned int) ;
 int parse_integer (unsigned int*,char const*) ;

__attribute__((used)) static int
parse_hdbflags2int(HDBFlags *f, const char *s)
{
    int ret;
    unsigned int tmp;

    ret = parse_integer (&tmp, s);
    if (ret == 1)
 *f = int2HDBFlags (tmp);
    return ret;
}
