
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct ocsp_fetch_options {char* url_path_string; int pool_strings; int nonce_flag; int pass_strings; } ;
typedef int nonce ;
typedef int hx509_lock ;
typedef int hx509_certs ;
struct TYPE_6__ {scalar_t__ length; int data; } ;
typedef TYPE_1__ heim_octet_string ;
typedef int FILE ;


 int abort () ;
 int certs_strings (int ,char*,int ,int ,int *) ;
 int context ;
 int der_free_octet_string (TYPE_1__*) ;
 int errx (int,char*,...) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,char const*,unsigned long) ;
 int fwrite (int ,scalar_t__,int,int *) ;
 int hx509_certs_append (int ,int ,int ,char*) ;
 int hx509_certs_free (int *) ;
 int hx509_certs_init (int ,char*,int ,int *,int *) ;
 int hx509_err (int ,int,int,char*) ;
 int hx509_lock_init (int ,int *) ;
 int hx509_ocsp_request (int ,int ,int ,int *,int *,TYPE_1__*,TYPE_1__*) ;
 int lock_strings (int ,int *) ;
 int memset (TYPE_1__**,int ,int) ;

int
ocsp_fetch(struct ocsp_fetch_options *opt, int argc, char **argv)
{
    hx509_certs reqcerts, pool;
    heim_octet_string req, nonce_data, *nonce = &nonce_data;
    hx509_lock lock;
    int i, ret;
    char *file;
    const char *url = "/";

    memset(&nonce, 0, sizeof(nonce));

    hx509_lock_init(context, &lock);
    lock_strings(lock, &opt->pass_strings);


    if (!opt->nonce_flag)
 nonce = ((void*)0);

    if (opt->url_path_string)
 url = opt->url_path_string;

    ret = hx509_certs_init(context, "MEMORY:ocsp-pool", 0, ((void*)0), &pool);
    if (ret) hx509_err(context, 1, ret, "hx509_certs_init: MEMORY");

    certs_strings(context, "ocsp-pool", pool, lock, &opt->pool_strings);

    file = argv[0];

    ret = hx509_certs_init(context, "MEMORY:ocsp-req", 0, ((void*)0), &reqcerts);
    if (ret) hx509_err(context, 1, ret, "hx509_certs_init: MEMORY");

    for (i = 1; i < argc; i++) {
 ret = hx509_certs_append(context, reqcerts, lock, argv[i]);
 if (ret)
     errx(1, "hx509_certs_append: req: %s: %d", argv[i], ret);
    }

    ret = hx509_ocsp_request(context, reqcerts, pool, ((void*)0), ((void*)0), &req, nonce);
    if (ret)
 errx(1, "hx509_ocsp_request: req: %d", ret);

    {
 FILE *f;

 f = fopen(file, "w");
 if (f == ((void*)0))
     abort();

 fprintf(f,
  "POST %s HTTP/1.0\r\n"
  "Content-Type: application/ocsp-request\r\n"
  "Content-Length: %ld\r\n"
  "\r\n",
  url,
  (unsigned long)req.length);
 fwrite(req.data, req.length, 1, f);
 fclose(f);
    }

    if (nonce)
 der_free_octet_string(nonce);

    hx509_certs_free(&reqcerts);
    hx509_certs_free(&pool);

    return 0;
}
