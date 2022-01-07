
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* m_name; char* m_mailer; int m_argv; } ;
struct TYPE_3__ {char* m_name; char* m_mailer; int m_argv; } ;


 int discardargv ;
 TYPE_2__ discardmailer ;
 int errorargv ;
 TYPE_1__ errormailer ;

void
initerrmailers()
{
 if (discardmailer.m_name == ((void*)0))
 {

  discardmailer.m_name = "*discard*";
  discardmailer.m_mailer = "DISCARD";
  discardmailer.m_argv = discardargv;
 }
 if (errormailer.m_name == ((void*)0))
 {

  errormailer.m_name = "*error*";
  errormailer.m_mailer = "ERROR";
  errormailer.m_argv = errorargv;
 }
}
