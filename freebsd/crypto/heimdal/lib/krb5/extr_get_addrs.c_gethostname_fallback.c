
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct hostent {int h_length; int h_addr; int h_addrtype; } ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
struct TYPE_6__ {int len; TYPE_2__* val; } ;
typedef TYPE_1__ krb5_addresses ;
typedef int hostname ;
struct TYPE_8__ {scalar_t__ length; int * data; } ;
struct TYPE_7__ {TYPE_3__ address; int addr_type; } ;


 scalar_t__ ENOMEM ;
 int MAXHOSTNAMELEN ;
 int N_ (char*,char*) ;
 scalar_t__ errno ;
 int free (TYPE_2__*) ;
 scalar_t__ gethostname (char*,int) ;
 scalar_t__ krb5_data_copy (TYPE_3__*,int ,int ) ;
 int krb5_set_error_message (int ,scalar_t__,char*,...) ;
 TYPE_2__* malloc (int) ;
 struct hostent* roken_gethostbyname (char*) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static krb5_error_code
gethostname_fallback (krb5_context context, krb5_addresses *res)
{
    krb5_error_code ret;
    char hostname[MAXHOSTNAMELEN];
    struct hostent *hostent;

    if (gethostname (hostname, sizeof(hostname))) {
 ret = errno;
 krb5_set_error_message(context, ret, "gethostname: %s", strerror(ret));
 return ret;
    }
    hostent = roken_gethostbyname (hostname);
    if (hostent == ((void*)0)) {
 ret = errno;
 krb5_set_error_message (context, ret, "gethostbyname %s: %s",
    hostname, strerror(ret));
 return ret;
    }
    res->len = 1;
    res->val = malloc (sizeof(*res->val));
    if (res->val == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM, N_("malloc: out of memory", ""));
 return ENOMEM;
    }
    res->val[0].addr_type = hostent->h_addrtype;
    res->val[0].address.data = ((void*)0);
    res->val[0].address.length = 0;
    ret = krb5_data_copy (&res->val[0].address,
     hostent->h_addr,
     hostent->h_length);
    if (ret) {
 free (res->val);
 return ret;
    }
    return 0;
}
