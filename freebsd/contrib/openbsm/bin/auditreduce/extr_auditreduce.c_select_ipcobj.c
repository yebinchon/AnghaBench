
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ u_char ;


 scalar_t__ AT_IPC_MSG ;
 scalar_t__ AT_IPC_SEM ;
 scalar_t__ AT_IPC_SHM ;
 scalar_t__ ISOPTSET (int ,int ) ;
 int OPT_om ;
 int OPT_ose ;
 int OPT_osh ;
 int SETOPT (scalar_t__,int ) ;
 int opttochk ;
 int p_msgqobj ;
 int p_semobj ;
 int p_shmobj ;
 scalar_t__ strtol (int ,char**,int) ;

__attribute__((used)) static int
select_ipcobj(u_char type, uint32_t id, uint32_t *optchkd)
{

 if (type == AT_IPC_MSG) {
  SETOPT((*optchkd), OPT_om);
  if (ISOPTSET(opttochk, OPT_om)) {
   if (id != (uint32_t)strtol(p_msgqobj, (char **)((void*)0),
       10))
    return (0);
  }
  return (1);
 } else if (type == AT_IPC_SEM) {
  SETOPT((*optchkd), OPT_ose);
  if (ISOPTSET(opttochk, OPT_ose)) {
   if (id != (uint32_t)strtol(p_semobj, (char **)((void*)0), 10))
    return (0);
  }
  return (1);
 } else if (type == AT_IPC_SHM) {
  SETOPT((*optchkd), OPT_osh);
  if (ISOPTSET(opttochk, OPT_osh)) {
   if (id != (uint32_t)strtol(p_shmobj, (char **)((void*)0), 10))
    return (0);
  }
  return (1);
 }


 if (ISOPTSET(opttochk, OPT_om) || ISOPTSET(opttochk, OPT_ose)
     || ISOPTSET(opttochk, OPT_osh))
  return (0);

 return (1);
}
