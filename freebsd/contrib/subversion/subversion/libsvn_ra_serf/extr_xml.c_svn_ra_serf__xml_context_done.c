
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ from_state; int name; int * ns; } ;
typedef TYPE_3__ svn_ra_serf__xml_transition_t ;
struct TYPE_9__ {int scratch_pool; TYPE_3__* ttable; int free_states; TYPE_2__* current; } ;
typedef TYPE_4__ svn_ra_serf__xml_context_t ;
typedef int svn_error_t ;
struct TYPE_6__ {char const* name; } ;
struct TYPE_7__ {TYPE_1__ tag; scalar_t__ prev; } ;


 int SVN_ERR_XML_MALFORMED ;
 int * SVN_NO_ERROR ;
 scalar_t__ XML_STATE_INITIAL ;
 char* _ (char*) ;
 char* apr_psprintf (int ,char*,int ) ;
 int * svn_error_createf (int ,int *,char*,char const*) ;
 int svn_pool_destroy (int ) ;

svn_error_t *
svn_ra_serf__xml_context_done(svn_ra_serf__xml_context_t *xmlctx)
{
  if (xmlctx->current->prev)
    {

      return svn_error_createf(SVN_ERR_XML_MALFORMED, ((void*)0),
                               _("XML stream truncated: closing '%s' missing"),
                               xmlctx->current->tag.name);
    }
  else if (! xmlctx->free_states)
    {


      const svn_ra_serf__xml_transition_t *scan;
      const svn_ra_serf__xml_transition_t *document = ((void*)0);
      const char *msg;

      for (scan = xmlctx->ttable; scan->ns != ((void*)0); ++scan)
        {
          if (scan->from_state == XML_STATE_INITIAL)
            {
              if (document != ((void*)0))
                {
                  document = ((void*)0);
                  break;
                }
              document = scan;
            }
        }

      if (document)
        msg = apr_psprintf(xmlctx->scratch_pool, "'%s' element not found",
                            document->name);
      else
        msg = _("document element not found");

      return svn_error_createf(SVN_ERR_XML_MALFORMED, ((void*)0),
                               _("XML stream truncated: %s"),
                               msg);
    }

  svn_pool_destroy(xmlctx->scratch_pool);
  return SVN_NO_ERROR;
}
