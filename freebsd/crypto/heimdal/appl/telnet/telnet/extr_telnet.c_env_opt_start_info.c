
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TELQUAL_INFO ;
 int env_opt_start () ;
 int * opt_replyp ;

void
env_opt_start_info()
{
 env_opt_start();
 if (opt_replyp)
     opt_replyp[-1] = TELQUAL_INFO;
}
