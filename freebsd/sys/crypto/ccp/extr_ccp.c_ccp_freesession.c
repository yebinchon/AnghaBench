
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_session {scalar_t__ pending; int active; } ;
typedef int device_t ;
typedef int crypto_session_t ;


 struct ccp_session* crypto_get_driver_session (int ) ;
 int device_printf (int ,char*,struct ccp_session*,scalar_t__) ;

__attribute__((used)) static void
ccp_freesession(device_t dev, crypto_session_t cses)
{
 struct ccp_session *s;

 s = crypto_get_driver_session(cses);

 if (s->pending != 0)
  device_printf(dev,
      "session %p freed with %d pending requests\n", s,
      s->pending);
 s->active = 0;
}
