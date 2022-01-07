
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASN1_TIME_set_string (int *,char const*) ;

__attribute__((used)) static int check_time_format(const char *str)
{
    return ASN1_TIME_set_string(((void*)0), str);
}
