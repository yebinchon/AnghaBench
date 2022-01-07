
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adrep {scalar_t__ adrp_byteorder; int adrp_error; int adrp_seq; } ;


 scalar_t__ ADIST_BYTEORDER ;
 int bswap16 (int ) ;
 int bswap64 (int ) ;

__attribute__((used)) static void
adrep_decode_header(struct adrep *adrep)
{


 if (adrep->adrp_byteorder != ADIST_BYTEORDER) {
  adrep->adrp_byteorder = ADIST_BYTEORDER;
  adrep->adrp_seq = bswap64(adrep->adrp_seq);
  adrep->adrp_error = bswap16(adrep->adrp_error);
 }
}
