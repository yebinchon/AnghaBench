
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef int FILE ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int RANDOM_ENTROPY_SIZE ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fwrite (char*,int,int,int *) ;
 int own_pool_ready ;
 int random_entropy_file ;
 scalar_t__ random_get_bytes (char*,int) ;
 int wpa_printf (int ,char*,int ,...) ;

__attribute__((used)) static void random_write_entropy(void)
{
 char buf[RANDOM_ENTROPY_SIZE];
 FILE *f;
 u8 opr;
 int fail = 0;

 if (!random_entropy_file)
  return;

 if (random_get_bytes(buf, RANDOM_ENTROPY_SIZE) < 0)
  return;

 f = fopen(random_entropy_file, "wb");
 if (f == ((void*)0)) {
  wpa_printf(MSG_ERROR, "random: Could not open entropy file %s "
      "for writing", random_entropy_file);
  return;
 }

 opr = own_pool_ready > 0xff ? 0xff : own_pool_ready;
 if (fwrite(&opr, 1, 1, f) != 1 ||
     fwrite(buf, RANDOM_ENTROPY_SIZE, 1, f) != 1)
  fail = 1;
 fclose(f);
 if (fail) {
  wpa_printf(MSG_ERROR, "random: Could not write entropy data "
      "to %s", random_entropy_file);
  return;
 }

 wpa_printf(MSG_DEBUG, "random: Updated entropy file %s "
     "(own_pool_ready=%u)",
     random_entropy_file, own_pool_ready);
}
