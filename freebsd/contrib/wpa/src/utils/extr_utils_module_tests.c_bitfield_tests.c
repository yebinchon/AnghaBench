
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitfield {int dummy; } ;


 int MSG_ERROR ;
 int MSG_INFO ;
 struct bitfield* bitfield_alloc (int) ;
 int bitfield_clear (struct bitfield*,int) ;
 int bitfield_free (struct bitfield*) ;
 int bitfield_get_first_zero (struct bitfield*) ;
 scalar_t__ bitfield_is_set (struct bitfield*,int) ;
 int bitfield_set (struct bitfield*,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int bitfield_tests(void)
{
 struct bitfield *bf;
 int i;
 int errors = 0;

 wpa_printf(MSG_INFO, "bitfield tests");

 bf = bitfield_alloc(123);
 if (bf == ((void*)0))
  return -1;

 for (i = 0; i < 123; i++) {
  if (bitfield_is_set(bf, i) || bitfield_is_set(bf, i + 1))
   errors++;
  if (i > 0 && bitfield_is_set(bf, i - 1))
   errors++;
  bitfield_set(bf, i);
  if (!bitfield_is_set(bf, i))
   errors++;
  bitfield_clear(bf, i);
  if (bitfield_is_set(bf, i))
   errors++;
 }

 for (i = 123; i < 200; i++) {
  if (bitfield_is_set(bf, i) || bitfield_is_set(bf, i + 1))
   errors++;
  if (i > 0 && bitfield_is_set(bf, i - 1))
   errors++;
  bitfield_set(bf, i);
  if (bitfield_is_set(bf, i))
   errors++;
  bitfield_clear(bf, i);
  if (bitfield_is_set(bf, i))
   errors++;
 }

 for (i = 0; i < 123; i++) {
  if (bitfield_is_set(bf, i) || bitfield_is_set(bf, i + 1))
   errors++;
  bitfield_set(bf, i);
  if (!bitfield_is_set(bf, i))
   errors++;
 }

 for (i = 0; i < 123; i++) {
  if (!bitfield_is_set(bf, i))
   errors++;
  bitfield_clear(bf, i);
  if (bitfield_is_set(bf, i))
   errors++;
 }

 for (i = 0; i < 123; i++) {
  if (bitfield_get_first_zero(bf) != i)
   errors++;
  bitfield_set(bf, i);
 }
 if (bitfield_get_first_zero(bf) != -1)
  errors++;
 for (i = 0; i < 123; i++) {
  if (!bitfield_is_set(bf, i))
   errors++;
  bitfield_clear(bf, i);
  if (bitfield_get_first_zero(bf) != i)
   errors++;
  bitfield_set(bf, i);
 }
 if (bitfield_get_first_zero(bf) != -1)
  errors++;

 bitfield_free(bf);

 bf = bitfield_alloc(8);
 if (bf == ((void*)0))
  return -1;
 if (bitfield_get_first_zero(bf) != 0)
  errors++;
 for (i = 0; i < 8; i++)
  bitfield_set(bf, i);
 if (bitfield_get_first_zero(bf) != -1)
  errors++;
 bitfield_free(bf);

 if (errors) {
  wpa_printf(MSG_ERROR, "%d bitfield test(s) failed", errors);
  return -1;
 }

 return 0;
}
