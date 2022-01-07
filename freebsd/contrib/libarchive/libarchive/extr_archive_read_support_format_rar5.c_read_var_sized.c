
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct archive_read {int dummy; } ;


 int read_var (struct archive_read*,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int read_var_sized(struct archive_read* a, size_t* pvalue,
    size_t* pvalue_len)
{
 uint64_t v;
 uint64_t v_size = 0;

 const int ret = pvalue_len ? read_var(a, &v, &v_size)
       : read_var(a, &v, ((void*)0));

 if(ret == 1 && pvalue) {
  *pvalue = (size_t) v;
 }

 if(pvalue_len) {

  *pvalue_len = (size_t) v_size;
 }

 return ret;
}
