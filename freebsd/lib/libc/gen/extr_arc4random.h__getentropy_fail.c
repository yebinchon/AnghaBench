
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGKILL ;
 int raise (int ) ;

__attribute__((used)) static inline void
_getentropy_fail(void)
{
 raise(SIGKILL);
}
