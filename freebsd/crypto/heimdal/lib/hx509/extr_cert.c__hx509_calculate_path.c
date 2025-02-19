
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_5__ {unsigned int len; int * val; } ;
typedef TYPE_1__ hx509_path ;
typedef int hx509_context ;
typedef int hx509_certs ;
typedef int hx509_cert ;


 int HX509_CALCULATE_PATH_NO_ANCHOR ;
 int HX509_PATH_TOO_LONG ;
 unsigned int HX509_VERIFY_MAX_DEPTH ;
 int _hx509_path_append (int ,TYPE_1__*,int ) ;
 scalar_t__ certificate_is_anchor (int ,int ,int ) ;
 int find_parent (int ,int ,int ,TYPE_1__*,int ,int ,int *) ;
 int hx509_cert_free (int ) ;
 int hx509_cert_ref (int ) ;
 int hx509_set_error_string (int ,int ,int,char*) ;

int
_hx509_calculate_path(hx509_context context,
        int flags,
        time_t time_now,
        hx509_certs anchors,
        unsigned int max_depth,
        hx509_cert cert,
        hx509_certs pool,
        hx509_path *path)
{
    hx509_cert parent, current;
    int ret;

    if (max_depth == 0)
 max_depth = HX509_VERIFY_MAX_DEPTH;

    ret = _hx509_path_append(context, path, cert);
    if (ret)
 return ret;

    current = hx509_cert_ref(cert);

    while (!certificate_is_anchor(context, anchors, current)) {

 ret = find_parent(context, time_now, anchors, path,
     pool, current, &parent);
 hx509_cert_free(current);
 if (ret)
     return ret;

 ret = _hx509_path_append(context, path, parent);
 if (ret)
     return ret;
 current = parent;

 if (path->len > max_depth) {
     hx509_cert_free(current);
     hx509_set_error_string(context, 0, HX509_PATH_TOO_LONG,
       "Path too long while bulding "
       "certificate chain");
     return HX509_PATH_TOO_LONG;
 }
    }

    if ((flags & HX509_CALCULATE_PATH_NO_ANCHOR) &&
 path->len > 0 &&
 certificate_is_anchor(context, anchors, path->val[path->len - 1]))
    {
 hx509_cert_free(path->val[path->len - 1]);
 path->len--;
    }

    hx509_cert_free(current);
    return 0;
}
