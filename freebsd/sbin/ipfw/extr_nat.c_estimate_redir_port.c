
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct nat44_cfg_spool {int dummy; } ;
struct nat44_cfg_redir {int dummy; } ;


 char* strchr (char*,char) ;

__attribute__((used)) static int
estimate_redir_port(int *ac, char ***av)
{
 size_t space = sizeof(struct nat44_cfg_redir);
 char *sep = **av;
 u_int c = 0;

 (void)ac;
 while ((sep = strchr(sep, ',')) != ((void*)0)) {
  c++;
  sep++;
 }

 if (c > 0)
  c++;

 space += c * sizeof(struct nat44_cfg_spool);

 return (space);
}
