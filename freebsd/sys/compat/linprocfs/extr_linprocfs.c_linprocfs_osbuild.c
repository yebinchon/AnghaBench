
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sbuf {int dummy; } ;


 int sbuf_cat (struct sbuf*,char*) ;
 int sbuf_printf (struct sbuf*,char*,char*,char*) ;
 int strncpy (char*,int ,int) ;
 char* strstr (char*,char*) ;
 int version ;

__attribute__((used)) static void
linprocfs_osbuild(struct thread *td, struct sbuf *sb)
{
  sbuf_cat(sb, "#4 Sun Dec 18 04:30:00 CET 1977");
}
