
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;


 int SSH2_FXP_DATA ;
 int debug (char*,int ,int) ;
 int send_data_or_handle (int ,int ,int const*,int) ;

__attribute__((used)) static void
send_data(u_int32_t id, const u_char *data, int dlen)
{
 debug("request %u: sent data len %d", id, dlen);
 send_data_or_handle(SSH2_FXP_DATA, id, data, dlen);
}
