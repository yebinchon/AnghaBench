
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ open_sessions; } ;


 TYPE_1__ soft_token ;

__attribute__((used)) static const char *
has_session(void)
{
    return soft_token.open_sessions > 0 ? "yes" : "no";
}
