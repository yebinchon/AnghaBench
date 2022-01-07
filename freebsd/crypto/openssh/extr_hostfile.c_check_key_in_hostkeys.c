
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;
struct hostkeys {int dummy; } ;
struct hostkey_entry {int dummy; } ;
typedef int HostStatus ;


 int check_hostkeys_by_key_or_type (struct hostkeys*,struct sshkey*,int ,struct hostkey_entry const**) ;
 int fatal (char*) ;

HostStatus
check_key_in_hostkeys(struct hostkeys *hostkeys, struct sshkey *key,
    const struct hostkey_entry **found)
{
 if (key == ((void*)0))
  fatal("no key to look up");
 return check_hostkeys_by_key_or_type(hostkeys, key, 0, found);
}
