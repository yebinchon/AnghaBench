
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct logininfo {int type; } ;


 int LTYPE_LOGIN ;
 int login_write (struct logininfo*) ;

int
login_login(struct logininfo *li)
{
 li->type = LTYPE_LOGIN;
 return (login_write(li));
}
