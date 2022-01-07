
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;


 int auth_sock_dir ;
 int * auth_sock_name ;
 int restore_uid () ;
 int rmdir (int ) ;
 int temporarily_use_uid (struct passwd*) ;
 int unlink (int *) ;

__attribute__((used)) static void
auth_sock_cleanup_proc(struct passwd *pw)
{
 if (auth_sock_name != ((void*)0)) {
  temporarily_use_uid(pw);
  unlink(auth_sock_name);
  rmdir(auth_sock_dir);
  auth_sock_name = ((void*)0);
  restore_uid();
 }
}
