
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {int dummy; } ;
struct roffsu {int scale; } ;


 int SCALE_HS_INIT (struct roffsu*,int ) ;
 int SCALE_MAX ;
 char* a2roffsu (char const*,struct roffsu*,int ) ;
 int term_hen (struct termp const*,struct roffsu*) ;
 int term_strlen (struct termp const*,char const*) ;

__attribute__((used)) static int
a2width(const struct termp *p, const char *v)
{
 struct roffsu su;
 const char *end;

 end = a2roffsu(v, &su, SCALE_MAX);
 if (end == ((void*)0) || *end != '\0') {
  SCALE_HS_INIT(&su, term_strlen(p, v));
  su.scale /= term_strlen(p, "0");
 }
 return term_hen(p, &su);
}
