
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct tok {int dummy; } ;
struct TYPE_4__ {scalar_t__ ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 int PPTP_CTRL_MSG_TYPE_CDN ;
 int PPTP_CTRL_MSG_TYPE_ECHORP ;
 int PPTP_CTRL_MSG_TYPE_ICRP ;
 int PPTP_CTRL_MSG_TYPE_OCRP ;
 int PPTP_CTRL_MSG_TYPE_SCCRP ;
 int PPTP_CTRL_MSG_TYPE_StopCCRP ;
 struct tok* pptp_cdn_str ;
 struct tok* pptp_echorp_str ;
 struct tok* pptp_icrp_str ;
 struct tok* pptp_ocrp_str ;
 struct tok* pptp_scrrp_str ;
 int tok2str (struct tok const*,char*,int const) ;

__attribute__((used)) static void
pptp_result_code_print(netdissect_options *ndo,
                       const uint8_t *result_code, int ctrl_msg_type)
{
 ND_PRINT((ndo, " RESULT_CODE(%u", *result_code));
 if (ndo->ndo_vflag) {
  const struct tok *dict =
   ctrl_msg_type == PPTP_CTRL_MSG_TYPE_SCCRP ? pptp_scrrp_str :
   ctrl_msg_type == PPTP_CTRL_MSG_TYPE_StopCCRP ? pptp_echorp_str :
   ctrl_msg_type == PPTP_CTRL_MSG_TYPE_ECHORP ? pptp_echorp_str :
   ctrl_msg_type == PPTP_CTRL_MSG_TYPE_OCRP ? pptp_ocrp_str :
   ctrl_msg_type == PPTP_CTRL_MSG_TYPE_ICRP ? pptp_icrp_str :
   ctrl_msg_type == PPTP_CTRL_MSG_TYPE_CDN ? pptp_cdn_str :
   ((void*)0);
  if (dict != ((void*)0))
   ND_PRINT((ndo, ":%s", tok2str(dict, "?", *result_code)));
 }
 ND_PRINT((ndo, ")"));
}
