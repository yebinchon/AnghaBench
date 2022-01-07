
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token_t ;


 int EX_UNAVAILABLE ;
 int * au_to_opaque (int ,int ) ;
 int err (int ,char*) ;
 int opaque_token_bytes ;
 int opaque_token_data ;
 int write_token (char const*,char const*,int *) ;

__attribute__((used)) static void
generate_opaque_token(const char *directory, const char *token_filename)
{
 token_t *opaque_token;

 opaque_token = au_to_opaque(opaque_token_data, opaque_token_bytes);
 if (opaque_token == ((void*)0))
  err(EX_UNAVAILABLE, "au_to_opaque");
 write_token(directory, token_filename, opaque_token);
}
