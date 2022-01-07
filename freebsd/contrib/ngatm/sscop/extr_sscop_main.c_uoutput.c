
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_msg {int dummy; } ;
struct sscop {int dummy; } ;


 int sscop_window (struct sscop*,int) ;
 int user_msgout (struct uni_msg*) ;

__attribute__((used)) static void
uoutput(struct sscop *sscop, struct uni_msg *m)
{
 user_msgout(m);
 sscop_window(sscop, +1);
}
