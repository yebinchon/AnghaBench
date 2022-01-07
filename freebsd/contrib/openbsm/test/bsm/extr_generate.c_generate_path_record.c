
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token_t ;


 int AUE_NULL ;
 int EX_UNAVAILABLE ;
 int * au_to_path (int ) ;
 int err (int ,char*) ;
 int path_token_path ;
 int write_record (char const*,char const*,int *,int ) ;

__attribute__((used)) static void
generate_path_record(const char *directory, const char *record_filename)
{
 token_t *path_token;

 path_token = au_to_path(path_token_path);
 if (path_token == ((void*)0))
  err(EX_UNAVAILABLE, "au_to_path");
 write_record(directory, record_filename, path_token, AUE_NULL);
}
