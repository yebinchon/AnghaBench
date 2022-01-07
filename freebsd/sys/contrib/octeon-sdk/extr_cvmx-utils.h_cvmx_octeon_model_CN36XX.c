
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OCTEON_CN38XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 scalar_t__ cvmx_fuse_read (int) ;

__attribute__((used)) static inline int cvmx_octeon_model_CN36XX(void)
{
    return(OCTEON_IS_MODEL(OCTEON_CN38XX)
           &&cvmx_fuse_read(264));
}
