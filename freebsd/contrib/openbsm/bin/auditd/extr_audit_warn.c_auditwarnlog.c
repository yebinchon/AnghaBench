
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 char* AUDITWARN_SCRIPT ;
 int LOG_ERR ;
 int execv (char*,char**) ;
 int exit (int) ;
 int fork () ;
 int syslog (int ,char*,char*) ;

__attribute__((used)) static int
auditwarnlog(char *args[])
{
 char *loc_args[9];
 pid_t pid;
 int i;

 loc_args[0] = AUDITWARN_SCRIPT;
 for (i = 0; args[i] != ((void*)0) && i < 8; i++)
  loc_args[i+1] = args[i];
 loc_args[i+1] = ((void*)0);

 pid = fork();
 if (pid == -1)
  return (-1);
 if (pid == 0) {



  execv(AUDITWARN_SCRIPT, loc_args);
  syslog(LOG_ERR, "Could not exec %s (%m)\n",
      AUDITWARN_SCRIPT);
  exit(1);
 }



 return (0);
}
