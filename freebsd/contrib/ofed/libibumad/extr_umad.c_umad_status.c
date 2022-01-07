
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_user_mad {int status; } ;



int umad_status(void *umad)
{
 struct ib_user_mad *mad = umad;

 return mad->status;
}
