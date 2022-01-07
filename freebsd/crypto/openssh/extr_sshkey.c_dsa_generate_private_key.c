
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int DSA ;


 int DSA_free (int *) ;
 int DSA_generate_key (int *) ;
 int DSA_generate_parameters_ex (int *,int,int *,int ,int *,int *,int *) ;
 int * DSA_new () ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_KEY_LENGTH ;
 int SSH_ERR_LIBCRYPTO_ERROR ;

__attribute__((used)) static int
dsa_generate_private_key(u_int bits, DSA **dsap)
{
 DSA *private;
 int ret = SSH_ERR_INTERNAL_ERROR;

 if (dsap == ((void*)0))
  return SSH_ERR_INVALID_ARGUMENT;
 if (bits != 1024)
  return SSH_ERR_KEY_LENGTH;
 if ((private = DSA_new()) == ((void*)0)) {
  ret = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 *dsap = ((void*)0);
 if (!DSA_generate_parameters_ex(private, bits, ((void*)0), 0, ((void*)0),
     ((void*)0), ((void*)0)) || !DSA_generate_key(private)) {
  ret = SSH_ERR_LIBCRYPTO_ERROR;
  goto out;
 }
 *dsap = private;
 private = ((void*)0);
 ret = 0;
 out:
 DSA_free(private);
 return ret;
}
