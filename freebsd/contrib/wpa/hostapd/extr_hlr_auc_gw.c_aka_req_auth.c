
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct milenage_parameters {int* sqn; int res_len; int ki; int amf; int opc; } ;


 int EAP_AKA_AUTN_LEN ;
 int EAP_AKA_CK_LEN ;
 int EAP_AKA_IK_LEN ;
 int EAP_AKA_RAND_LEN ;
 int EAP_AKA_RES_MAX_LEN ;
 int EAP_AKA_RES_MIN_LEN ;
 int db_update_milenage_sqn (struct milenage_parameters*) ;
 struct milenage_parameters* get_milenage (char*) ;
 int inc_sqn (int*) ;
 int memset (int *,char,int) ;
 int milenage_generate (int ,int ,int ,int*,int *,int *,int *,int *,int *,size_t*) ;
 int printf (char*,...) ;
 scalar_t__ random_get_bytes (int *,int) ;
 int snprintf (char*,int,char*,...) ;
 int sqn_changes ;
 scalar_t__ stdout_debug ;
 int wpa_snprintf_hex (char*,int,int *,size_t) ;

__attribute__((used)) static int aka_req_auth(char *imsi, char *resp, size_t resp_len)
{

 char *pos, *end;
 u8 _rand[EAP_AKA_RAND_LEN];
 u8 autn[EAP_AKA_AUTN_LEN];
 u8 ik[EAP_AKA_IK_LEN];
 u8 ck[EAP_AKA_CK_LEN];
 u8 res[EAP_AKA_RES_MAX_LEN];
 size_t res_len;
 int ret;
 struct milenage_parameters *m;
 int failed = 0;

 m = get_milenage(imsi);
 if (m) {
  if (random_get_bytes(_rand, EAP_AKA_RAND_LEN) < 0)
   return -1;
  res_len = EAP_AKA_RES_MAX_LEN;
  inc_sqn(m->sqn);



  sqn_changes = 1;
  if (stdout_debug) {
   printf("AKA: Milenage with SQN=%02x%02x%02x%02x%02x%02x\n",
          m->sqn[0], m->sqn[1], m->sqn[2],
          m->sqn[3], m->sqn[4], m->sqn[5]);
  }
  milenage_generate(m->opc, m->amf, m->ki, m->sqn, _rand,
      autn, ik, ck, res, &res_len);
  if (m->res_len >= EAP_AKA_RES_MIN_LEN &&
      m->res_len <= EAP_AKA_RES_MAX_LEN &&
      m->res_len < res_len)
   res_len = m->res_len;
 } else {
  printf("Unknown IMSI: %s\n", imsi);
  failed = 1;

 }

 pos = resp;
 end = resp + resp_len;
 ret = snprintf(pos, end - pos, "AKA-RESP-AUTH %s ", imsi);
 if (ret < 0 || ret >= end - pos)
  return -1;
 pos += ret;
 if (failed) {
  ret = snprintf(pos, end - pos, "FAILURE");
  if (ret < 0 || ret >= end - pos)
   return -1;
  pos += ret;
  return 0;
 }
 pos += wpa_snprintf_hex(pos, end - pos, _rand, EAP_AKA_RAND_LEN);
 *pos++ = ' ';
 pos += wpa_snprintf_hex(pos, end - pos, autn, EAP_AKA_AUTN_LEN);
 *pos++ = ' ';
 pos += wpa_snprintf_hex(pos, end - pos, ik, EAP_AKA_IK_LEN);
 *pos++ = ' ';
 pos += wpa_snprintf_hex(pos, end - pos, ck, EAP_AKA_CK_LEN);
 *pos++ = ' ';
 pos += wpa_snprintf_hex(pos, end - pos, res, res_len);

 return 0;
}
