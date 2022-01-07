
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct forces_ilv {int length; } ;


 scalar_t__ EXTRACT_32BITS (int *) ;
 scalar_t__ F_ALN_LEN (scalar_t__) ;
 scalar_t__ ILV_HDRL ;
 int INVALID_ALEN ;
 int INVALID_LTLN ;
 int INVALID_RLEN ;
 int INVALID_STLN ;

__attribute__((used)) static inline int ilv_valid(const struct forces_ilv *ilv, u_int rlen)
{
 if (rlen < ILV_HDRL)
  return INVALID_RLEN;
 if (EXTRACT_32BITS(&ilv->length) < ILV_HDRL)
  return INVALID_STLN;
 if (EXTRACT_32BITS(&ilv->length) > rlen)
  return INVALID_LTLN;
 if (rlen < F_ALN_LEN(EXTRACT_32BITS(&ilv->length)))
  return INVALID_ALEN;

 return 0;
}
