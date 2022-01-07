
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct cpack_state {size_t c_len; int const* c_buf; int const* c_next; } ;


 int memset (struct cpack_state*,int ,int) ;

int
cpack_init(struct cpack_state *cs, const uint8_t *buf, size_t buflen)
{
 memset(cs, 0, sizeof(*cs));

 cs->c_buf = buf;
 cs->c_len = buflen;
 cs->c_next = cs->c_buf;

 return 0;
}
