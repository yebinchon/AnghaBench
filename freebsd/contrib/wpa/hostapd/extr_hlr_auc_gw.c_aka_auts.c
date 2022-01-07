
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct milenage_parameters {int sqn; int ki; int opc; } ;


 int EAP_AKA_AUTS_LEN ;
 int EAP_AKA_RAND_LEN ;
 int db_update_milenage_sqn (struct milenage_parameters*) ;
 struct milenage_parameters* get_milenage (char*) ;
 scalar_t__ hexstr2bin (char*,int*,int) ;
 int memcpy (int ,int*,int) ;
 scalar_t__ milenage_auts (int ,int ,int*,int*,int*) ;
 int printf (char*,...) ;
 int sqn_changes ;
 scalar_t__ stdout_debug ;
 char* strchr (char*,char) ;

__attribute__((used)) static int aka_auts(char *imsi, char *resp, size_t resp_len)
{
 char *auts, *__rand;
 u8 _auts[EAP_AKA_AUTS_LEN], _rand[EAP_AKA_RAND_LEN], sqn[6];
 struct milenage_parameters *m;

 resp[0] = '\0';



 auts = strchr(imsi, ' ');
 if (auts == ((void*)0))
  return -1;
 *auts++ = '\0';

 __rand = strchr(auts, ' ');
 if (__rand == ((void*)0))
  return -1;
 *__rand++ = '\0';

 if (stdout_debug) {
  printf("AKA-AUTS: IMSI=%s AUTS=%s RAND=%s\n",
         imsi, auts, __rand);
 }
 if (hexstr2bin(auts, _auts, EAP_AKA_AUTS_LEN) ||
     hexstr2bin(__rand, _rand, EAP_AKA_RAND_LEN)) {
  printf("Could not parse AUTS/RAND\n");
  return -1;
 }

 m = get_milenage(imsi);
 if (m == ((void*)0)) {
  printf("Unknown IMSI: %s\n", imsi);
  return -1;
 }

 if (milenage_auts(m->opc, m->ki, _rand, _auts, sqn)) {
  printf("AKA-AUTS: Incorrect MAC-S\n");
 } else {
  memcpy(m->sqn, sqn, 6);
  if (stdout_debug) {
   printf("AKA-AUTS: Re-synchronized: "
          "SQN=%02x%02x%02x%02x%02x%02x\n",
          sqn[0], sqn[1], sqn[2], sqn[3], sqn[4], sqn[5]);
  }



  sqn_changes = 1;
 }

 return 0;
}
