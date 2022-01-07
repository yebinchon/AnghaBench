
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auditfilter_module {void* am_cookie; } ;



void
audit_filter_setcookie(void *instance, void *cookie)
{
 struct auditfilter_module *am;

 am = (struct auditfilter_module *)instance;
 am->am_cookie = cookie;
}
