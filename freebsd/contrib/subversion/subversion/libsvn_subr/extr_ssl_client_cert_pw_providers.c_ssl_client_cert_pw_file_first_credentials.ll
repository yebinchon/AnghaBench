; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_ssl_client_cert_pw_providers.c_ssl_client_cert_pw_file_first_credentials.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_ssl_client_cert_pw_providers.c_ssl_client_cert_pw_file_first_credentials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_auth__ssl_client_cert_pw_get = common dso_local global i32 0, align 4
@SVN_AUTH__SIMPLE_PASSWORD_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8**, i8*, i32*, i8*, i32*)* @ssl_client_cert_pw_file_first_credentials to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ssl_client_cert_pw_file_first_credentials(i8** %0, i8** %1, i8* %2, i32* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i8** %0, i8*** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = load i8**, i8*** %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = load i32, i32* @svn_auth__ssl_client_cert_pw_get, align 4
  %19 = load i32, i32* @SVN_AUTH__SIMPLE_PASSWORD_TYPE, align 4
  %20 = load i32*, i32** %12, align 8
  %21 = call i32* @svn_auth__ssl_client_cert_pw_cache_get(i8** %13, i8** %14, i8* %15, i32* %16, i8* %17, i32 %18, i32 %19, i32* %20)
  ret i32* %21
}

declare dso_local i32* @svn_auth__ssl_client_cert_pw_cache_get(i8**, i8**, i8*, i32*, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
