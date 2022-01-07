
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int close_revision; int close_node; int set_fulltext; int remove_node_props; int set_node_property; int set_revision_property; int new_node_record; int uuid_record; int new_revision_record; } ;
typedef TYPE_1__ svn_repos_parser_fns_t ;
struct TYPE_7__ {int * apply_textdelta; int * delete_node_property; int close_revision; int close_node; int set_fulltext; int remove_node_props; int set_node_property; int set_revision_property; int new_node_record; int uuid_record; int new_revision_record; } ;
typedef TYPE_2__ svn_repos_parse_fns2_t ;
typedef int apr_pool_t ;


 TYPE_2__* apr_palloc (int *,int) ;

__attribute__((used)) static svn_repos_parse_fns2_t *
fns2_from_fns(const svn_repos_parser_fns_t *fns,
              apr_pool_t *pool)
{
  svn_repos_parse_fns2_t *fns2;

  fns2 = apr_palloc(pool, sizeof(*fns2));
  fns2->new_revision_record = fns->new_revision_record;
  fns2->uuid_record = fns->uuid_record;
  fns2->new_node_record = fns->new_node_record;
  fns2->set_revision_property = fns->set_revision_property;
  fns2->set_node_property = fns->set_node_property;
  fns2->remove_node_props = fns->remove_node_props;
  fns2->set_fulltext = fns->set_fulltext;
  fns2->close_node = fns->close_node;
  fns2->close_revision = fns->close_revision;
  fns2->delete_node_property = ((void*)0);
  fns2->apply_textdelta = ((void*)0);
  return fns2;
}
