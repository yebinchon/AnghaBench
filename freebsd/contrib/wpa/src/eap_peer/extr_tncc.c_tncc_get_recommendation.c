
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tncc_process_res { ____Placeholder_tncc_process_res } tncc_process_res ;


 int MSG_DEBUG ;
 int TNCCS_RECOMMENDATION_ALLOW ;
 int TNCCS_RECOMMENDATION_ERROR ;
 int TNCCS_RECOMMENDATION_ISOLATE ;
 int TNCCS_RECOMMENDATION_NONE ;
 scalar_t__ os_strcmp (char*,char*) ;
 char* os_strstr (char*,char*) ;
 int wpa_printf (int ,char*,char*) ;

__attribute__((used)) static enum tncc_process_res tncc_get_recommendation(char *start)
{
 char *pos, *pos2, saved;
 int recom;

 pos = os_strstr(start, "<TNCCS-Recommendation ");
 if (pos == ((void*)0))
  return TNCCS_RECOMMENDATION_ERROR;

 pos += 21;
 pos = os_strstr(pos, " type=");
 if (pos == ((void*)0))
  return TNCCS_RECOMMENDATION_ERROR;
 pos += 6;

 if (*pos == '"')
  pos++;

 pos2 = pos;
 while (*pos2 != '\0' && *pos2 != '"' && *pos2 != '>')
  pos2++;

 if (*pos2 == '\0')
  return TNCCS_RECOMMENDATION_ERROR;

 saved = *pos2;
 *pos2 = '\0';
 wpa_printf(MSG_DEBUG, "TNC: TNCCS-Recommendation: '%s'", pos);

 recom = TNCCS_RECOMMENDATION_ERROR;
 if (os_strcmp(pos, "allow") == 0)
  recom = TNCCS_RECOMMENDATION_ALLOW;
 else if (os_strcmp(pos, "none") == 0)
  recom = TNCCS_RECOMMENDATION_NONE;
 else if (os_strcmp(pos, "isolate") == 0)
  recom = TNCCS_RECOMMENDATION_ISOLATE;

 *pos2 = saved;

 return recom;
}
