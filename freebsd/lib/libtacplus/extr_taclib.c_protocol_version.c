
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TAC_VER_MAJOR ;

__attribute__((used)) static int
protocol_version(int msg_type, int var, int type)
{
    int minor;

    switch (msg_type) {
        case 143:

     switch (var) {
         case 142:
      switch (type) {

          case 129:
   case 131:
   case 130:
   case 132:
       minor = 1;
   break;

   default:
       minor = 0;
   break;
       }
  break;

  case 133:
      minor = 1;
  break;

  default:
      minor = 0;
  break;
     };
 break;

 case 128:

     switch (var) {







                case 136:
                case 137:
                case 140:
                case 139:
                case 141:
                case 138:
                case 134:
                case 135:
      switch (type) {
          case 129:
   case 131:
   case 130:
   case 132:
       minor = 1;
   break;

   default:
       minor = 0;
   break;
       }
         break;
         default:
      minor = 0;
  break;
     }
        break;

 case 144:

 default:
     minor = 0;
        break;
    }

    return TAC_VER_MAJOR << 4 | minor;
}
