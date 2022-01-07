
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token_t ;


 int EX_UNAVAILABLE ;
 int * au_to_path (int ) ;
 int err (int ,char*) ;
 int path_token_path ;
 int write_token (char const*,char const*,int *) ;

__attribute__((used)) static void
generate_path_token(const char *directory, const char *token_filename)
{
 token_t *path_token;

 path_token = au_to_path(path_token_path);
 if (path_token == ((void*)0))
  err(EX_UNAVAILABLE, "au_to_path");
 write_token(directory, token_filename, path_token);
}
