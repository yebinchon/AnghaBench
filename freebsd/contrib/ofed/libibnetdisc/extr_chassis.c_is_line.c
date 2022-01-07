
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ibnd_node_t ;


 scalar_t__ is_line_2024 (int *) ;
 scalar_t__ is_line_24 (int *) ;
 scalar_t__ is_line_4700 (int *) ;
 scalar_t__ is_line_8 (int *) ;

__attribute__((used)) static int is_line(ibnd_node_t * n)
{
 return (is_line_24(n) || is_line_8(n) ||
  is_line_2024(n) || is_line_4700(n));
}
