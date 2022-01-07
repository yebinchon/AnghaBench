
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum target_signal { ____Placeholder_target_signal } target_signal ;
struct TYPE_2__ {char* name; } ;


 int TARGET_SIGNAL_FIRST ;
 int TARGET_SIGNAL_LAST ;
 TYPE_1__* signals ;

char *
target_signal_to_name (enum target_signal sig)
{
  if ((sig >= TARGET_SIGNAL_FIRST) && (sig <= TARGET_SIGNAL_LAST)
      && signals[sig].name != ((void*)0))
    return signals[sig].name;
  else


    return "?";
}
