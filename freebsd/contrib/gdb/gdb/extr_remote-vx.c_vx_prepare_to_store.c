
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEPRECATED_REGISTER_BYTES ;
 int deprecated_read_register_bytes (int ,int *,int ) ;

__attribute__((used)) static void
vx_prepare_to_store (void)
{

  deprecated_read_register_bytes (0, ((void*)0), DEPRECATED_REGISTER_BYTES);
}
