
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _stdenc {int dummy; } ;
struct _citrus_iconv_std_encoding {void* se_pssaved; void* se_ps; struct _stdenc* se_handle; } ;


 int _stdenc_init_state (struct _stdenc*,void*) ;

__attribute__((used)) static int
init_encoding(struct _citrus_iconv_std_encoding *se, struct _stdenc *cs,
    void *ps1, void *ps2)
{
 int ret = -1;

 se->se_handle = cs;
 se->se_ps = ps1;
 se->se_pssaved = ps2;

 if (se->se_ps)
  ret = _stdenc_init_state(cs, se->se_ps);
 if (!ret && se->se_pssaved)
  ret = _stdenc_init_state(cs, se->se_pssaved);

 return (ret);
}
