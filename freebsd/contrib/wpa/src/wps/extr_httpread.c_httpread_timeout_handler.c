
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct httpread {int cookie; int (* cb ) (struct httpread*,int ,int ) ;} ;


 int HTTPREAD_EVENT_TIMEOUT ;
 int MSG_DEBUG ;
 int stub1 (struct httpread*,int ,int ) ;
 int wpa_printf (int ,char*,struct httpread*) ;

__attribute__((used)) static void httpread_timeout_handler(void *eloop_data, void *user_ctx)
{
 struct httpread *h = user_ctx;
 wpa_printf(MSG_DEBUG, "httpread timeout (%p)", h);
 (*h->cb)(h, h->cookie, HTTPREAD_EVENT_TIMEOUT);
}
