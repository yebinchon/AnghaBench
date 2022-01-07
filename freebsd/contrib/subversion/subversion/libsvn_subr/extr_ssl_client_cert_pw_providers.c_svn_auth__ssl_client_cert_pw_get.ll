; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_ssl_client_cert_pw_providers.c_svn_auth__ssl_client_cert_pw_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_ssl_client_cert_pw_providers.c_svn_auth__ssl_client_cert_pw_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@SVN_CONFIG_AUTHN_PASSPHRASE_KEY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_auth__ssl_client_cert_pw_get(i32* %0, i8** %1, i32* %2, i8* %3, i8* %4, i32* %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %10, align 8
  store i8** %1, i8*** %11, align 8
  store i32* %2, i32** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = load i32, i32* @SVN_CONFIG_AUTHN_PASSPHRASE_KEY, align 4
  %21 = call %struct.TYPE_3__* @svn_hash_gets(i32* %19, i32 %20)
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %18, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i8**, i8*** %11, align 8
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* @TRUE, align 4
  %35 = load i32*, i32** %10, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %36, i32** %9, align 8
  br label %41

37:                                               ; preds = %24, %8
  %38 = load i32, i32* @FALSE, align 4
  %39 = load i32*, i32** %10, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %40, i32** %9, align 8
  br label %41

41:                                               ; preds = %37, %29
  %42 = load i32*, i32** %9, align 8
  ret i32* %42
}

declare dso_local %struct.TYPE_3__* @svn_hash_gets(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
