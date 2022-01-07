
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {int dummy; } ;


 size_t term_strlen (struct termp const*,char const*) ;

__attribute__((used)) static size_t
term_tbl_strlen(const char *p, void *arg)
{
 return term_strlen((const struct termp *)arg, p);
}
