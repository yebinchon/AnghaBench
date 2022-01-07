
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct cert_status {int haveSKI; } ;
typedef int hx509_validate_ctx ;
typedef enum critical_flag { ____Placeholder_critical_flag } critical_flag ;
struct TYPE_8__ {size_t length; int data; } ;
struct TYPE_10__ {TYPE_1__ extnValue; } ;
struct TYPE_9__ {int length; int data; } ;
typedef TYPE_2__ SubjectKeyIdentifier ;
typedef TYPE_3__ Extension ;


 int HX509_VALIDATE_F_VALIDATE ;
 int HX509_VALIDATE_F_VERBOSE ;
 int check_Null (int ,struct cert_status*,int,TYPE_3__ const*) ;
 int decode_SubjectKeyIdentifier (int ,size_t,TYPE_2__*,size_t*) ;
 int free (char*) ;
 int free_SubjectKeyIdentifier (TYPE_2__*) ;
 int hex_encode (int ,int,char**) ;
 int validate_print (int ,int ,char*,...) ;

__attribute__((used)) static int
check_subjectKeyIdentifier(hx509_validate_ctx ctx,
      struct cert_status *status,
      enum critical_flag cf,
      const Extension *e)
{
    SubjectKeyIdentifier si;
    size_t size;
    int ret;

    status->haveSKI = 1;
    check_Null(ctx, status, cf, e);

    ret = decode_SubjectKeyIdentifier(e->extnValue.data,
          e->extnValue.length,
          &si, &size);
    if (ret) {
 validate_print(ctx, HX509_VALIDATE_F_VALIDATE,
         "Decoding SubjectKeyIdentifier failed: %d", ret);
 return 1;
    }
    if (size != e->extnValue.length) {
 validate_print(ctx, HX509_VALIDATE_F_VALIDATE,
         "Decoding SKI ahve extra bits on the end");
 return 1;
    }
    if (si.length == 0)
 validate_print(ctx, HX509_VALIDATE_F_VALIDATE,
         "SKI is too short (0 bytes)");
    if (si.length > 20)
 validate_print(ctx, HX509_VALIDATE_F_VALIDATE,
         "SKI is too long");

    {
 char *id;
 hex_encode(si.data, si.length, &id);
 if (id) {
     validate_print(ctx, HX509_VALIDATE_F_VERBOSE,
      "\tsubject key id: %s\n", id);
     free(id);
 }
    }

    free_SubjectKeyIdentifier(&si);

    return 0;
}
