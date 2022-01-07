
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int ssize_t ;
struct TYPE_4__ {scalar_t__ ctt_size; } ;
typedef TYPE_1__ ctf_type_t ;
typedef int ctf_stype_t ;


 scalar_t__ CTF_LSIZE_SENT ;
 int CTF_TYPE_LSIZE (TYPE_1__ const*) ;
 scalar_t__ CTF_VERSION_1 ;

__attribute__((used)) static ssize_t
fbt_get_ctt_size(uint8_t version, const ctf_type_t *tp, ssize_t *sizep,
    ssize_t *incrementp)
{
 ssize_t size, increment;

 if (version > CTF_VERSION_1 &&
     tp->ctt_size == CTF_LSIZE_SENT) {
  size = CTF_TYPE_LSIZE(tp);
  increment = sizeof (ctf_type_t);
 } else {
  size = tp->ctt_size;
  increment = sizeof (ctf_stype_t);
 }

 if (sizep)
  *sizep = size;
 if (incrementp)
  *incrementp = increment;

 return (size);
}
