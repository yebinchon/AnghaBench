
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int ulValueLen; scalar_t__* pValue; } ;
typedef size_t CK_ULONG ;
typedef scalar_t__ CK_OBJECT_CLASS ;
typedef scalar_t__ CK_BBOOL ;
typedef TYPE_1__ CK_ATTRIBUTE ;
 int application_error (char*) ;
 int st_logf (char*,...) ;

__attribute__((used)) static void
print_attributes(const CK_ATTRIBUTE *attributes,
   CK_ULONG num_attributes)
{
    CK_ULONG i;

    st_logf("find objects: attrs: %lu\n", (unsigned long)num_attributes);

    for (i = 0; i < num_attributes; i++) {
 st_logf("  type: ");
 switch (attributes[i].type) {
 case 134: {
     CK_BBOOL *ck_true;
     if (attributes[i].ulValueLen != sizeof(CK_BBOOL)) {
  application_error("token attribute wrong length\n");
  break;
     }
     ck_true = attributes[i].pValue;
     st_logf("token: %s", *ck_true ? "TRUE" : "FALSE");
     break;
 }
 case 138: {
     CK_OBJECT_CLASS *class;
     if (attributes[i].ulValueLen != sizeof(CK_ULONG)) {
  application_error("class attribute wrong length\n");
  break;
     }
     class = attributes[i].pValue;
     st_logf("class ");
     switch (*class) {
     case 132:
  st_logf("certificate");
  break;
     case 129:
  st_logf("public key");
  break;
     case 130:
  st_logf("private key");
  break;
     case 128:
  st_logf("secret key");
  break;
     case 131:
  st_logf("domain parameters");
  break;
     default:
  st_logf("[class %lx]", (long unsigned)*class);
  break;
     }
     break;
 }
 case 135:
     st_logf("private");
     break;
 case 136:
     st_logf("label");
     break;
 case 139:
     st_logf("application");
     break;
 case 133:
     st_logf("value");
     break;
 case 137:
     st_logf("id");
     break;
 default:
     st_logf("[unknown 0x%08lx]", (unsigned long)attributes[i].type);
     break;
 }
 st_logf("\n");
    }
}
