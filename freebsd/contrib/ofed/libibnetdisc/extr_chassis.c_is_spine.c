
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ibnd_node_t ;


 scalar_t__ is_spine_2004 (int *) ;
 scalar_t__ is_spine_2012 (int *) ;
 scalar_t__ is_spine_4200 (int *) ;
 scalar_t__ is_spine_4700 (int *) ;
 scalar_t__ is_spine_4700x2 (int *) ;
 scalar_t__ is_spine_9096 (int *) ;
 scalar_t__ is_spine_9288 (int *) ;

__attribute__((used)) static int is_spine(ibnd_node_t * n)
{
 return (is_spine_9096(n) || is_spine_9288(n) ||
  is_spine_2004(n) || is_spine_2012(n) ||
  is_spine_4700(n) || is_spine_4700x2(n) ||
  is_spine_4200(n));
}
