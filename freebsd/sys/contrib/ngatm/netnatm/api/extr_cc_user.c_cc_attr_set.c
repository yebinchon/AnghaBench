
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef size_t u_int ;
typedef int u_char ;
struct uni_ie_traffic {int dummy; } ;
struct uni_ie_qos {int dummy; } ;
struct uni_ie_mdcr {int dummy; } ;
struct uni_ie_exqos {int dummy; } ;
struct uni_ie_epref {int dummy; } ;
struct uni_ie_eetd {int dummy; } ;
struct uni_ie_connid {int dummy; } ;
struct uni_ie_connedsub {int dummy; } ;
struct uni_ie_conned {int dummy; } ;
struct uni_ie_callingsub {int dummy; } ;
struct uni_ie_calling {int dummy; } ;
struct uni_ie_calledsub {int dummy; } ;
struct uni_ie_called {int dummy; } ;
struct uni_ie_blli {int dummy; } ;
struct uni_ie_bearer {int dummy; } ;
struct uni_ie_abrsetup {int dummy; } ;
struct uni_ie_abradd {int dummy; } ;
struct uni_ie_aal {int dummy; } ;
struct ccuser {int dummy; } ;
struct ccconn {int mdcr; int dirty_attr; int connid; int abradd; int abrsetup; int eetd; int aal; int callingsub; int calling; int calledsub; int exqos; int qos; int traffic; int bearer; int blli_selector; int * blli; int state; } ;
typedef int sel ;
typedef enum atm_attribute { ____Placeholder_atm_attribute } atm_attribute ;


 int ATMERR_BAD_ARGS ;
 int ATMERR_BAD_ATTR ;
 int ATMERR_BAD_VALUE ;
 int ATMERR_RDONLY ;
 int ATMRESP_NONE ;
 int CCDIRTY_AAL ;
 int CCDIRTY_ABRADD ;
 int CCDIRTY_ABRSETUP ;
 int CCDIRTY_BLLI ;
 int CCDIRTY_CONNID ;
 int CCDIRTY_EETD ;
 int CCDIRTY_EXQOS ;
 int CCDIRTY_TRAFFIC ;
 int CONN_OUT_PREPARING ;
 int UNI_NUM_IE_BLLI ;
 int cc_user_err (struct ccuser*,int ) ;
 int cc_user_ok (struct ccuser*,int ,int *,int ) ;
 int memcpy (int *,int *,size_t) ;

