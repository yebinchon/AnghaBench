
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int aka_auts (char*,char*,size_t) ;
 int aka_req_auth (char*,char*,size_t) ;
 int gsm_auth_req (char*,char*,size_t) ;
 scalar_t__ os_strncmp (char*,char*,int) ;
 int printf (char*,char*) ;
 int sim_req_auth (char*,char*,size_t) ;

__attribute__((used)) static int process_cmd(char *cmd, char *resp, size_t resp_len)
{
 if (os_strncmp(cmd, "SIM-REQ-AUTH ", 13) == 0)
  return sim_req_auth(cmd + 13, resp, resp_len);

 if (os_strncmp(cmd, "GSM-AUTH-REQ ", 13) == 0)
  return gsm_auth_req(cmd + 13, resp, resp_len);

 if (os_strncmp(cmd, "AKA-REQ-AUTH ", 13) == 0)
  return aka_req_auth(cmd + 13, resp, resp_len);

 if (os_strncmp(cmd, "AKA-AUTS ", 9) == 0)
  return aka_auts(cmd + 9, resp, resp_len);

 printf("Unknown request: %s\n", cmd);
 return -1;
}
