
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sshkey {int dummy; } ;


 int sshkey_read (struct sshkey*,char**) ;
 int sshkey_size (struct sshkey*) ;

int
hostfile_read_key(char **cpp, u_int *bitsp, struct sshkey *ret)
{
 char *cp;
 int r;


 for (cp = *cpp; *cp == ' ' || *cp == '\t'; cp++)
  ;

 if ((r = sshkey_read(ret, &cp)) != 0)
  return 0;


 for (; *cp == ' ' || *cp == '\t'; cp++)
  ;


 *cpp = cp;
 if (bitsp != ((void*)0))
  *bitsp = sshkey_size(ret);
 return 1;
}
