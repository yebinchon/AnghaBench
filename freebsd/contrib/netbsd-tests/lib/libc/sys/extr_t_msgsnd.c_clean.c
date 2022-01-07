
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPC_RMID ;
 int MSG_KEY ;
 int msgctl (int,int ,int ) ;
 int msgget (int ,int ) ;

__attribute__((used)) static void
clean(void)
{
 int id;

 if ((id = msgget(MSG_KEY, 0)) != -1)
  (void)msgctl(id, IPC_RMID, 0);
}
