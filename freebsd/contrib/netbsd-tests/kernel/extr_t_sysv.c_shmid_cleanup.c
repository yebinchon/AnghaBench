
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPC_RMID ;
 int err (int,char*) ;
 int read_int (char const*) ;
 int shmctl (int,int ,int *) ;

__attribute__((used)) static void
shmid_cleanup(const char *name)
{
 int shmid;




 shmid = read_int(name);
 if (shmid != -1) {
  if (shmctl(shmid, IPC_RMID, ((void*)0)) == -1)
   err(1, "shmctl IPC_RMID");
 }
}
