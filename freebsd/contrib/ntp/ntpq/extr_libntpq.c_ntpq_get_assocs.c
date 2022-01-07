
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXASSOC ;
 int ntpq_associations ;
 int ntpq_read_associations (int ,int ) ;

int ntpq_get_assocs ( void )
{
    return ntpq_read_associations( ntpq_associations, MAXASSOC );
}
