
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token_t ;


 int AUE_NULL ;
 int EX_UNAVAILABLE ;
 int * au_to_data (int ,int ,int ,int ) ;
 int data_token_data ;
 int data_token_unit_count ;
 int data_token_unit_print ;
 int data_token_unit_type ;
 int err (int ,char*) ;
 int write_record (char const*,char const*,int *,int ) ;

__attribute__((used)) static void
generate_data_record(const char *directory, const char *record_filename)
{
 token_t *data_token;

 data_token = au_to_data(data_token_unit_print, data_token_unit_type,
     data_token_unit_count, data_token_data);
 if (data_token == ((void*)0))
  err(EX_UNAVAILABLE, "au_to_data");
 write_record(directory, record_filename, data_token, AUE_NULL);
}
