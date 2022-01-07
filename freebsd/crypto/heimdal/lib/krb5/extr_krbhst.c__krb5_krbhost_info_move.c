
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hostname; int * next; int * ai; int def_port; int port; int proto; } ;
typedef TYPE_1__ krb5_krbhst_info ;
typedef int krb5_error_code ;
typedef int krb5_context ;


 int ENOMEM ;
 int N_ (char*,char*) ;
 TYPE_1__* calloc (int,int) ;
 int krb5_set_error_message (int ,int ,int ) ;
 int memcpy (int ,int ,size_t) ;
 size_t strlen (int ) ;

krb5_error_code
_krb5_krbhost_info_move(krb5_context context,
   krb5_krbhst_info *from,
   krb5_krbhst_info **to)
{
    size_t hostnamelen = strlen(from->hostname);

    *to = calloc(1, sizeof(**to) + hostnamelen);
    if(*to == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM,
          N_("malloc: out of memory", ""));
 return ENOMEM;
    }

    (*to)->proto = from->proto;
    (*to)->port = from->port;
    (*to)->def_port = from->def_port;
    (*to)->ai = from->ai;
    from->ai = ((void*)0);
    (*to)->next = ((void*)0);
    memcpy((*to)->hostname, from->hostname, hostnamelen + 1);
    return 0;
}
