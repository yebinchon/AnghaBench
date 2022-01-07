
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_iconv_std_encoding {int se_handle; int se_pssaved; scalar_t__ se_ps; } ;


 int _stdenc_get_state_size (int ) ;
 int memcpy (scalar_t__,int ,int ) ;

__attribute__((used)) static __inline void
restore_encoding_state(struct _citrus_iconv_std_encoding *se)
{

 if (se->se_ps)
  memcpy(se->se_ps, se->se_pssaved,
      _stdenc_get_state_size(se->se_handle));
}
