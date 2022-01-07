
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int close_revision; int close_node; int set_fulltext; int remove_node_props; int set_node_property; int set_revision_property; int new_node_record; int uuid_record; int new_revision_record; } ;
typedef TYPE_1__ svn_repos_parser_fns_t ;
struct TYPE_7__ {int close_revision; int close_node; int set_fulltext; int remove_node_props; int set_node_property; int set_revision_property; int new_node_record; int uuid_record; int new_revision_record; } ;
typedef TYPE_2__ svn_repos_parse_fns2_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;

__attribute__((used)) static svn_repos_parser_fns_t *
fns_from_fns2(const svn_repos_parse_fns2_t *fns2,
              apr_pool_t *pool)
{
  svn_repos_parser_fns_t *fns;

  fns = apr_palloc(pool, sizeof(*fns));
  fns->new_revision_record = fns2->new_revision_record;
  fns->uuid_record = fns2->uuid_record;
  fns->new_node_record = fns2->new_node_record;
  fns->set_revision_property = fns2->set_revision_property;
  fns->set_node_property = fns2->set_node_property;
  fns->remove_node_props = fns2->remove_node_props;
  fns->set_fulltext = fns2->set_fulltext;
  fns->close_node = fns2->close_node;
  fns->close_revision = fns2->close_revision;
  return fns;
}
