
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct types {scalar_t__ t_name; int t_type; int t_mode; } ;


 int COMPLETE ;
 int TYPE_I ;
 int TYPE_L ;
 char* bytename ;
 int command (char*,int ,...) ;
 int curtype ;
 scalar_t__ debug ;
 int printf (char*,int) ;
 struct types* types ;
 int verbose ;

void
changetype(int newtype, int show)
{
 struct types *p;
 int comret, oldverbose = verbose;

 if (newtype == 0)
  newtype = TYPE_I;
 if (newtype == curtype)
  return;
 if (debug == 0 && show == 0)
  verbose = 0;
 for (p = types; p->t_name; p++)
  if (newtype == p->t_type)
   break;
 if (p->t_name == 0) {
  printf("ftp: internal error: unknown type %d\n", newtype);
  return;
 }
 if (newtype == TYPE_L && bytename[0] != '\0')
  comret = command("TYPE %s %s", p->t_mode, bytename);
 else
  comret = command("TYPE %s", p->t_mode);
 if (comret == COMPLETE)
  curtype = newtype;
 verbose = oldverbose;
}
