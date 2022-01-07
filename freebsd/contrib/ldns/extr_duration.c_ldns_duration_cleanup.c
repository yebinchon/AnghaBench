
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_duration_type ;


 int free (int *) ;

void
ldns_duration_cleanup(ldns_duration_type* duration)
{
    if (!duration) {
        return;
    }
    free(duration);
    return;
}
