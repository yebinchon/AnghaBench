
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gas_dialog_info {int sd_resp; } ;


 int os_memset (struct gas_dialog_info*,int ,int) ;
 int wpabuf_free (int ) ;

void gas_serv_dialog_clear(struct gas_dialog_info *dia)
{
 wpabuf_free(dia->sd_resp);
 os_memset(dia, 0, sizeof(*dia));
}
