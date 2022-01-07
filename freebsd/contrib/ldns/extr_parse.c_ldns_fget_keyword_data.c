
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int FILE ;


 int ldns_fget_keyword_data_l (int *,char const*,char const*,char*,char const*,size_t,int *) ;

ssize_t
ldns_fget_keyword_data(FILE *f, const char *keyword, const char *k_del, char *data,
               const char *d_del, size_t data_limit)
{
       return ldns_fget_keyword_data_l(f, keyword, k_del, data, d_del,
         data_limit, ((void*)0));
}
