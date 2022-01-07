
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_token_map_t ;
struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__ svn_skel_t ;
typedef int svn_error_t ;


 int SVN_ERR_WC_CORRUPT ;
 int * SVN_NO_ERROR ;
 int SVN_TOKEN_UNKNOWN ;
 int _ (char*) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_token__from_mem (int const*,int ,int ) ;

__attribute__((used)) static svn_error_t *
read_enum_field(int *result,
                const svn_token_map_t *map,
                const svn_skel_t *skel)
{
  int value = svn_token__from_mem(map, skel->data, skel->len);

  if (value == SVN_TOKEN_UNKNOWN)
    return svn_error_create(SVN_ERR_WC_CORRUPT, ((void*)0),
                            _("Unknown enumeration value in tree conflict "
                              "description"));

  *result = value;

  return SVN_NO_ERROR;
}
