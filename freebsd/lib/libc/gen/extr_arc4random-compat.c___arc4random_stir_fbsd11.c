
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int syslog (int ,char*) ;

void
__arc4random_stir_fbsd11(void)
{
 static bool warned = 0;

 if (!warned)
  syslog(LOG_DEBUG, "Deprecated function arc4random_stir() called");
 warned = 1;
}
