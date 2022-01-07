
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;


 int KEY_UNSPEC ;
 int fatal (char*) ;
 int sshkey_free (struct sshkey*) ;
 struct sshkey* sshkey_new (int ) ;
 int sshkey_read (struct sshkey*,char**) ;

__attribute__((used)) static struct sshkey *
try_read_key(char **cpp)
{
 struct sshkey *ret;
 int r;

 if ((ret = sshkey_new(KEY_UNSPEC)) == ((void*)0))
  fatal("sshkey_new failed");
 if ((r = sshkey_read(ret, cpp)) == 0)
  return ret;

 sshkey_free(ret);
 return ((void*)0);
}
