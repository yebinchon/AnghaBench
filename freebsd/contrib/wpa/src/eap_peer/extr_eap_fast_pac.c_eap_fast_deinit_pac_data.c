
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_fast_read_ctx {scalar_t__ f; int buf; } ;


 int fclose (scalar_t__) ;
 int os_free (int ) ;

__attribute__((used)) static void eap_fast_deinit_pac_data(struct eap_fast_read_ctx *rc)
{
 os_free(rc->buf);
 if (rc->f)
  fclose(rc->f);
}
