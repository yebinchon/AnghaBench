
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostkeys {int dummy; } ;
struct hostkey_entry {int dummy; } ;


 scalar_t__ HOST_FOUND ;
 scalar_t__ check_hostkeys_by_key_or_type (struct hostkeys*,int *,int,struct hostkey_entry const**) ;

int
lookup_key_in_hostkeys_by_type(struct hostkeys *hostkeys, int keytype,
    const struct hostkey_entry **found)
{
 return (check_hostkeys_by_key_or_type(hostkeys, ((void*)0), keytype,
     found) == HOST_FOUND);
}
