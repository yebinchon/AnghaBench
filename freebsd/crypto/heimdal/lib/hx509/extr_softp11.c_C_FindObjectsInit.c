
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int next_object; int num_attributes; TYPE_4__* attributes; } ;
struct session_state {TYPE_1__ find; } ;
struct TYPE_8__ {int ulValueLen; int type; int * pValue; } ;
struct TYPE_7__ {int ulValueLen; int type; int pValue; } ;
typedef int CK_ULONG ;
typedef int CK_SESSION_HANDLE ;
typedef int CK_RV ;
typedef TYPE_2__* CK_ATTRIBUTE_PTR ;


 int CKR_DEVICE_MEMORY ;
 int CKR_OK ;
 int INIT_CONTEXT () ;
 int VERIFY_SESSION_HANDLE (int ,struct session_state**) ;
 int application_error (char*) ;
 TYPE_4__* calloc (int,int) ;
 int find_object_final (struct session_state*) ;
 int * malloc (int ) ;
 int memcpy (int *,int ,int ) ;
 int print_attributes (TYPE_2__*,int) ;
 int st_logf (char*) ;

CK_RV
C_FindObjectsInit(CK_SESSION_HANDLE hSession,
    CK_ATTRIBUTE_PTR pTemplate,
    CK_ULONG ulCount)
{
    struct session_state *state;

    st_logf("FindObjectsInit\n");

    INIT_CONTEXT();

    VERIFY_SESSION_HANDLE(hSession, &state);

    if (state->find.next_object != -1) {
 application_error("application didn't do C_FindObjectsFinal\n");
 find_object_final(state);
    }
    if (ulCount) {
 CK_ULONG i;

 print_attributes(pTemplate, ulCount);

 state->find.attributes =
     calloc(1, ulCount * sizeof(state->find.attributes[0]));
 if (state->find.attributes == ((void*)0))
     return CKR_DEVICE_MEMORY;
 for (i = 0; i < ulCount; i++) {
     state->find.attributes[i].pValue =
  malloc(pTemplate[i].ulValueLen);
     if (state->find.attributes[i].pValue == ((void*)0)) {
  find_object_final(state);
  return CKR_DEVICE_MEMORY;
     }
     memcpy(state->find.attributes[i].pValue,
     pTemplate[i].pValue, pTemplate[i].ulValueLen);
     state->find.attributes[i].type = pTemplate[i].type;
     state->find.attributes[i].ulValueLen = pTemplate[i].ulValueLen;
 }
 state->find.num_attributes = ulCount;
 state->find.next_object = 0;
    } else {
 st_logf("find all objects\n");
 state->find.attributes = ((void*)0);
 state->find.num_attributes = 0;
 state->find.next_object = 0;
    }

    return CKR_OK;
}
