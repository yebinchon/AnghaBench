
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfs_node {int dummy; } ;


 int M_TEMP ;
 int M_WAITOK ;
 int PFS_RD ;
 int free (char*,int ) ;
 int linsysfs_cpuxonline ;
 char* malloc (int,int ,int ) ;
 int mp_maxcpus ;
 int mp_ncpus ;
 struct pfs_node* pfs_create_dir (struct pfs_node*,char*,int *,int *,int *,int ) ;
 int pfs_create_file (struct pfs_node*,char*,int *,int *,int *,int *,int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void
linsysfs_listcpus(struct pfs_node *dir)
{
 struct pfs_node *cpu;
 char *name;
 int i, count, len;

 len = 1;
 count = mp_maxcpus;
 while (count > 10) {
  count /= 10;
  len++;
 }
 len += sizeof("cpu");
 name = malloc(len, M_TEMP, M_WAITOK);

 for (i = 0; i < mp_ncpus; ++i) {

  sprintf(name, "cpu%d", i);
  cpu = pfs_create_dir(dir, name, ((void*)0), ((void*)0), ((void*)0), 0);

  pfs_create_file(cpu, "online", &linsysfs_cpuxonline,
      ((void*)0), ((void*)0), ((void*)0), PFS_RD);
 }
 free(name, M_TEMP);
}
