
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int16_t ;
struct tac_handle {int dummy; } ;
struct clnt_str {int dummy; } ;


 int add_str_16 (struct tac_handle*,int*,struct clnt_str*) ;
 int generr (struct tac_handle*,char*) ;
 int ntohs (int) ;

__attribute__((used)) static int
add_str_8(struct tac_handle *h, u_int8_t *fld, struct clnt_str *cs)
{
 u_int16_t len;

 if (add_str_16(h, &len, cs) == -1)
  return -1;
 len = ntohs(len);
 if (len > 0xff) {
  generr(h, "Field too long");
  return -1;
 }
 *fld = len;
 return 0;
}
