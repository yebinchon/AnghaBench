
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct section_fixture {int file; } ;
struct ptunit_result {int dummy; } ;


 int fflush (int ) ;
 size_t fwrite (int const*,int,size_t,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (size_t,size_t) ;

__attribute__((used)) static struct ptunit_result sfix_write_aux(struct section_fixture *sfix,
        const uint8_t *buffer, size_t size)
{
 size_t written;

 written = fwrite(buffer, 1, size, sfix->file);
 ptu_uint_eq(written, size);

 fflush(sfix->file);

 return ptu_passed();
}
