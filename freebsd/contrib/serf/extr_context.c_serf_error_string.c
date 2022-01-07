
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_status_t ;
const char *serf_error_string(apr_status_t errcode)
{
    switch (errcode)
    {
    case 135:
        return "The connection is closing";
    case 133:
        return "A request has been lost";
    case 128:
        return "The connection is blocked, pending further action";
    case 134:
        return "An error occurred during decompression";
    case 136:
        return "The server sent an improper HTTP response";
    case 129:
        return "The server sent a truncated HTTP response body.";
    case 141:
        return "The server unexpectedly closed the connection.";
    case 130:
        return "An error occurred during SSL communication";
    case 131:
        return "An SSL certificate related error occurred ";
    case 140:
        return "An error occurred during authentication";
    case 137:
        return "The requested authentication type(s) are not supported";
    case 138:
        return "An authentication attribute is missing";
    case 139:
        return "Initialization of an authentication type failed";
    case 132:
        return "The proxy server returned an error while setting up the "
               "SSL tunnel.";
    default:
        return ((void*)0);
    }


}
