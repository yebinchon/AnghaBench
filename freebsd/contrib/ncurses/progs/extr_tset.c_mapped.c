
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ porttype; int conditional; int speed; char const* type; struct TYPE_3__* next; } ;
typedef TYPE_1__ MAP ;



 int FALSE ;




 int TRUE ;
 TYPE_1__* maplist ;
 scalar_t__ ospeed ;
 int strcmp (scalar_t__,char const*) ;

__attribute__((used)) static const char *
mapped(const char *type)
{
    MAP *mapp;
    int match;

    for (mapp = maplist; mapp; mapp = mapp->next)
 if (mapp->porttype == 0 || !strcmp(mapp->porttype, type)) {
     switch (mapp->conditional) {
     case 0:
  match = TRUE;
  break;
     case 132:
  match = ((int) ospeed == mapp->speed);
  break;
     case 131:
  match = ((int) ospeed >= mapp->speed);
  break;
     case 130:
  match = ((int) ospeed > mapp->speed);
  break;
     case 129:
  match = ((int) ospeed <= mapp->speed);
  break;
     case 128:
  match = ((int) ospeed < mapp->speed);
  break;
     default:
  match = FALSE;
     }
     if (match)
  return (mapp->type);
 }

    return (type);
}
