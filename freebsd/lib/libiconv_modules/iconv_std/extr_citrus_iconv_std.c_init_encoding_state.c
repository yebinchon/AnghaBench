
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_iconv_std_encoding {scalar_t__ se_ps; int se_handle; } ;


 int _stdenc_init_state (int ,scalar_t__) ;

__attribute__((used)) static __inline void
init_encoding_state(struct _citrus_iconv_std_encoding *se)
{

 if (se->se_ps)
  _stdenc_init_state(se->se_handle, se->se_ps);
}
