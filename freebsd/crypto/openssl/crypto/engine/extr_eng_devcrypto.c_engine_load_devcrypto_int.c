
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int ENGINE_add (int *) ;
 int ENGINE_free (int *) ;
 int * ENGINE_new () ;
 int ENGINE_set_DH (int *,int ) ;
 int ENGINE_set_DSA (int *,int ) ;
 int ENGINE_set_EC (int *,int ) ;
 int ENGINE_set_RSA (int *,int ) ;
 int ENGINE_set_ciphers (int *,int ) ;
 int ENGINE_set_destroy_function (int *,int ) ;
 int ENGINE_set_digests (int *,int ) ;
 int ENGINE_set_id (int *,char*) ;
 int ENGINE_set_name (int *,char*) ;
 scalar_t__ ENOENT ;
 int ERR_clear_error () ;
 int O_RDWR ;
 int cfd ;
 int close (int ) ;
 int devcrypto_ciphers ;
 int devcrypto_dh ;
 int devcrypto_digests ;
 int devcrypto_dsa ;
 int devcrypto_ec ;
 int devcrypto_rsa ;
 int devcrypto_unload ;
 scalar_t__ errno ;
 int fprintf (int ,char*,char*) ;
 int open (char*,int ,int ) ;
 int prepare_cipher_methods () ;
 int prepare_digest_methods () ;
 int stderr ;
 char* strerror (scalar_t__) ;

void engine_load_devcrypto_int()
{
    ENGINE *e = ((void*)0);

    if ((cfd = open("/dev/crypto", O_RDWR, 0)) < 0) {

        if (errno != ENOENT)

            fprintf(stderr, "Could not open /dev/crypto: %s\n", strerror(errno));
        return;
    }

    if ((e = ENGINE_new()) == ((void*)0)
        || !ENGINE_set_destroy_function(e, devcrypto_unload)) {
        ENGINE_free(e);





        close(cfd);
        return;
    }

    prepare_cipher_methods();




    if (!ENGINE_set_id(e, "devcrypto")
        || !ENGINE_set_name(e, "/dev/crypto engine")
        || !ENGINE_set_ciphers(e, devcrypto_ciphers)



        ) {
        ENGINE_free(e);
        return;
    }

    ENGINE_add(e);
    ENGINE_free(e);
    ERR_clear_error();
}
