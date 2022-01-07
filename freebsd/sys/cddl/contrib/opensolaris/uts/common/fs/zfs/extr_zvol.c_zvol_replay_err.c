
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int ENOTSUP ;
 int SET_ERROR (int ) ;

__attribute__((used)) static int
zvol_replay_err(void *arg1, void *arg2, boolean_t byteswap)
{
 return (SET_ERROR(ENOTSUP));
}
