
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_printf (int ,char*) ;
 int ERR_print_errors (int ) ;
 int OPENSSL_free (int *) ;
 int RAND_write_file (int *) ;
 int bio_err ;
 int * save_rand_file ;

void app_RAND_write(void)
{
    if (save_rand_file == ((void*)0))
        return;
    if (RAND_write_file(save_rand_file) == -1) {
        BIO_printf(bio_err, "Cannot write random bytes:\n");
        ERR_print_errors(bio_err);
    }
    OPENSSL_free(save_rand_file);
    save_rand_file = ((void*)0);
}
