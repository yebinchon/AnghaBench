
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BY_DIR_HASH ;


 int OPENSSL_free (int *) ;

__attribute__((used)) static void by_dir_hash_free(BY_DIR_HASH *hash)
{
    OPENSSL_free(hash);
}
