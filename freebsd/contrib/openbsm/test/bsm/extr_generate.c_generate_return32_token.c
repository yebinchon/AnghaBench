
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token_t ;


 int EX_UNAVAILABLE ;
 int au_errno_to_bsm (int ) ;
 int * au_to_return32 (int ,int ) ;
 int err (int ,char*) ;
 int return32_ret ;
 int return32_status ;
 int write_token (char const*,char const*,int *) ;

__attribute__((used)) static void
generate_return32_token(const char *directory, const char *token_filename)
{
 token_t *return32_token;

 return32_token = au_to_return32(au_errno_to_bsm(return32_status),
     return32_ret);
 if (return32_token == ((void*)0))
  err(EX_UNAVAILABLE, "au_to_return32");
 write_token(directory, token_filename, return32_token);
}
