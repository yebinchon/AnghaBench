
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {int dummy; } ;


 size_t term_len (struct termp const*,size_t) ;

__attribute__((used)) static size_t
term_tbl_len(size_t sz, void *arg)
{
 return term_len((const struct termp *)arg, sz);
}
