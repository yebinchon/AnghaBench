
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token_t ;


 int EX_UNAVAILABLE ;
 int * au_to_header32_tm (int ,int ,int ,int ) ;
 int err (int ,char*) ;
 int header32_e_mod ;
 int header32_e_type ;
 int header32_tm ;
 int header32_token_len ;
 int write_token (char const*,char const*,int *) ;

__attribute__((used)) static void
generate_header32_token(const char *directory, const char *token_filename)
{
 token_t *header32_token;

 header32_token = au_to_header32_tm(header32_token_len,
     header32_e_type, header32_e_mod, header32_tm);
 if (header32_token == ((void*)0))
  err(EX_UNAVAILABLE, "au_to_header32");
 write_token(directory, token_filename, header32_token);
}
