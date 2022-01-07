
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_file (int,char*,int,int) ;
 int delete_file (int,char*,int,int) ;

__attribute__((used)) static int
do_file(int agent_fd, int deleting, int key_only, char *file, int qflag)
{
 if (deleting) {
  if (delete_file(agent_fd, file, key_only, qflag) == -1)
   return -1;
 } else {
  if (add_file(agent_fd, file, key_only, qflag) == -1)
   return -1;
 }
 return 0;
}
