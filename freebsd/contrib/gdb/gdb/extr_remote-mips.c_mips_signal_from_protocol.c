
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum target_signal { ____Placeholder_target_signal } target_signal ;


 int TARGET_SIGNAL_UNKNOWN ;

__attribute__((used)) static enum target_signal
mips_signal_from_protocol (int sig)
{



  if (sig <= 0
      || sig > 31)
    return TARGET_SIGNAL_UNKNOWN;





  return (enum target_signal) sig;
}
