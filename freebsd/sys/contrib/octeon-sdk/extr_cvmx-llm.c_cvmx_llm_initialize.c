
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cvmx_llm_initialize_desc (int *) ;

int cvmx_llm_initialize()
{
    if (cvmx_llm_initialize_desc(((void*)0)) < 0)
        return -1;

    return 0;
}
