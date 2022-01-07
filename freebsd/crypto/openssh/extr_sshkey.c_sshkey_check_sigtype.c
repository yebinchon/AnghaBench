
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_SIGN_ALG_UNSUPPORTED ;
 int free (char*) ;
 int get_sigtype (int const*,size_t,char**) ;
 char* sshkey_sigalg_by_name (char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

int
sshkey_check_sigtype(const u_char *sig, size_t siglen,
    const char *requested_alg)
{
 const char *expected_alg;
 char *sigtype = ((void*)0);
 int r;

 if (requested_alg == ((void*)0))
  return 0;
 if ((expected_alg = sshkey_sigalg_by_name(requested_alg)) == ((void*)0))
  return SSH_ERR_INVALID_ARGUMENT;
 if ((r = get_sigtype(sig, siglen, &sigtype)) != 0)
  return r;
 r = strcmp(expected_alg, sigtype) == 0;
 free(sigtype);
 return r ? 0 : SSH_ERR_SIGN_ALG_UNSUPPORTED;
}
