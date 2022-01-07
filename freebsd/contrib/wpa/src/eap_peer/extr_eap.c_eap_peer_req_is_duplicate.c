
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {scalar_t__ reqId; scalar_t__ lastId; int last_sha1; int req_sha1; scalar_t__ workaround; scalar_t__ rxReq; } ;


 int MSG_DEBUG ;
 scalar_t__ os_memcmp (int ,int ,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int eap_peer_req_is_duplicate(struct eap_sm *sm)
{
 int duplicate;

 duplicate = (sm->reqId == sm->lastId) && sm->rxReq;
 if (sm->workaround && duplicate &&
     os_memcmp(sm->req_sha1, sm->last_sha1, 20) != 0) {
  wpa_printf(MSG_DEBUG, "EAP: AS used the same Id again, but "
      "EAP packets were not identical");
  wpa_printf(MSG_DEBUG, "EAP: workaround - assume this is not a "
      "duplicate packet");
  duplicate = 0;
 }

 return duplicate;
}
