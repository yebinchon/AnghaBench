
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FSEv07_DTable ;


 int free (int *) ;

void FSEv07_freeDTable (FSEv07_DTable* dt)
{
    free(dt);
}
