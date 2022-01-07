
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int special_chars ;
 int * strchr (int ,int) ;

__attribute__((used)) static inline int
is_special(
 int ch
 )
{
 return strchr(special_chars, ch) != ((void*)0);
}
