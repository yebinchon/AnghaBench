
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RETSIGTYPE ;


 int val ;

__attribute__((used)) static RETSIGTYPE
segv_handler(int sig)
{
    val = 1;
}
