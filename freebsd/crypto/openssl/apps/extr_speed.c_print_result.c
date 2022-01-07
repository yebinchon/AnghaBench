
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_printf (int ,char*,int,int ,double) ;
 int BIO_puts (int ,char*) ;
 int bio_err ;
 int exit (int) ;
 double* lengths ;
 scalar_t__ mr ;
 int * names ;
 double** results ;

__attribute__((used)) static void print_result(int alg, int run_no, int count, double time_used)
{
    if (count == -1) {
        BIO_puts(bio_err, "EVP error!\n");
        exit(1);
    }
    BIO_printf(bio_err,
               mr ? "+R:%d:%s:%f\n"
               : "%d %s's in %.2fs\n", count, names[alg], time_used);
    results[alg][run_no] = ((double)count) / time_used * lengths[run_no];
}
