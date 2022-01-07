
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct tom_h {scalar_t__ v; } ;


 struct tom_h const* ForCES_msg ;
 int TOM_MAX_IND ;
 size_t TOM_RSV_I ;

__attribute__((used)) static inline const struct tom_h *get_forces_tom(uint8_t tom)
{
 int i;
 for (i = TOM_RSV_I; i <= TOM_MAX_IND; i++) {
  const struct tom_h *th = &ForCES_msg[i];
  if (th->v == tom)
   return th;
 }
 return &ForCES_msg[TOM_RSV_I];
}
