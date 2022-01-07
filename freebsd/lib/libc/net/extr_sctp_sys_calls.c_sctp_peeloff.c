
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sctp_assoc_t ;


 int ENOTSUP ;
 int errno ;

int
sctp_peeloff(int sd, sctp_assoc_t assoc_id)
{

 errno = ENOTSUP;
 return (-1);
}
