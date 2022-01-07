
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct logininfo {int type; } ;


 int LTYPE_LOGOUT ;
 int login_write (struct logininfo*) ;

int
login_logout(struct logininfo *li)
{
 li->type = LTYPE_LOGOUT;
 return (login_write(li));
}
