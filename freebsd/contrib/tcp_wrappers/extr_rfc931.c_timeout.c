
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int longjmp (int ,int) ;
 int timebuf ;

__attribute__((used)) static void timeout(int sig)
{
    longjmp(timebuf, sig);
}
