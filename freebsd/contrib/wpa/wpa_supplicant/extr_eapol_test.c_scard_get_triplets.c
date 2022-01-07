
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scard_data {int dummy; } ;
struct eapol_test_data {int pcsc_reader; } ;
typedef int imsi ;
typedef int _rand ;


 int MSG_WARNING ;
 int atoi (char*) ;
 int os_memset (unsigned char*,int,int) ;
 scalar_t__ os_strcmp (char*,char*) ;
 int printf (char*,...) ;
 int scard_deinit (struct scard_data*) ;
 scalar_t__ scard_get_imsi (struct scard_data*,char*,size_t*) ;
 scalar_t__ scard_gsm_auth (struct scard_data*,unsigned char*,unsigned char*,unsigned char*) ;
 struct scard_data* scard_init (int ) ;
 scalar_t__ scard_set_pin (struct scard_data*,char*) ;
 int wpa_debug_level ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int scard_get_triplets(struct eapol_test_data *e, int argc, char *argv[])
{
 struct scard_data *scard;
 size_t len;
 char imsi[20];
 unsigned char _rand[16];
 unsigned char sres[4];
 unsigned char kc[8];
 int num_triplets;
 int i;
 size_t j;

 if (argc < 2 || ((num_triplets = atoi(argv[1])) <= 0)) {
  printf("invalid parameters for sim command\n");
  return -1;
 }

 if (argc <= 2 || os_strcmp(argv[2], "debug") != 0) {

  wpa_debug_level = 99;
 }

 scard = scard_init(e->pcsc_reader);
 if (scard == ((void*)0)) {
  printf("Failed to open smartcard connection\n");
  return -1;
 }
 if (scard_set_pin(scard, argv[0])) {
  wpa_printf(MSG_WARNING, "PIN validation failed");
  scard_deinit(scard);
  return -1;
 }

 len = sizeof(imsi);
 if (scard_get_imsi(scard, imsi, &len)) {
  scard_deinit(scard);
  return -1;
 }

 for (i = 0; i < num_triplets; i++) {
  os_memset(_rand, i, sizeof(_rand));
  if (scard_gsm_auth(scard, _rand, sres, kc))
   break;


  for (j = 0; j < len; j++)
   printf("%c", imsi[j]);
  printf(":");
  for (j = 0; j < 8; j++)
   printf("%02X", kc[j]);
  printf(":");
  for (j = 0; j < 4; j++)
   printf("%02X", sres[j]);
  printf(":");
  for (j = 0; j < 16; j++)
   printf("%02X", _rand[j]);
  printf("\n");
 }

 scard_deinit(scard);

 return 0;
}
