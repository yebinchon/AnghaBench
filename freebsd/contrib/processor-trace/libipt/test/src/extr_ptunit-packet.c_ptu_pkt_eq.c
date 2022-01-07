
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ptunit_result {int dummy; } ;
struct pt_packet {int dummy; } ;


 struct ptunit_result ptu_passed () ;
 int ptu_ptr (struct pt_packet const*) ;
 int ptu_uint_eq (int const,int const) ;

__attribute__((used)) static struct ptunit_result ptu_pkt_eq(const struct pt_packet *enc,
           const struct pt_packet *dec)
{
 const uint8_t *renc, *rdec;
 size_t byte;

 ptu_ptr(enc);
 ptu_ptr(dec);

 renc = (const uint8_t *) enc;
 rdec = (const uint8_t *) dec;

 for (byte = 0; byte < sizeof(*enc); ++byte)
  ptu_uint_eq(renc[byte], rdec[byte]);

 return ptu_passed();
}
