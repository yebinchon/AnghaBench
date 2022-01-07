
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int u_int16_t ;
typedef int u_char ;
typedef int token_t ;
struct timeval {int tv_usec; int tv_sec; } ;
struct TYPE_2__ {int at_type; int * at_addr; } ;
struct auditinfo_addr {TYPE_1__ ai_termid; } ;
typedef TYPE_1__ au_tid_addr_t ;
typedef int au_event_t ;
typedef int au_emod_t ;


 int ADD_MEM (int *,int *,int) ;
 int ADD_U_CHAR (int *,int ) ;
 int ADD_U_INT16 (int *,int ) ;
 int ADD_U_INT32 (int *,int) ;
 int AUDIT_HEADER_VERSION_OPENBSM ;
 int AUT_HEADER32_EX ;
 int AU_IPv4 ;
 int AU_IPv6 ;
 int GET_TOKEN_AREA (int *,int *,int) ;

token_t *
au_to_header32_ex_tm(int rec_size, au_event_t e_type, au_emod_t e_mod,
    struct timeval tm, struct auditinfo_addr *aia)
{
 token_t *t;
 u_char *dptr = ((void*)0);
 u_int32_t timems;
 au_tid_addr_t *tid;

 tid = &aia->ai_termid;
 if (tid->at_type != AU_IPv4 && tid->at_type != AU_IPv6)
  return (((void*)0));
 GET_TOKEN_AREA(t, dptr, sizeof(u_char) + sizeof(u_int32_t) +
     sizeof(u_char) + 2 * sizeof(u_int16_t) + 3 *
     sizeof(u_int32_t) + tid->at_type);
 if (t == ((void*)0))
  return (((void*)0));

 ADD_U_CHAR(dptr, AUT_HEADER32_EX);
 ADD_U_INT32(dptr, rec_size);
 ADD_U_CHAR(dptr, AUDIT_HEADER_VERSION_OPENBSM);
 ADD_U_INT16(dptr, e_type);
 ADD_U_INT16(dptr, e_mod);

 ADD_U_INT32(dptr, tid->at_type);
 if (tid->at_type == AU_IPv6)
  ADD_MEM(dptr, &tid->at_addr[0], 4 * sizeof(u_int32_t));
 else
  ADD_MEM(dptr, &tid->at_addr[0], sizeof(u_int32_t));
 timems = tm.tv_usec/1000;

 ADD_U_INT32(dptr, tm.tv_sec);
 ADD_U_INT32(dptr, timems);

 return (t);
}
