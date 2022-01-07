
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum target_signal { ____Placeholder_target_signal } target_signal ;
struct TYPE_2__ {int * name; } ;


 int TARGET_SIGNAL_HUP ;
 int TARGET_SIGNAL_LAST ;
 int TARGET_SIGNAL_UNKNOWN ;
 TYPE_1__* signals ;
 scalar_t__ strcmp (char*,int *) ;

enum target_signal
target_signal_from_name (char *name)
{
  enum target_signal sig;







  for (sig = TARGET_SIGNAL_HUP;
       sig < TARGET_SIGNAL_LAST;
       sig = (enum target_signal) ((int) sig + 1))
    if (signals[sig].name != ((void*)0)
 && strcmp (name, signals[sig].name) == 0)
      return sig;
  return TARGET_SIGNAL_UNKNOWN;
}
