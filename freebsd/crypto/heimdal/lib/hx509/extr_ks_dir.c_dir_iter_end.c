
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dircursor {int dir; scalar_t__ certs; int * iter; } ;
typedef int hx509_context ;
typedef int hx509_certs ;


 int closedir (int ) ;
 int free (struct dircursor*) ;
 int hx509_certs_end_seq (int ,scalar_t__,int *) ;
 int hx509_certs_free (scalar_t__*) ;

__attribute__((used)) static int
dir_iter_end(hx509_context context,
      hx509_certs certs,
      void *data,
      void *cursor)
{
    struct dircursor *d = cursor;

    if (d->certs) {
 hx509_certs_end_seq(context, d->certs, d->iter);
 d->iter = ((void*)0);
 hx509_certs_free(&d->certs);
    }
    closedir(d->dir);
    free(d);
    return 0;
}
