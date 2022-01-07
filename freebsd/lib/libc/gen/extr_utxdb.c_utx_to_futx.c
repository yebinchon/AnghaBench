
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {int ut_type; } ;
struct futx {int fu_type; } ;




 int EMPTY ;






 int UTOF_ID (struct utmpx const*,struct futx*) ;
 int UTOF_PID (struct utmpx const*,struct futx*) ;
 int UTOF_STRING (struct utmpx const*,struct futx*,int ) ;
 int UTOF_TV (struct futx*) ;
 int UTOF_TYPE (struct utmpx const*,struct futx*) ;
 int host ;
 int line ;
 int memset (struct futx*,int ,int) ;
 int user ;

void
utx_to_futx(const struct utmpx *ut, struct futx *fu)
{

 memset(fu, 0, sizeof *fu);

 switch (ut->ut_type) {
 case 135:
 case 130:
 case 131:

 case 129:
  break;
 case 128:
  UTOF_ID(ut, fu);
  UTOF_STRING(ut, fu, user);
  UTOF_STRING(ut, fu, line);

  UTOF_STRING(ut, fu, host);
  UTOF_PID(ut, fu);
  break;
 case 133:
  UTOF_ID(ut, fu);
  UTOF_PID(ut, fu);
  break;
 case 132:
  UTOF_ID(ut, fu);
  UTOF_STRING(ut, fu, user);
  UTOF_STRING(ut, fu, line);
  UTOF_PID(ut, fu);
  break;
 case 134:
  UTOF_ID(ut, fu);
  UTOF_PID(ut, fu);
  break;
 default:
  fu->fu_type = EMPTY;
  return;
 }

 UTOF_TYPE(ut, fu);
 UTOF_TV(fu);
}
