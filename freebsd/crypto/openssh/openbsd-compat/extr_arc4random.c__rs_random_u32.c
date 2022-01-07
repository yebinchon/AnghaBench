
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 scalar_t__ RSBUFSZ ;
 int _rs_rekey (int *,int ) ;
 int _rs_stir_if_needed (int) ;
 int memcpy (int *,scalar_t__,int) ;
 int memset (scalar_t__,int ,int) ;
 scalar_t__ rs_buf ;
 int rs_have ;

__attribute__((used)) static inline void
_rs_random_u32(u_int32_t *val)
{
 _rs_stir_if_needed(sizeof(*val));
 if (rs_have < sizeof(*val))
  _rs_rekey(((void*)0), 0);
 memcpy(val, rs_buf + RSBUFSZ - rs_have, sizeof(*val));
 memset(rs_buf + RSBUFSZ - rs_have, 0, sizeof(*val));
 rs_have -= sizeof(*val);
 return;
}
