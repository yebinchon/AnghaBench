
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RETSIGTYPE ;


 int longjmp (int ,int) ;
 int peerdied ;
 int setcommandmode () ;

__attribute__((used)) static RETSIGTYPE
deadpeer(int sig)
{
 setcommandmode();
 longjmp(peerdied, -1);
}
