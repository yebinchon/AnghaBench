
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {int ut_type; int ut_id; } ;
struct logininfo {int line; } ;


 int DEAD_PROCESS ;
 int construct_utmpx (struct logininfo*,struct utmpx*) ;
 int line_abbrevname (int ,int ,int) ;
 int utmpx_write_direct (struct logininfo*,struct utmpx*) ;
 int utmpx_write_library (struct logininfo*,struct utmpx*) ;

__attribute__((used)) static int
utmpx_perform_logout(struct logininfo *li)
{
 struct utmpx utx;

 construct_utmpx(li, &utx);
 utmpx_write_direct(li, &utx);

 return (1);
}
