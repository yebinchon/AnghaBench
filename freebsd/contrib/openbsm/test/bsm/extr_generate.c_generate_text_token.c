
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token_t ;


 int EX_UNAVAILABLE ;
 int * au_to_text (int ) ;
 int err (int ,char*) ;
 int text_token_text ;
 int write_token (char const*,char const*,int *) ;

__attribute__((used)) static void
generate_text_token(const char *directory, const char *token_filename)
{
 token_t *text_token;

 text_token = au_to_text(text_token_text);
 if (text_token == ((void*)0))
  err(EX_UNAVAILABLE, "au_to_text");
 write_token(directory, token_filename, text_token);
}
