
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gas_query {int dummy; } ;


 scalar_t__ gas_query_dialog_token_available (struct gas_query*,int const*,int) ;

__attribute__((used)) static int gas_query_new_dialog_token(struct gas_query *gas, const u8 *dst)
{
 static int next_start = 0;
 int dialog_token;

 for (dialog_token = 0; dialog_token < 256; dialog_token++) {
  if (gas_query_dialog_token_available(
       gas, dst, (next_start + dialog_token) % 256))
   break;
 }
 if (dialog_token == 256)
  return -1;
 dialog_token = (next_start + dialog_token) % 256;
 next_start = (dialog_token + 1) % 256;
 return dialog_token;
}
