
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iconv_hooks {int dummy; } ;
struct _citrus_iconv_std_encoding {int se_ps; int se_handle; } ;
typedef int _index_t ;
typedef int _csid_t ;


 int _stdenc_cstomb (int ,char*,size_t,int ,int ,int ,size_t*,struct iconv_hooks*) ;

__attribute__((used)) static __inline int
cstombx(struct _citrus_iconv_std_encoding *se,
    char *s, size_t n, _csid_t csid, _index_t idx, size_t *nresult,
    struct iconv_hooks *hooks)
{

 return (_stdenc_cstomb(se->se_handle, s, n, csid, idx, se->se_ps,
         nresult, hooks));
}
