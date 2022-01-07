
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Session ;


 int PRIVSEP (int ) ;
 int session_pty_cleanup2 (int *) ;

void
session_pty_cleanup(Session *s)
{
 PRIVSEP(session_pty_cleanup2(s));
}
