
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;
struct TYPE_4__ {TYPE_1__ generic; } ;
struct _stdenc_state_desc {TYPE_2__ u; } ;
struct _citrus_iconv_std_encoding {int se_ps; int se_handle; } ;


 int _STDENC_SDID_GENERIC ;
 int _stdenc_get_state_desc (int ,int ,int ,struct _stdenc_state_desc*) ;

__attribute__((used)) static __inline int
get_state_desc_gen(struct _citrus_iconv_std_encoding *se, int *rstate)
{
 struct _stdenc_state_desc ssd;
 int ret;

 ret = _stdenc_get_state_desc(se->se_handle, se->se_ps,
     _STDENC_SDID_GENERIC, &ssd);
 if (!ret)
  *rstate = ssd.u.generic.state;

 return (ret);
}
