
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {int dummy; } ;


 int tbl_fill_string (struct termp*,char*,size_t) ;

__attribute__((used)) static void
tbl_fill_char(struct termp *tp, char c, size_t len)
{
 char cp[2];

 cp[0] = c;
 cp[1] = '\0';
 tbl_fill_string(tp, cp, len);
}
