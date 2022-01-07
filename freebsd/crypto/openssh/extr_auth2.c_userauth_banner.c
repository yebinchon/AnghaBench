
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * banner; } ;


 char* PRIVSEP (int ) ;
 int auth2_read_banner () ;
 int free (char*) ;
 TYPE_1__ options ;
 int userauth_send_banner (char*) ;

__attribute__((used)) static void
userauth_banner(void)
{
 char *banner = ((void*)0);

 if (options.banner == ((void*)0))
  return;

 if ((banner = PRIVSEP(auth2_read_banner())) == ((void*)0))
  goto done;
 userauth_send_banner(banner);

done:
 free(banner);
}
