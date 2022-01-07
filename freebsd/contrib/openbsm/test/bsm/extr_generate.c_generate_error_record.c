
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token_t ;


 int AUE_NULL ;
 int EX_UNAVAILABLE ;
 int PATH_MAX ;
 int au_errno_to_bsm (int) ;
 int * au_to_return32 (int ,int) ;
 int err (int ,char*) ;
 int snprintf (char*,int,char*,char const*) ;
 int write_record (char const*,char*,int *,int ) ;

__attribute__((used)) static void
generate_error_record(const char *directory, const char *filename, int error)
{
 char pathname[PATH_MAX];
 token_t *return32_token;

 return32_token = au_to_return32(au_errno_to_bsm(error), -1);
 if (return32_token == ((void*)0))
  err(EX_UNAVAILABLE, "au_to_return32");
 (void)snprintf(pathname, PATH_MAX, "%s_record", filename);
 write_record(directory, pathname, return32_token, AUE_NULL);
}
