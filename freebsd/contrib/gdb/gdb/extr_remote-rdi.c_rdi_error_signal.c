
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum target_signal { ____Placeholder_target_signal } target_signal ;
 int TARGET_SIGNAL_ILL ;
 int TARGET_SIGNAL_INT ;
 int TARGET_SIGNAL_SEGV ;
 int TARGET_SIGNAL_TERM ;
 int TARGET_SIGNAL_TRAP ;
 int TARGET_SIGNAL_UNKNOWN ;

__attribute__((used)) static enum target_signal
rdi_error_signal (int err)
{
  switch (err)
    {
    case 148:
      return 0;
    case 142:
      return TARGET_SIGNAL_TERM;
    case 137:
      return TARGET_SIGNAL_ILL;
    case 140:
    case 144:
    case 156:
      return TARGET_SIGNAL_TRAP;
    case 165:
      return TARGET_SIGNAL_SEGV;
    case 153:
    case 154:
      return TARGET_SIGNAL_TRAP;
    case 155:
      return TARGET_SIGNAL_TERM;
    case 158:
      return TARGET_SIGNAL_TRAP;
    case 145:
    case 139:
    case 128:
    case 138:
      return TARGET_SIGNAL_UNKNOWN;
    case 162:
    case 152:
      return TARGET_SIGNAL_ILL;
    case 164:
    case 132:
    case 131:
    case 163:
    case 160:
    case 133:
    case 161:
    case 134:
    case 147:
      return TARGET_SIGNAL_UNKNOWN;
    case 157:
    case 129:
      return TARGET_SIGNAL_TRAP;
    case 146:
    case 143:
      return TARGET_SIGNAL_UNKNOWN;
    case 130:
      return TARGET_SIGNAL_INT;
    case 151:
    case 149:
    case 159:
    case 141:
    case 150:
    case 135:
    case 136:
    default:
      return TARGET_SIGNAL_UNKNOWN;
    }
}
