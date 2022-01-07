
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;
struct ssh {int dummy; } ;


 struct sshkey* get_hostkey_by_type (int,int,int ,struct ssh*) ;

struct sshkey *
get_hostkey_public_by_type(int type, int nid, struct ssh *ssh)
{
 return get_hostkey_by_type(type, nid, 0, ssh);
}
