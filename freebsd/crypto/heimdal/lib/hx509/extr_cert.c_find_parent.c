
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_14__ {int match; int timenow; int * path; int * subject_id; int subject; } ;
typedef TYPE_1__ hx509_query ;
typedef int hx509_path ;
typedef int hx509_name ;
typedef int hx509_context ;
typedef scalar_t__ hx509_certs ;
typedef TYPE_2__* hx509_cert ;
typedef int ai ;
struct TYPE_16__ {int * keyIdentifier; } ;
struct TYPE_15__ {int data; } ;
typedef TYPE_3__ AuthorityKeyIdentifier ;


 int HX509_CERTIFICATE_MALFORMED ;
 int HX509_ISSUER_NOT_FOUND ;
 int HX509_QUERY_FIND_ISSUER_CERT ;
 int HX509_QUERY_MATCH_SUBJECT_KEY_ID ;
 int HX509_QUERY_MATCH_TIME ;
 int HX509_QUERY_NO_MATCH_PATH ;
 int _hx509_get_cert (TYPE_2__*) ;
 int _hx509_query_clear (TYPE_1__*) ;
 int find_extension_auth_key_id (int ,TYPE_3__*) ;
 int free (char*) ;
 int free_AuthorityKeyIdentifier (TYPE_3__*) ;
 int hx509_cert_get_subject (TYPE_2__*,int *) ;
 int hx509_certs_find (int ,scalar_t__,TYPE_1__*,TYPE_2__**) ;
 int hx509_clear_error_string (int ) ;
 int hx509_name_free (int *) ;
 int hx509_name_to_string (int ,char**) ;
 int hx509_set_error_string (int ,int ,int,char*,...) ;
 int memset (TYPE_3__*,int ,int) ;
 int subject_null_p (int ) ;

__attribute__((used)) static int
find_parent(hx509_context context,
     time_t time_now,
     hx509_certs trust_anchors,
     hx509_path *path,
     hx509_certs pool,
     hx509_cert current,
     hx509_cert *parent)
{
    AuthorityKeyIdentifier ai;
    hx509_query q;
    int ret;

    *parent = ((void*)0);
    memset(&ai, 0, sizeof(ai));

    _hx509_query_clear(&q);

    if (!subject_null_p(current->data)) {
 q.match |= HX509_QUERY_FIND_ISSUER_CERT;
 q.subject = _hx509_get_cert(current);
    } else {
 ret = find_extension_auth_key_id(current->data, &ai);
 if (ret) {
     hx509_set_error_string(context, 0, HX509_CERTIFICATE_MALFORMED,
       "Subjectless certificate missing AuthKeyID");
     return HX509_CERTIFICATE_MALFORMED;
 }

 if (ai.keyIdentifier == ((void*)0)) {
     free_AuthorityKeyIdentifier(&ai);
     hx509_set_error_string(context, 0, HX509_CERTIFICATE_MALFORMED,
       "Subjectless certificate missing keyIdentifier "
       "inside AuthKeyID");
     return HX509_CERTIFICATE_MALFORMED;
 }

 q.subject_id = ai.keyIdentifier;
 q.match = HX509_QUERY_MATCH_SUBJECT_KEY_ID;
    }

    q.path = path;
    q.match |= HX509_QUERY_NO_MATCH_PATH;

    if (pool) {
 q.timenow = time_now;
 q.match |= HX509_QUERY_MATCH_TIME;

 ret = hx509_certs_find(context, pool, &q, parent);
 if (ret == 0) {
     free_AuthorityKeyIdentifier(&ai);
     return 0;
 }
 q.match &= ~HX509_QUERY_MATCH_TIME;
    }

    if (trust_anchors) {
 ret = hx509_certs_find(context, trust_anchors, &q, parent);
 if (ret == 0) {
     free_AuthorityKeyIdentifier(&ai);
     return ret;
 }
    }
    free_AuthorityKeyIdentifier(&ai);

    {
 hx509_name name;
 char *str;

 ret = hx509_cert_get_subject(current, &name);
 if (ret) {
     hx509_clear_error_string(context);
     return HX509_ISSUER_NOT_FOUND;
 }
 ret = hx509_name_to_string(name, &str);
 hx509_name_free(&name);
 if (ret) {
     hx509_clear_error_string(context);
     return HX509_ISSUER_NOT_FOUND;
 }

 hx509_set_error_string(context, 0, HX509_ISSUER_NOT_FOUND,
          "Failed to find issuer for "
          "certificate with subject: '%s'", str);
 free(str);
    }
    return HX509_ISSUER_NOT_FOUND;
}
