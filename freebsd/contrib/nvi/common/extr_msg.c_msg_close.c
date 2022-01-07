
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ nl_catd ;
struct TYPE_3__ {scalar_t__ catd; } ;
typedef TYPE_1__ GS ;


 int catclose (scalar_t__) ;

void
msg_close(GS *gp)
{
 if (gp->catd != (nl_catd)-1)
  (void)catclose(gp->catd);
}
