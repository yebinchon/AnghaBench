
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int keyname; } ;
typedef TYPE_1__ ldns_tsig_credentials ;


 char* strdup (int ) ;

char *
ldns_tsig_keyname_clone(const ldns_tsig_credentials *tc)
{
 return strdup(tc->keyname);
}
