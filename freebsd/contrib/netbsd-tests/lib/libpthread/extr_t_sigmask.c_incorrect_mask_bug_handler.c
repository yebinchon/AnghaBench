
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int count ;

__attribute__((used)) static void
incorrect_mask_bug_handler(int sig)
{
 count++;
}
