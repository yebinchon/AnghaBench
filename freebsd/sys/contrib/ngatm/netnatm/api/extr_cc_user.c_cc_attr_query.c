
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
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
struct ccconn {int mdcr; int connid; int abradd; int abrsetup; int eetd; int connedsub; int conned; int epref; int aal; int callingsub; int calling; int calledsub; int called; int exqos; int qos; int traffic; int bearer; int blli_selector; int * blli; } ;
typedef enum atm_attribute { ____Placeholder_atm_attribute } atm_attribute ;


 int ATMERR_BAD_ATTR ;
 int ATMRESP_ATTRS ;
 int CCFREE (void*) ;
 void* CCMALLOC (size_t) ;
 int cc_user_err (struct ccuser*,int ) ;
 int cc_user_ok (struct ccuser*,int ,void*,size_t) ;
 int memcpy (void*,int *,size_t) ;
 int memset (void*,int ,size_t) ;

__attribute__((used)) static void
cc_attr_query(struct ccuser *user, struct ccconn *conn,
    uint32_t *attr, u_int count)
{
 void *val, *ptr;
 size_t total, len;
 u_int i;
 uint32_t *atab;


 total = sizeof(uint32_t) + count * sizeof(uint32_t);
 for (i = 0; i < count; i++) {
  len = 0;
  switch ((enum atm_attribute)attr[i]) {

    case 130:
   break;

    case 142:
   len = sizeof(uint32_t);
   break;

    case 143:
   len = sizeof(struct uni_ie_blli);
   break;

    case 144:
   len = sizeof(struct uni_ie_bearer);
   break;

    case 128:
   len = sizeof(struct uni_ie_traffic);
   break;

    case 129:
   len = sizeof(struct uni_ie_qos);
   break;

    case 132:
   len = sizeof(struct uni_ie_exqos);
   break;

    case 141:
   len = sizeof(struct uni_ie_called);
   break;

    case 140:
   len = sizeof(struct uni_ie_calledsub);
   break;

    case 139:
   len = sizeof(struct uni_ie_calling);
   break;

    case 138:
   len = sizeof(struct uni_ie_callingsub);
   break;

    case 147:
   len = sizeof(struct uni_ie_aal);
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
   len = sizeof(struct uni_ie_mdcr);
   break;
  }
  if (len == 0) {
   cc_user_err(user, ATMERR_BAD_ATTR);
   return;
  }
  total += len;
 }


 val = CCMALLOC(total);
 if (val == ((void*)0))
  return;

 atab = val;
 atab[0] = count;


 ptr = (u_char *)val + (sizeof(uint32_t) + count * sizeof(uint32_t));
 for (i = 0; i < count; i++) {
  len = 0;
  atab[i + 1] = attr[i];
  switch (attr[i]) {

    case 130:
   break;

    case 142:
   len = sizeof(uint32_t);
   memcpy(ptr, &conn->blli_selector, len);
   break;

    case 143:



   len = sizeof(struct uni_ie_blli);
   if (conn->blli_selector == 0)
    memset(ptr, 0, len);
   else
    memcpy(ptr, &conn->blli[conn->blli_selector -
        1], len);
   break;

    case 144:
   len = sizeof(struct uni_ie_bearer);
   memcpy(ptr, &conn->bearer, len);
   break;

    case 128:
   len = sizeof(struct uni_ie_traffic);
   memcpy(ptr, &conn->traffic, len);
   break;

    case 129:
   len = sizeof(struct uni_ie_qos);
   memcpy(ptr, &conn->qos, len);
   break;

    case 132:
   len = sizeof(struct uni_ie_exqos);
   memcpy(ptr, &conn->exqos, len);
   break;

    case 141:
   len = sizeof(struct uni_ie_called);
   memcpy(ptr, &conn->called, len);
   break;

    case 140:
   len = sizeof(struct uni_ie_calledsub);
   memcpy(ptr, &conn->calledsub, len);
   break;

    case 139:
   len = sizeof(struct uni_ie_calling);
   memcpy(ptr, &conn->calling, len);
   break;

    case 138:
   len = sizeof(struct uni_ie_callingsub);
   memcpy(ptr, &conn->callingsub, len);
   break;

    case 147:
   len = sizeof(struct uni_ie_aal);
   memcpy(ptr, &conn->aal, len);
   break;

    case 133:
   len = sizeof(struct uni_ie_epref);
   memcpy(ptr, &conn->epref, len);
   break;

    case 137:
   len = sizeof(struct uni_ie_conned);
   memcpy(ptr, &conn->conned, len);
   break;

    case 136:
   len = sizeof(struct uni_ie_connedsub);
   memcpy(ptr, &conn->connedsub, len);
   break;

    case 134:
   len = sizeof(struct uni_ie_eetd);
   memcpy(ptr, &conn->eetd, len);
   break;

    case 145:
   len = sizeof(struct uni_ie_abrsetup);
   memcpy(ptr, &conn->abrsetup, len);
   break;

    case 146:
   len = sizeof(struct uni_ie_abradd);
   memcpy(ptr, &conn->abradd, len);
   break;

    case 135:
   len = sizeof(struct uni_ie_connid);
   memcpy(ptr, &conn->connid, len);
   break;

    case 131:
   len = sizeof(struct uni_ie_mdcr);
   memcpy(ptr, &conn->mdcr, len);
   break;
  }
  ptr = (u_char *)ptr + len;
 }

 cc_user_ok(user, ATMRESP_ATTRS, val, total);

 CCFREE(val);
}
