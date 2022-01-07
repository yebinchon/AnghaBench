
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 fprintf(stderr,
"usage: mdconfig -a -t type [-n] [-o [no]option] ... [-f file]\n"
"                [-s size] [-S sectorsize] [-u unit] [-L label]\n"
"                [-x sectors/track] [-y heads/cylinder]\n"
"       mdconfig -d -u unit [-o [no]force]\n"
"       mdconfig -r -u unit -s size [-o [no]force]\n"
"       mdconfig -l [-v] [-n] [-f file] [-u unit]\n"
"       mdconfig file\n");
 fprintf(stderr, "\t\ttype = {malloc, vnode, swap}\n");
 fprintf(stderr, "\t\toption = {cache, cluster, compress, force,\n");
 fprintf(stderr, "\t\t          readonly, reserve, ro, verify}\n");
 fprintf(stderr, "\t\tsize = %%d (512 byte blocks), %%db (B),\n");
 fprintf(stderr, "\t\t       %%dk (kB), %%dm (MB), %%dg (GB), \n");
 fprintf(stderr, "\t\t       %%dt (TB), or %%dp (PB)\n");
 exit(1);
}
