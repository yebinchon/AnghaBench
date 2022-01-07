
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputs (char const*,int ) ;
 scalar_t__ ntp_opterr ;
 char const* prog ;
 int putc (char,int ) ;
 int stderr ;

__attribute__((used)) static int
badopt(
 const char *mess,
 int ch
 )
{
 if (ntp_opterr) {
  fputs(prog, stderr);
  fputs(mess, stderr);
  (void) putc(ch, stderr);
  (void) putc('\n', stderr);
 }
 return ('?');
}
