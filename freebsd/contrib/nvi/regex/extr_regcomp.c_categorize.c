
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct re_guts {int ncategories; scalar_t__* categories; } ;
struct parse {scalar_t__ error; } ;
typedef scalar_t__ cat_t ;


 int CHAR_MAX ;
 int CHAR_MIN ;
 scalar_t__ isinsets (struct re_guts*,int) ;
 scalar_t__ samesets (struct re_guts*,int,int) ;

__attribute__((used)) static void
categorize(struct parse *p, struct re_guts *g)
{
}
