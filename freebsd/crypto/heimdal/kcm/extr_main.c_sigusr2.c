
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RETSIGTYPE ;


 int kcm_context ;
 int kcm_debug_events (int ) ;

__attribute__((used)) static RETSIGTYPE
sigusr2(int sig)
{
    kcm_debug_events(kcm_context);
}
