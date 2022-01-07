
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;
struct ssh {int dummy; } ;
typedef int con ;


 int keyprint (int *,struct sshkey*) ;
 int * ssh_get_app_data (struct ssh*) ;

__attribute__((used)) static int
key_print_wrapper(struct sshkey *hostkey, struct ssh *ssh)
{
 con *c;

 if ((c = ssh_get_app_data(ssh)) != ((void*)0))
  keyprint(c, hostkey);

 return -1;
}
