
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int len; TYPE_5__* val; } ;
struct TYPE_9__ {int length; int data; } ;
struct TYPE_10__ {TYPE_1__ byKey; int byName; } ;
struct TYPE_11__ {int element; TYPE_2__ u; } ;
struct TYPE_15__ {TYPE_6__ responses; int producedAt; TYPE_3__ responderID; } ;
struct TYPE_16__ {TYPE_7__ tbsResponseData; } ;
struct revoke_ocsp {scalar_t__ certs; TYPE_8__ ocsp; int * path; } ;
typedef int ocsp ;
typedef int hx509_name ;
typedef int hx509_context ;
struct TYPE_12__ {int element; } ;
struct TYPE_13__ {int thisUpdate; scalar_t__ nextUpdate; TYPE_4__ certStatus; } ;
typedef int FILE ;


 int ENOMEM ;
 int _hx509_abort (char*) ;
 int _hx509_name_from_Name (int *,int *) ;





 int fprintf (int *,char*,...) ;
 int free (char*) ;
 int free_ocsp (struct revoke_ocsp*) ;
 int hex_encode (int ,int ,char**) ;
 int hx509_certs_iter_f (int ,scalar_t__,int ,int *) ;
 int hx509_ci_print_names ;
 int hx509_name_free (int *) ;
 int hx509_name_to_string (int ,char**) ;
 int load_ocsp (int ,struct revoke_ocsp*) ;
 int memset (struct revoke_ocsp*,int ,int) ;
 char* printable_time (int ) ;
 int * stdout ;
 int * strdup (char const*) ;

int
hx509_revoke_ocsp_print(hx509_context context, const char *path, FILE *out)
{
    struct revoke_ocsp ocsp;
    int ret;
    size_t i;

    if (out == ((void*)0))
 out = stdout;

    memset(&ocsp, 0, sizeof(ocsp));

    ocsp.path = strdup(path);
    if (ocsp.path == ((void*)0))
 return ENOMEM;

    ret = load_ocsp(context, &ocsp);
    if (ret) {
 free_ocsp(&ocsp);
 return ret;
    }

    fprintf(out, "signer: ");

    switch(ocsp.ocsp.tbsResponseData.responderID.element) {
    case 128: {
 hx509_name n;
 char *s;
 _hx509_name_from_Name(&ocsp.ocsp.tbsResponseData.responderID.u.byName, &n);
 hx509_name_to_string(n, &s);
 hx509_name_free(&n);
 fprintf(out, " byName: %s\n", s);
 free(s);
 break;
    }
    case 129: {
 char *s;
 hex_encode(ocsp.ocsp.tbsResponseData.responderID.u.byKey.data,
     ocsp.ocsp.tbsResponseData.responderID.u.byKey.length,
     &s);
 fprintf(out, " byKey: %s\n", s);
 free(s);
 break;
    }
    default:
 _hx509_abort("choice_OCSPResponderID unknown");
 break;
    }

    fprintf(out, "producedAt: %s\n",
     printable_time(ocsp.ocsp.tbsResponseData.producedAt));

    fprintf(out, "replies: %d\n", ocsp.ocsp.tbsResponseData.responses.len);

    for (i = 0; i < ocsp.ocsp.tbsResponseData.responses.len; i++) {
 const char *status;
 switch (ocsp.ocsp.tbsResponseData.responses.val[i].certStatus.element) {
 case 132:
     status = "good";
     break;
 case 131:
     status = "revoked";
     break;
 case 130:
     status = "unknown";
     break;
 default:
     status = "element unknown";
 }

 fprintf(out, "\t%zu. status: %s\n", i, status);

 fprintf(out, "\tthisUpdate: %s\n",
  printable_time(ocsp.ocsp.tbsResponseData.responses.val[i].thisUpdate));
 if (ocsp.ocsp.tbsResponseData.responses.val[i].nextUpdate)
     fprintf(out, "\tproducedAt: %s\n",
      printable_time(ocsp.ocsp.tbsResponseData.responses.val[i].thisUpdate));

    }

    fprintf(out, "appended certs:\n");
    if (ocsp.certs)
 ret = hx509_certs_iter_f(context, ocsp.certs, hx509_ci_print_names, out);

    free_ocsp(&ocsp);
    return ret;
}
