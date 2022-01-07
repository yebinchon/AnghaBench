
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RETSIGTYPE ;
 int exit (int ) ;
 int sig_record_quit ;
 int sig_record_reload ;

__attribute__((used)) static RETSIGTYPE record_sigh(int sig)
{






 switch(sig)
 {
  case 128:

  case 129:


  case 133:

  case 131:
   sig_record_quit++;
   break;

  case 132:
   sig_record_reload++;
   break;


  case 130:
   break;

  default:

   break;
 }
}
