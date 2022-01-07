
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rl_insert (int,char) ;

int
rl_newline(int count __attribute__((__unused__)),
    int c __attribute__((__unused__)))
{



 return rl_insert(1, '\n');
}
