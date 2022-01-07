
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token_t ;


 int EX_UNAVAILABLE ;
 int * au_to_trailer (int ) ;
 int err (int ,char*) ;
 int trailer_token_len ;
 int write_token (char const*,char const*,int *) ;

__attribute__((used)) static void
generate_trailer_token(const char *directory, const char *token_filename)
{
 token_t *trailer_token;

 trailer_token = au_to_trailer(trailer_token_len);
 if (trailer_token == ((void*)0))
  err(EX_UNAVAILABLE, "au_to_trailer");
 write_token(directory, token_filename, trailer_token);
}
