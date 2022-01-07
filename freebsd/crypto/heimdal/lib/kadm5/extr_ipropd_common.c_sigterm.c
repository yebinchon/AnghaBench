
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RETSIGTYPE ;


 int exit_flag ;

__attribute__((used)) static RETSIGTYPE
sigterm(int sig)
{
    exit_flag = sig;
}
