
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
struct TYPE_4__ {int rs_have; } ;
struct TYPE_3__ {int * rs_buf; } ;


 int _rs_rekey (int *,int ) ;
 int _rs_stir_if_needed (int) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 TYPE_2__* rs ;
 TYPE_1__* rsx ;

__attribute__((used)) static inline void
_rs_random_u32(uint32_t *val)
{
 u_char *keystream;

 _rs_stir_if_needed(sizeof(*val));
 if (rs->rs_have < sizeof(*val))
  _rs_rekey(((void*)0), 0);
 keystream = rsx->rs_buf + sizeof(rsx->rs_buf) - rs->rs_have;
 memcpy(val, keystream, sizeof(*val));
 memset(keystream, 0, sizeof(*val));
 rs->rs_have -= sizeof(*val);
}
