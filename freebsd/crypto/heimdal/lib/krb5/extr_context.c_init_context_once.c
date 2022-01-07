
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* krb5_context ;


 int HEIMDAL_LOCALEDIR ;
 int HEIMDAL_TEXTDOMAIN ;
 int _krb5_load_plugins (void*,char*,int ) ;
 int bindtextdomain (int ,int ) ;
 int sysplugin_dirs ;

__attribute__((used)) static void
init_context_once(void *ctx)
{
    krb5_context context = ctx;

    _krb5_load_plugins(context, "krb5", sysplugin_dirs);

    bindtextdomain(HEIMDAL_TEXTDOMAIN, HEIMDAL_LOCALEDIR);
}
