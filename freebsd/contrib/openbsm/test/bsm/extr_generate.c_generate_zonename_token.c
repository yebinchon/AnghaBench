
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token_t ;


 int EX_UNAVAILABLE ;
 int * au_to_zonename (int ) ;
 int err (int ,char*) ;
 int write_token (char const*,char const*,int *) ;
 int zonename_sample ;

__attribute__((used)) static void
generate_zonename_token(const char *directory, const char *token_filename)
{
 token_t *zonename_token;

 zonename_token = au_to_zonename(zonename_sample);
 if (zonename_token == ((void*)0))
  err(EX_UNAVAILABLE, "au_to_zonename");
 write_token(directory, token_filename, zonename_token);
}
