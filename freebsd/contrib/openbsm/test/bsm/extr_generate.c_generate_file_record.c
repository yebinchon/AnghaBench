
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token_t ;


 int AUE_NULL ;
 int EX_UNAVAILABLE ;
 int * au_to_file (char*,int ) ;
 int err (int ,char*) ;
 int file_token_timeval ;
 int write_record (char const*,char const*,int *,int ) ;

__attribute__((used)) static void
generate_file_record(const char *directory, const char *record_filename)
{
 token_t *file_token;

 file_token = au_to_file("test", file_token_timeval);
 if (file_token == ((void*)0))
  err(EX_UNAVAILABLE, "au_to_file");
 write_record(directory, record_filename, file_token, AUE_NULL);
}
