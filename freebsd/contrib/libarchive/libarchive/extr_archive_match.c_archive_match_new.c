
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int state; int magic; } ;
struct archive_match {int recursive_include; struct archive archive; int now; int inclusion_gnames; int inclusion_unames; int exclusion_entry_list; int exclusion_tree; int exclusions; int inclusions; } ;


 int ARCHIVE_MATCH_MAGIC ;
 int ARCHIVE_STATE_NEW ;
 int __archive_rb_tree_init (int *,int *) ;
 scalar_t__ calloc (int,int) ;
 int entry_list_init (int *) ;
 int match_list_init (int *) ;
 int rb_ops_mbs ;
 int time (int *) ;

struct archive *
archive_match_new(void)
{
 struct archive_match *a;

 a = (struct archive_match *)calloc(1, sizeof(*a));
 if (a == ((void*)0))
  return (((void*)0));
 a->archive.magic = ARCHIVE_MATCH_MAGIC;
 a->archive.state = ARCHIVE_STATE_NEW;
 a->recursive_include = 1;
 match_list_init(&(a->inclusions));
 match_list_init(&(a->exclusions));
 __archive_rb_tree_init(&(a->exclusion_tree), &rb_ops_mbs);
 entry_list_init(&(a->exclusion_entry_list));
 match_list_init(&(a->inclusion_unames));
 match_list_init(&(a->inclusion_gnames));
 time(&a->now);
 return (&(a->archive));
}
