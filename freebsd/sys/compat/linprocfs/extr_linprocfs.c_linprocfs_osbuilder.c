
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sbuf {int dummy; } ;


 int sbuf_cat (struct sbuf*,char*) ;
 int strncpy (char*,char*,int) ;
 char* strstr (char*,char*) ;
 char* version ;

__attribute__((used)) static void
linprocfs_osbuilder(struct thread *td, struct sbuf *sb)
{
  sbuf_cat(sb, "des@freebsd.org");
}
