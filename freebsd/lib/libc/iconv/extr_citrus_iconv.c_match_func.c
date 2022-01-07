
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_iconv_shared {int ci_convname; } ;


 int strcmp (int ,char const*) ;

__attribute__((used)) static __inline int
match_func(struct _citrus_iconv_shared * __restrict ci,
    const char * __restrict key)
{

 return (strcmp(ci->ci_convname, key));
}
