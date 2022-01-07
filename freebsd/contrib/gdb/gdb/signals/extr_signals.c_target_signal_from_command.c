
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum target_signal { ____Placeholder_target_signal } target_signal ;


 int error (char*) ;

enum target_signal
target_signal_from_command (int num)
{
  if (num >= 1 && num <= 15)
    return (enum target_signal) num;
  error ("Only signals 1-15 are valid as numeric signals.\nUse \"info signals\" for a list of symbolic signals.");

}
