
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int quit ;
 int reread_config ;

__attribute__((used)) static void
signal_handler(int signum)
{

 switch (signum) {
 case 131:
  reread_config++;
  break;

 case 130:
 case 128:
 case 129:
  quit++;
  break;
 }
}
