; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_ssl_server_trust_providers.c_ssl_server_trust_file_first_credentials.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_ssl_server_trust_providers.c_ssl_server_trust_file_first_credentials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@SVN_AUTH_PARAM_SSL_SERVER_FAILURES = common dso_local global i32 0, align 4
@SVN_AUTH_PARAM_SSL_SERVER_CERT_INFO = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_AUTH_PARAM_CONFIG_DIR = common dso_local global i32 0, align 4
@SVN_AUTH_CRED_SSL_SERVER_TRUST = common dso_local global i32 0, align 4
@SVN_CONFIG_AUTHN_ASCII_CERT_KEY = common dso_local global i32 0, align 4
@SVN_CONFIG_AUTHN_FAILURES_KEY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8**, i8*, i32*, i8*, i32*)* @ssl_server_trust_file_first_credentials to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ssl_server_trust_file_first_credentials(i8** %0, i8** %1, i8* %2, i32* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca %struct.TYPE_8__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_10__*, align 8
  store i8** %0, i8*** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* @SVN_AUTH_PARAM_SSL_SERVER_FAILURES, align 4
  %25 = call i8* @svn_hash_gets(i32* %23, i32 %24)
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %13, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* @SVN_AUTH_PARAM_SSL_SERVER_CERT_INFO, align 4
  %29 = call i8* @svn_hash_gets(i32* %27, i32 %28)
  %30 = bitcast i8* %29 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %14, align 8
  store i32* null, i32** %15, align 8
  %31 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %31, i32** %17, align 8
  %32 = load i8**, i8*** %7, align 8
  store i8* null, i8** %32, align 8
  %33 = load i8**, i8*** %8, align 8
  store i8* null, i8** %33, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* @SVN_AUTH_PARAM_CONFIG_DIR, align 4
  %36 = call i8* @svn_hash_gets(i32* %34, i32 %35)
  store i8* %36, i8** %16, align 8
  %37 = load i32, i32* @SVN_AUTH_CRED_SSL_SERVER_TRUST, align 4
  %38 = load i8*, i8** %11, align 8
  %39 = load i8*, i8** %16, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = call i32* @svn_config_read_auth_data(i32** %15, i32 %37, i8* %38, i8* %39, i32* %40)
  store i32* %41, i32** %17, align 8
  %42 = load i32*, i32** %17, align 8
  %43 = call i32 @svn_error_clear(i32* %42)
  %44 = load i32*, i32** %17, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %89, label %46

46:                                               ; preds = %6
  %47 = load i32*, i32** %15, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %89

49:                                               ; preds = %46
  store i32 0, i32* %21, align 4
  %50 = load i32*, i32** %15, align 8
  %51 = load i32, i32* @SVN_CONFIG_AUTHN_ASCII_CERT_KEY, align 4
  %52 = call i8* @svn_hash_gets(i32* %50, i32 %51)
  %53 = bitcast i8* %52 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %18, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %12, align 8
  %58 = call %struct.TYPE_8__* @svn_string_create(i32 %56, i32* %57)
  store %struct.TYPE_8__* %58, %struct.TYPE_8__** %19, align 8
  %59 = load i32*, i32** %15, align 8
  %60 = load i32, i32* @SVN_CONFIG_AUTHN_FAILURES_KEY, align 4
  %61 = call i8* @svn_hash_gets(i32* %59, i32 %60)
  %62 = bitcast i8* %61 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %20, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %64 = icmp ne %struct.TYPE_8__* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %49
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @svn_cstring_atoui(i32* %21, i32 %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  br label %71

71:                                               ; preds = %65, %49
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %73 = icmp ne %struct.TYPE_8__* %72, null
  br i1 %73, label %74, label %88

74:                                               ; preds = %71
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %77 = call i64 @svn_string_compare(%struct.TYPE_8__* %75, %struct.TYPE_8__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load i32*, i32** %13, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %21, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32*, i32** %13, align 8
  store i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %86, %79, %74, %71
  br label %89

89:                                               ; preds = %88, %46, %6
  %90 = load i32*, i32** %13, align 8
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %89
  %94 = load i32*, i32** %12, align 8
  %95 = call %struct.TYPE_10__* @apr_pcalloc(i32* %94, i32 4)
  store %struct.TYPE_10__* %95, %struct.TYPE_10__** %22, align 8
  %96 = load i32, i32* @FALSE, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %100 = bitcast %struct.TYPE_10__* %99 to i8*
  %101 = load i8**, i8*** %7, align 8
  store i8* %100, i8** %101, align 8
  br label %102

102:                                              ; preds = %93, %89
  %103 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %103
}

declare dso_local i8* @svn_hash_gets(i32*, i32) #1

declare dso_local i32* @svn_config_read_auth_data(i32**, i32, i8*, i8*, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local %struct.TYPE_8__* @svn_string_create(i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cstring_atoui(i32*, i32) #1

declare dso_local i64 @svn_string_compare(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_10__* @apr_pcalloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
