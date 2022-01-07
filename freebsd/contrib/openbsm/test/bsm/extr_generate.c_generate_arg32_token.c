
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token_t ;


 int EX_UNAVAILABLE ;
 int arg32_token_n ;
 int arg32_token_text ;
 int arg32_token_v ;
 int * au_to_arg32 (int ,int ,int ) ;
 int err (int ,char*) ;
 int write_token (char const*,char const*,int *) ;

__attribute__((used)) static void
generate_arg32_token(const char *directory, const char *token_filename)
{
 token_t *arg32_token;

 arg32_token = au_to_arg32(arg32_token_n, arg32_token_text,
     arg32_token_v);
 if (arg32_token == ((void*)0))
  err(EX_UNAVAILABLE, "au_to_arg32");
 write_token(directory, token_filename, arg32_token);
}
