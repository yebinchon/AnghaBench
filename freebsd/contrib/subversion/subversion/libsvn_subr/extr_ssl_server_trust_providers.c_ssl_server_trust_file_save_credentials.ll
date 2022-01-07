; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_ssl_server_trust_providers.c_ssl_server_trust_file_save_credentials.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_ssl_server_trust_providers.c_ssl_server_trust_file_save_credentials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_AUTH_PARAM_CONFIG_DIR = common dso_local global i32 0, align 4
@SVN_AUTH_PARAM_SSL_SERVER_CERT_INFO = common dso_local global i32 0, align 4
@SVN_CONFIG_AUTHN_ASCII_CERT_KEY = common dso_local global i32 0, align 4
@SVN_CONFIG_AUTHN_FAILURES_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@SVN_AUTH_CRED_SSL_SERVER_TRUST = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i8*, i32*, i8*, i32*)* @ssl_server_trust_file_save_credentials to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ssl_server_trust_file_save_credentials(i32* %0, i8* %1, i8* %2, i32* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %14, align 8
  store i32* null, i32** %16, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %6
  %25 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %25, i32** %7, align 8
  br label %62

26:                                               ; preds = %6
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* @SVN_AUTH_PARAM_CONFIG_DIR, align 4
  %29 = call i8* @svn_hash_gets(i32* %27, i32 %28)
  store i8* %29, i8** %17, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* @SVN_AUTH_PARAM_SSL_SERVER_CERT_INFO, align 4
  %32 = call i8* @svn_hash_gets(i32* %30, i32 %31)
  %33 = bitcast i8* %32 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %15, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = call i32* @apr_hash_make(i32* %34)
  store i32* %35, i32** %16, align 8
  %36 = load i32*, i32** %16, align 8
  %37 = load i32, i32* @SVN_CONFIG_AUTHN_ASCII_CERT_KEY, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %13, align 8
  %42 = call i32 @svn_string_create(i32 %40, i32* %41)
  %43 = call i32 @svn_hash_sets(i32* %36, i32 %37, i32 %42)
  %44 = load i32*, i32** %16, align 8
  %45 = load i32, i32* @SVN_CONFIG_AUTHN_FAILURES_KEY, align 4
  %46 = load i32*, i32** %13, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @svn_string_createf(i32* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = call i32 @svn_hash_sets(i32* %44, i32 %45, i32 %50)
  %52 = load i32*, i32** %16, align 8
  %53 = load i32, i32* @SVN_AUTH_CRED_SSL_SERVER_TRUST, align 4
  %54 = load i8*, i8** %12, align 8
  %55 = load i8*, i8** %17, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = call i32 @svn_config_write_auth_data(i32* %52, i32 %53, i8* %54, i8* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i32, i32* @TRUE, align 4
  %60 = load i32*, i32** %8, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %61, i32** %7, align 8
  br label %62

62:                                               ; preds = %26, %24
  %63 = load i32*, i32** %7, align 8
  ret i32* %63
}

declare dso_local i8* @svn_hash_gets(i32*, i32) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i32) #1

declare dso_local i32 @svn_string_create(i32, i32*) #1

declare dso_local i32 @svn_string_createf(i32*, i8*, i64) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_config_write_auth_data(i32*, i32, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
