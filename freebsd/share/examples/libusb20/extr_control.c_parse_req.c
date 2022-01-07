
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int bmRequestType; void* wLength; void* wIndex; void* wValue; int bRequest; } ;


 int fprintf (int ,char*,char*) ;
 int get_req (char*) ;
 TYPE_1__ setup ;
 int stderr ;
 void* strtoul (char*,int ,int ) ;

__attribute__((used)) static int
parse_req(int argc, char **argv)
{
  int idx;
  uint8_t rt = 0;

  for (idx = 0; argc != 0 && idx <= 6; argc--, idx++)
    switch (idx)
      {
      case 0:

 if (*argv[idx] == 'i')
   rt |= 0x80;
 else if (*argv[idx] == 'o')
            ;
 else
   {
     fprintf(stderr, "request direction must be \"in\" or \"out\" (got %s)\n",
      argv[idx]);
     return -1;
   }
 break;

      case 1:

 if (*argv[idx] == 's')
            ;
 else if (*argv[idx] == 'c')
   rt |= 0x20;
 else if (*argv[idx] == 'v')
   rt |= 0x40;
 else
   {
     fprintf(stderr,
      "request type must be one of \"standard\", \"class\", or \"vendor\" (got %s)\n",
      argv[idx]);
     return -1;
   }
 break;

      case 2:

 if (*argv[idx] == 'd')
            ;
 else if (*argv[idx] == 'i')
   rt |= 1;
 else if (*argv[idx] == 'e')
   rt |= 2;
 else if (*argv[idx] == 'o')
   rt |= 3;
 else
   {
     fprintf(stderr,
      "recipient must be one of \"device\", \"interface\", \"endpoint\", or \"other\" (got %s)\n",
      argv[idx]);
     return -1;
   }
 setup.bmRequestType = rt;
 break;

      case 3:
 setup.bRequest = get_req(argv[idx]);
 break;

      case 4:
 setup.wValue = strtoul(argv[idx], 0, 0);
 break;

      case 5:
 setup.wIndex = strtoul(argv[idx], 0, 0);
 break;

      case 6:
 setup.wLength = strtoul(argv[idx], 0, 0);
 break;
      }

  return argc;
}
