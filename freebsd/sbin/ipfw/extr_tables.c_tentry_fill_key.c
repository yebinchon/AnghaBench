
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_10__ {char* tablename; scalar_t__ vmask; scalar_t__ tflags; scalar_t__ type; } ;
typedef TYPE_2__ ipfw_xtable_info ;
typedef int ipfw_obj_tentry ;
struct TYPE_9__ {int name; } ;
struct TYPE_11__ {TYPE_1__ ntlv; } ;
typedef TYPE_3__ ipfw_obj_header ;
struct TYPE_12__ {scalar_t__ test_only; } ;


 int ESRCH ;
 int EX_DATAERR ;
 int EX_OSERR ;
 int EX_USAGE ;
 scalar_t__ IPFW_VTYPE_LEGACY ;
 TYPE_8__ co ;
 int errx (int ,char*,char*,...) ;
 scalar_t__ guess_key_type (char*,scalar_t__*) ;
 int table_get_info (TYPE_3__*,TYPE_2__*) ;
 int tentry_fill_key_type (char*,int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
tentry_fill_key(ipfw_obj_header *oh, ipfw_obj_tentry *tent, char *key,
    int add, uint8_t *ptype, uint32_t *pvmask, ipfw_xtable_info *xi)
{
 uint8_t type, tflags;
 uint32_t vmask;
 int error;

 type = 0;
 tflags = 0;
 vmask = 0;

 if (xi->tablename[0] == '\0')
  error = table_get_info(oh, xi);
 else
  error = 0;

 if (error == 0) {
  if (co.test_only == 0) {

   type = xi->type;
   tflags = xi->tflags;
   vmask = xi->vmask;
  } else {





   if (guess_key_type(key, &type) != 0) {

    errx(EX_USAGE, "Cannot guess "
        "key '%s' type", key);
   }
   vmask = IPFW_VTYPE_LEGACY;
  }
 } else {
  if (error != ESRCH)
   errx(EX_OSERR, "Error requesting table %s info",
       oh->ntlv.name);
  if (add == 0)
   errx(EX_DATAERR, "Table %s does not exist",
       oh->ntlv.name);




  if (guess_key_type(key, &type) != 0) {

   errx(EX_USAGE, "Table %s does not exist, cannot guess "
       "key '%s' type", oh->ntlv.name, key);
  }

  vmask = IPFW_VTYPE_LEGACY;
 }

 tentry_fill_key_type(key, tent, type, tflags);

 *ptype = type;
 *pvmask = vmask;
}
