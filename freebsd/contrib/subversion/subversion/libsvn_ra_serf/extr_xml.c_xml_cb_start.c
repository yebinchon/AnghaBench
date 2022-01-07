
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {char* ns; scalar_t__ from_state; char* name; char** collect_attrs; scalar_t__ to_state; scalar_t__ custom_close; scalar_t__ collect_cdata; } ;
typedef TYPE_1__ svn_ra_serf__xml_transition_t ;
struct TYPE_18__ {void* xmlns; void* name; } ;
struct TYPE_15__ {scalar_t__ state; TYPE_8__ tag; struct TYPE_15__* prev; int ns_list; scalar_t__ custom_close; int attrs; int cdata; int * state_pool; } ;
typedef TYPE_2__ svn_ra_serf__xml_estate_t ;
struct TYPE_16__ {scalar_t__ waiting; int scratch_pool; int baton; int (* opened_cb ) (TYPE_2__*,int ,scalar_t__,TYPE_8__*,int ) ;TYPE_2__* current; TYPE_1__* ttable; } ;
typedef TYPE_3__ svn_ra_serf__xml_context_t ;
struct TYPE_17__ {char const* name; char const* xmlns; } ;
typedef TYPE_4__ svn_ra_serf__dav_props_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int END_CALLBACK (TYPE_3__*) ;
 int START_CALLBACK (TYPE_3__*) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_XML_ATTRIB_NOT_FOUND ;
 int SVN_ERR_XML_UNEXPECTED_ELEMENT ;
 int * SVN_NO_ERROR ;
 scalar_t__ XML_STATE_INITIAL ;
 int _ (char*) ;
 int apr_hash_make (int *) ;
 TYPE_2__* apr_pcalloc (int *,int) ;
 void* apr_pstrdup (int *,char const*) ;
 int define_namespaces (int *,char const* const*,int ,TYPE_2__*) ;
 int expand_ns (TYPE_4__*,int ,char const*) ;
 int lazy_create_pool ;
 scalar_t__ strcmp (char const*,char*) ;
 int stub1 (TYPE_2__*,int ,scalar_t__,TYPE_8__*,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*,...) ;
 int svn_hash_sets (int ,char const*,void*) ;
 int svn_pool_clear (int ) ;
 int * svn_pool_create (int *) ;
 int svn_stringbuf_create_empty (int *) ;
 char* svn_xml_get_attr_value (char const*,char const* const*) ;
 int * xes_pool (TYPE_2__*) ;

__attribute__((used)) static svn_error_t *
xml_cb_start(svn_ra_serf__xml_context_t *xmlctx,
             const char *raw_name,
             const char *const *attrs)
{
  svn_ra_serf__xml_estate_t *current = xmlctx->current;
  svn_ra_serf__dav_props_t elemname;
  const svn_ra_serf__xml_transition_t *scan;
  apr_pool_t *new_pool;
  svn_ra_serf__xml_estate_t *new_xes;



  if (xmlctx->waiting > 0)
    {
      xmlctx->waiting++;
      return SVN_NO_ERROR;
    }



  define_namespaces(&current->ns_list, attrs, lazy_create_pool, current);

  expand_ns(&elemname, current->ns_list, raw_name);

  for (scan = xmlctx->ttable; scan->ns != ((void*)0); ++scan)
    {
      if (scan->from_state != current->state)
        continue;


      if (*scan->name == '*')
        break;


      if (strcmp(elemname.name, scan->name) == 0
          && strcmp(elemname.xmlns, scan->ns) == 0)
        break;
    }
  if (scan->ns == ((void*)0))
    {
      if (current->state == XML_STATE_INITIAL)
        {
          return svn_error_createf(
                        SVN_ERR_XML_UNEXPECTED_ELEMENT, ((void*)0),
                        _("XML Parsing failed: Unexpected root element '%s'"),
                        elemname.name);
        }

      xmlctx->waiting++;
      return SVN_NO_ERROR;
    }



  SVN_ERR_ASSERT(!scan->collect_cdata || scan->custom_close);
  new_pool = xes_pool(current);
  if (scan->collect_cdata || scan->collect_attrs[0])
    {
      new_pool = svn_pool_create(new_pool);


      new_xes = apr_pcalloc(new_pool, sizeof(*new_xes));
      new_xes->state_pool = new_pool;




      if (scan->collect_cdata)
        new_xes->cdata = svn_stringbuf_create_empty(new_pool);

      if (scan->collect_attrs[0] != ((void*)0))
        {
          const char *const *saveattr = &scan->collect_attrs[0];

          new_xes->attrs = apr_hash_make(new_pool);
          for (; *saveattr != ((void*)0); ++saveattr)
            {
              const char *name;
              const char *value;

              if (**saveattr == '?')
                {
                  name = *saveattr + 1;
                  value = svn_xml_get_attr_value(name, attrs);
                }
              else
                {
                  name = *saveattr;
                  value = svn_xml_get_attr_value(name, attrs);
                  if (value == ((void*)0))
                    return svn_error_createf(
                                SVN_ERR_XML_ATTRIB_NOT_FOUND,
                                ((void*)0),
                                _("Missing XML attribute '%s' on '%s' element"),
                                name, scan->name);
                }

              if (value)
                svn_hash_sets(new_xes->attrs, name,
                              apr_pstrdup(new_pool, value));
            }
        }
    }
  else
    {

      new_xes = apr_pcalloc(new_pool, sizeof(*new_xes));

    }


  new_xes->state = scan->to_state;
  new_xes->tag.name = apr_pstrdup(new_pool, elemname.name);
  new_xes->tag.xmlns = apr_pstrdup(new_pool, elemname.xmlns);
  new_xes->custom_close = scan->custom_close;


  new_xes->ns_list = current->ns_list;


  new_xes->prev = current;
  xmlctx->current = new_xes;

  if (xmlctx->opened_cb)
    {
      START_CALLBACK(xmlctx);
      SVN_ERR(xmlctx->opened_cb(new_xes, xmlctx->baton,
                                new_xes->state, &new_xes->tag,
                                xmlctx->scratch_pool));
      END_CALLBACK(xmlctx);
      svn_pool_clear(xmlctx->scratch_pool);
    }

  return SVN_NO_ERROR;
}
