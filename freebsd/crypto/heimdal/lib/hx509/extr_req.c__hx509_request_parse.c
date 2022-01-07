
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int hx509_request ;
typedef int hx509_name ;
typedef int hx509_context ;
struct TYPE_5__ {int subject; int subjectPKInfo; } ;
struct TYPE_6__ {TYPE_1__ certificationRequestInfo; } ;
typedef TYPE_1__ CertificationRequestInfo ;
typedef TYPE_2__ CertificationRequest ;


 int HX509_UNSUPPORTED_OPERATION ;
 int _hx509_name_from_Name (int *,int *) ;
 int decode_CertificationRequest (void*,size_t,TYPE_2__*,size_t*) ;
 int free_CertificationRequest (TYPE_2__*) ;
 int hx509_name_free (int *) ;
 int hx509_request_free (int *) ;
 int hx509_request_init (int ,int *) ;
 int hx509_request_set_SubjectPublicKeyInfo (int ,int ,int *) ;
 int hx509_request_set_name (int ,int ,int ) ;
 int hx509_set_error_string (int ,int ,int,char*,char const*) ;
 int rk_undumpdata (char const*,void**,size_t*) ;
 int rk_xfree (void*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

int
_hx509_request_parse(hx509_context context,
       const char *path,
       hx509_request *req)
{
    CertificationRequest r;
    CertificationRequestInfo *rinfo;
    hx509_name subject;
    size_t len, size;
    void *p;
    int ret;

    if (strncmp(path, "PKCS10:", 7) != 0) {
 hx509_set_error_string(context, 0, HX509_UNSUPPORTED_OPERATION,
          "unsupport type in %s", path);
 return HX509_UNSUPPORTED_OPERATION;
    }
    path += 7;



    ret = rk_undumpdata(path, &p, &len);
    if (ret) {
 hx509_set_error_string(context, 0, ret, "Failed to map file %s", path);
 return ret;
    }

    ret = decode_CertificationRequest(p, len, &r, &size);
    rk_xfree(p);
    if (ret) {
 hx509_set_error_string(context, 0, ret, "Failed to decode %s", path);
 return ret;
    }

    ret = hx509_request_init(context, req);
    if (ret) {
 free_CertificationRequest(&r);
 return ret;
    }

    rinfo = &r.certificationRequestInfo;

    ret = hx509_request_set_SubjectPublicKeyInfo(context, *req,
        &rinfo->subjectPKInfo);
    if (ret) {
 free_CertificationRequest(&r);
 hx509_request_free(req);
 return ret;
    }

    ret = _hx509_name_from_Name(&rinfo->subject, &subject);
    if (ret) {
 free_CertificationRequest(&r);
 hx509_request_free(req);
 return ret;
    }
    ret = hx509_request_set_name(context, *req, subject);
    hx509_name_free(&subject);
    free_CertificationRequest(&r);
    if (ret) {
 hx509_request_free(req);
 return ret;
    }

    return 0;
}
