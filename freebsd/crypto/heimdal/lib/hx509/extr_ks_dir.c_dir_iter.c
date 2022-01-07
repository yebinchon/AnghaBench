
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;
struct dircursor {int * certs; int * iter; int dir; } ;
typedef int hx509_context ;
typedef int hx509_certs ;
typedef int * hx509_cert ;


 int ENOMEM ;
 int asprintf (char**,char*,char*,int ) ;
 int free (char*) ;
 int hx509_certs_end_seq (int ,int *,int *) ;
 int hx509_certs_free (int **) ;
 int hx509_certs_init (int ,char*,int ,int *,int **) ;
 int hx509_certs_next_cert (int ,int *,int *,int **) ;
 int hx509_certs_start_seq (int ,int *,int **) ;
 struct dirent* readdir (int ) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
dir_iter(hx509_context context,
  hx509_certs certs, void *data, void *iter, hx509_cert *cert)
{
    struct dircursor *d = iter;
    int ret = 0;

    *cert = ((void*)0);

    do {
 struct dirent *dir;
 char *fn;

 if (d->certs) {
     ret = hx509_certs_next_cert(context, d->certs, d->iter, cert);
     if (ret) {
  hx509_certs_end_seq(context, d->certs, d->iter);
  d->iter = ((void*)0);
  hx509_certs_free(&d->certs);
  return ret;
     }
     if (*cert) {
  ret = 0;
  break;
     }
     hx509_certs_end_seq(context, d->certs, d->iter);
     d->iter = ((void*)0);
     hx509_certs_free(&d->certs);
 }

 dir = readdir(d->dir);
 if (dir == ((void*)0)) {
     ret = 0;
     break;
 }
 if (strcmp(dir->d_name, ".") == 0 || strcmp(dir->d_name, "..") == 0)
     continue;

 if (asprintf(&fn, "FILE:%s/%s", (char *)data, dir->d_name) == -1)
     return ENOMEM;

 ret = hx509_certs_init(context, fn, 0, ((void*)0), &d->certs);
 if (ret == 0) {

     ret = hx509_certs_start_seq(context, d->certs, &d->iter);
     if (ret)
     hx509_certs_free(&d->certs);
 }

 if (ret) {
     d->certs = ((void*)0);
     ret = 0;
 }

 free(fn);
    } while(ret == 0);

    return ret;
}
