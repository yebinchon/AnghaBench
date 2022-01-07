
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token_t ;


 int AUE_NULL ;
 int EX_UNAVAILABLE ;
 int * au_to_zonename (int ) ;
 int err (int ,char*) ;
 int write_record (char const*,char const*,int *,int ) ;
 int zonename_sample ;

__attribute__((used)) static void
generate_zonename_record(const char *directory, const char *record_filename)
{
 token_t *zonename_token;

 zonename_token = au_to_zonename(zonename_sample);
 if (zonename_token == ((void*)0))
  err(EX_UNAVAILABLE, "au_to_zonename");
 write_record(directory, record_filename, zonename_token, AUE_NULL);
}
