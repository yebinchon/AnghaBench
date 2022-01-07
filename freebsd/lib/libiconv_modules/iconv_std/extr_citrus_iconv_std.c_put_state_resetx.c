
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_iconv_std_encoding {int se_ps; int se_handle; } ;


 int _stdenc_put_state_reset (int ,char*,size_t,int ,size_t*) ;

__attribute__((used)) static __inline int
put_state_resetx(struct _citrus_iconv_std_encoding *se, char *s, size_t n,
    size_t *nresult)
{

 return (_stdenc_put_state_reset(se->se_handle, s, n, se->se_ps, nresult));
}