__attribute__((used)) static void
cc_attr_set(struct ccuser *user, struct ccconn *conn, uint32_t *attr,
    u_int count, u_char *val, size_t vallen)
{
 size_t total, len;
 u_int i;
 u_char *ptr;


 total = 0;
 ptr = val;
 for (i = 0; i < count; i++) {
  len = 0;
  switch ((enum atm_attribute)attr[i]) {

    case 130:
   break;

    case 142:
      {
   uint32_t sel;

   if (conn->state != CONN_OUT_PREPARING)
    goto rdonly;
   memcpy(&sel, ptr, sizeof(sel));
   if (sel == 0 || sel > UNI_NUM_IE_BLLI)
    goto bad_val;
   len = sizeof(uint32_t);
   break;
      }

    case 143:
   len = sizeof(struct uni_ie_blli);
   break;

    case 144:
   if (conn->state != CONN_OUT_PREPARING)
    goto rdonly;
   len = sizeof(struct uni_ie_bearer);
   break;

    case 128:
   len = sizeof(struct uni_ie_traffic);
   break;

    case 129:
   if (conn->state != CONN_OUT_PREPARING)
    goto rdonly;
   len = sizeof(struct uni_ie_qos);
   break;

    case 132:
   len = sizeof(struct uni_ie_exqos);
   break;

    case 141:
   goto rdonly;

    case 140:
   if (conn->state != CONN_OUT_PREPARING)
    goto rdonly;
   len = sizeof(struct uni_ie_calledsub);
   break;

    case 139:
   if (conn->state != CONN_OUT_PREPARING)
    goto rdonly;
   len = sizeof(struct uni_ie_calling);
   break;

    case 138:
   if (conn->state != CONN_OUT_PREPARING)
    goto rdonly;
   len = sizeof(struct uni_ie_callingsub);
   break;

    case 147:
   len = sizeof(struct uni_ie_aal);
   break;

    case 133:
   goto rdonly;

    case 137:
   goto rdonly;

    case 136:
   goto rdonly;

    case 134:
   len = sizeof(struct uni_ie_eetd);
   break;

    case 145:
   len = sizeof(struct uni_ie_abrsetup);
   break;

    case 146:
   len = sizeof(struct uni_ie_abradd);
   break;

    case 135:
   len = sizeof(struct uni_ie_connid);
   break;

    case 131:
   if (conn->state != CONN_OUT_PREPARING)
    goto rdonly;
   len = sizeof(struct uni_ie_mdcr);
   break;
  }
  if (len == 0) {
   cc_user_err(user, ATMERR_BAD_ATTR);
   return;
  }
  total += len;
  ptr += len;
 }


 if (vallen != total) {
  cc_user_err(user, ATMERR_BAD_ARGS);
  return;
 }

 ptr = val;
 for (i = 0; i < count; i++) {
  len = 0;
  switch ((enum atm_attribute)attr[i]) {

    case 130:
   break;

    case 142:
      {
   uint32_t sel;

   memcpy(&sel, ptr, sizeof(sel));
   conn->blli_selector = sel;
   len = sizeof(uint32_t);
   break;
      }

    case 143:
   len = sizeof(struct uni_ie_blli);
   memcpy(&conn->blli[conn->blli_selector - 1], ptr, len);
   conn->dirty_attr |= CCDIRTY_BLLI;
   break;

    case 144:
   len = sizeof(struct uni_ie_bearer);
   memcpy(&conn->bearer, ptr, len);
   break;

    case 128:
   len = sizeof(struct uni_ie_traffic);
   memcpy(&conn->traffic, ptr, len);
   conn->dirty_attr |= CCDIRTY_TRAFFIC;
   break;

    case 129:
   len = sizeof(struct uni_ie_qos);
   memcpy(&conn->qos, ptr, len);
   break;

    case 132:
   len = sizeof(struct uni_ie_exqos);
   memcpy(&conn->exqos, ptr, len);
   conn->dirty_attr |= CCDIRTY_EXQOS;
   break;

    case 141:
   len = sizeof(struct uni_ie_called);
   break;

    case 140:
   len = sizeof(struct uni_ie_calledsub);
   memcpy(&conn->calledsub, ptr, len);
   break;

    case 139:
   len = sizeof(struct uni_ie_calling);
   memcpy(&conn->calling, ptr, len);
   break;

    case 138:
   len = sizeof(struct uni_ie_callingsub);
   memcpy(&conn->callingsub, ptr, len);
   break;

    case 147:
   len = sizeof(struct uni_ie_aal);
   memcpy(&conn->aal, ptr, len);
   conn->dirty_attr |= CCDIRTY_AAL;
   break;

    case 133:
   len = sizeof(struct uni_ie_epref);
   break;

    case 137:
   len = sizeof(struct uni_ie_conned);
   break;

    case 136:
   len = sizeof(struct uni_ie_connedsub);
   break;

    case 134:
   len = sizeof(struct uni_ie_eetd);
   memcpy(&conn->eetd, ptr, len);
   conn->dirty_attr |= CCDIRTY_EETD;
   break;

    case 145:
   len = sizeof(struct uni_ie_abrsetup);
   memcpy(&conn->abrsetup, ptr, len);
   conn->dirty_attr |= CCDIRTY_ABRSETUP;
   break;

    case 146:
   len = sizeof(struct uni_ie_abradd);
   memcpy(&conn->abradd, ptr, len);
   conn->dirty_attr |= CCDIRTY_ABRADD;
   break;

    case 135:
   len = sizeof(struct uni_ie_connid);
   memcpy(&conn->connid, ptr, len);
   conn->dirty_attr |= CCDIRTY_CONNID;
   break;

    case 131:
   len = sizeof(struct uni_ie_mdcr);
   memcpy(&conn->mdcr, ptr, len);
   break;
  }
  ptr += len;
 }

 cc_user_ok(user, ATMRESP_NONE, ((void*)0), 0);
 return;

  bad_val:
 cc_user_err(user, ATMERR_BAD_VALUE);
 return;

  rdonly:
 cc_user_err(user, ATMERR_RDONLY);
 return;
}
