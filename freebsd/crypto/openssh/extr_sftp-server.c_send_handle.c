
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;


 int SSH2_FXP_HANDLE ;
 int debug (char*,int ,int) ;
 int free (int *) ;
 int handle_to_string (int,int **,int*) ;
 int send_data_or_handle (int ,int ,int *,int) ;

__attribute__((used)) static void
send_handle(u_int32_t id, int handle)
{
 u_char *string;
 int hlen;

 handle_to_string(handle, &string, &hlen);
 debug("request %u: sent handle handle %d", id, handle);
 send_data_or_handle(SSH2_FXP_HANDLE, id, string, hlen);
 free(string);
}
