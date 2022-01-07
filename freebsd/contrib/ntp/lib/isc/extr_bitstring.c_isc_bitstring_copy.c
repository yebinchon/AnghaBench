
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ lsb0; unsigned int length; unsigned int size; } ;
typedef TYPE_1__ isc_bitstring_t ;


 scalar_t__ BITSET (TYPE_1__*,unsigned int) ;
 int CLEARBIT (TYPE_1__*,unsigned int) ;
 unsigned int PADDED (unsigned int) ;
 int REQUIRE (int) ;
 int SETBIT (TYPE_1__*,unsigned int) ;
 int VALID_BITSTRING (TYPE_1__*) ;

void
isc_bitstring_copy(isc_bitstring_t *source, unsigned int sbitpos,
     isc_bitstring_t *target, unsigned int tbitpos,
     unsigned int n)
{
 unsigned int tlast;






 REQUIRE(VALID_BITSTRING(source));
 REQUIRE(VALID_BITSTRING(target));
 REQUIRE(source->lsb0 == target->lsb0);
 if (source->lsb0) {
  REQUIRE(sbitpos <= source->length);
  sbitpos = PADDED(source->size) - sbitpos;
  REQUIRE(sbitpos >= n);
  sbitpos -= n;
 } else
  REQUIRE(sbitpos + n <= source->length);
 tlast = tbitpos + n;
 if (target->lsb0) {
  REQUIRE(tbitpos <= target->length);
  tbitpos = PADDED(target->size) - tbitpos;
  REQUIRE(tbitpos >= n);
  tbitpos -= n;
 } else
  REQUIRE(tlast <= target->size);

 if (tlast > target->length)
  target->length = tlast;





 while (n > 0) {
  if (BITSET(source, sbitpos))
   SETBIT(target, tbitpos);
  else
   CLEARBIT(target, tbitpos);
  sbitpos++;
  tbitpos++;
  n--;
 }
}
