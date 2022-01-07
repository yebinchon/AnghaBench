
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int token_t ;
struct TYPE_3__ {int s_addr; } ;


 int AUE_NULL ;
 int EX_UNAVAILABLE ;
 int * au_to_in_addr (TYPE_1__*) ;
 int err (int ,char*) ;
 TYPE_1__ in_addr_token_addr ;
 int inet_addr (char*) ;
 int write_record (char const*,char const*,int *,int ) ;

__attribute__((used)) static void
generate_in_addr_record(const char *directory, const char *record_filename)
{
 token_t *in_addr_token;

 in_addr_token_addr.s_addr = inet_addr("192.168.100.15");

 in_addr_token = au_to_in_addr(&in_addr_token_addr);
 if (in_addr_token == ((void*)0))
  err(EX_UNAVAILABLE, "au_to_in_addr");
 write_record(directory, record_filename, in_addr_token, AUE_NULL);
}
