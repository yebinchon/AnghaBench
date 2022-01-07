
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct private_key {int * private_key; } ;
typedef int hx509_cursor ;
typedef int hx509_context ;
typedef int hx509_certs ;
typedef int * hx509_cert ;


 int HX509_CERT_NOT_FOUND ;
 int HX509_PRIVATE_KEY_MISSING ;
 int _hx509_cert_assign_key (int *,int *) ;
 scalar_t__ _hx509_cert_private_key (int *) ;
 int _hx509_match_keys (int *,int *) ;
 int hx509_cert_free (int *) ;
 int hx509_certs_end_seq (int ,int ,int ) ;
 int hx509_certs_next_cert (int ,int ,int ,int **) ;
 int hx509_certs_start_seq (int ,int ,int *) ;
 int hx509_clear_error_string (int ) ;
 int hx509_set_error_string (int ,int ,int,char*) ;

__attribute__((used)) static int
match_keys(hx509_context context, struct private_key *value, hx509_certs certs)
{
    hx509_cursor cursor;
    hx509_cert c;
    int ret, found = HX509_CERT_NOT_FOUND;

    if (value->private_key == ((void*)0)) {
 hx509_set_error_string(context, 0, HX509_PRIVATE_KEY_MISSING,
          "No private key to compare with");
 return HX509_PRIVATE_KEY_MISSING;
    }

    ret = hx509_certs_start_seq(context, certs, &cursor);
    if (ret)
 return ret;

    c = ((void*)0);
    while (1) {
 ret = hx509_certs_next_cert(context, certs, cursor, &c);
 if (ret)
     break;
 if (c == ((void*)0))
     break;
 if (_hx509_cert_private_key(c)) {
     hx509_cert_free(c);
     continue;
 }

 ret = _hx509_match_keys(c, value->private_key);
 if (ret) {
     _hx509_cert_assign_key(c, value->private_key);
     hx509_cert_free(c);
     found = 0;
     break;
 }
 hx509_cert_free(c);
    }

    hx509_certs_end_seq(context, certs, cursor);

    if (found)
 hx509_clear_error_string(context);

    return found;
}
