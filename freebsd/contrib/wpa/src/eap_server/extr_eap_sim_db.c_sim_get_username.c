
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;


 char* dup_binstr (char const*,size_t) ;

char * sim_get_username(const u8 *identity, size_t identity_len)
{
 size_t pos;

 if (identity == ((void*)0))
  return ((void*)0);

 for (pos = 0; pos < identity_len; pos++) {
  if (identity[pos] == '@' || identity[pos] == '\0')
   break;
 }

 return dup_binstr(identity, pos);
}
