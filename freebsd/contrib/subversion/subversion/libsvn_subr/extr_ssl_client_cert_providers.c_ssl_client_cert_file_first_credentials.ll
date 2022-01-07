; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_ssl_client_cert_providers.c_ssl_client_cert_file_first_credentials.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_ssl_client_cert_providers.c_ssl_client_cert_file_first_credentials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@SVN_AUTH_PARAM_CONFIG_CATEGORY_SERVERS = common dso_local global i32 0, align 4
@SVN_AUTH_PARAM_SERVER_GROUP = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_SSL_CLIENT_CERT_FILE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8**, i8*, i32*, i8*, i32*)* @ssl_client_cert_file_first_credentials to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ssl_client_cert_file_first_credentials(i8** %0, i8** %1, i8* %2, i32* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_3__*, align 8
  store i8** %0, i8*** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = load i32, i32* @SVN_AUTH_PARAM_CONFIG_CATEGORY_SERVERS, align 4
  %19 = call i8* @svn_hash_gets(i32* %17, i32 %18)
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %13, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* @SVN_AUTH_PARAM_SERVER_GROUP, align 4
  %23 = call i8* @svn_hash_gets(i32* %21, i32 %22)
  store i8* %23, i8** %14, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = load i32, i32* @SVN_CONFIG_OPTION_SSL_CLIENT_CERT_FILE, align 4
  %27 = call i8* @svn_config_get_server_setting(i32* %24, i8* %25, i32 %26, i32* null)
  store i8* %27, i8** %15, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %6
  %31 = load i32*, i32** %12, align 8
  %32 = call %struct.TYPE_3__* @apr_palloc(i32* %31, i32 16)
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %16, align 8
  %33 = load i8*, i8** %15, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @FALSE, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %40 = bitcast %struct.TYPE_3__* %39 to i8*
  %41 = load i8**, i8*** %7, align 8
  store i8* %40, i8** %41, align 8
  br label %44

42:                                               ; preds = %6
  %43 = load i8**, i8*** %7, align 8
  store i8* null, i8** %43, align 8
  br label %44

44:                                               ; preds = %42, %30
  %45 = load i8**, i8*** %8, align 8
  store i8* null, i8** %45, align 8
  %46 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %46
}

declare dso_local i8* @svn_hash_gets(i32*, i32) #1

declare dso_local i8* @svn_config_get_server_setting(i32*, i8*, i32, i32*) #1

declare dso_local %struct.TYPE_3__* @apr_palloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
