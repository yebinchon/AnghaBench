
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 scalar_t__ ssh_remove_all_identities (int,int) ;
 int stderr ;

__attribute__((used)) static int
delete_all(int agent_fd)
{
 int ret = -1;






 if (ssh_remove_all_identities(agent_fd, 2) == 0)
  ret = 0;

 ssh_remove_all_identities(agent_fd, 1);

 if (ret == 0)
  fprintf(stderr, "All identities removed.\n");
 else
  fprintf(stderr, "Failed to remove all identities.\n");

 return ret;
}
