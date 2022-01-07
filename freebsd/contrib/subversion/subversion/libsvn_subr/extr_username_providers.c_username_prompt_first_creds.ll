; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_username_providers.c_username_prompt_first_creds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_username_providers.c_username_prompt_first_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@SVN_AUTH_PARAM_NO_AUTH_CACHE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8**, i8*, i32*, i8*, i32*)* @username_prompt_first_creds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @username_prompt_first_creds(i8** %0, i8** %1, i8* %2, i32* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i8*, align 8
  store i8** %0, i8*** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %13, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = call %struct.TYPE_3__* @apr_pcalloc(i32* %18, i32 8)
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %14, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* @SVN_AUTH_PARAM_NO_AUTH_CACHE, align 4
  %22 = call i8* @svn_hash_gets(i32* %20, i32 %21)
  store i8* %22, i8** %15, align 8
  %23 = load i8**, i8*** %7, align 8
  %24 = bitcast i8** %23 to i32**
  %25 = load i32*, i32** %13, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load i32, i32* @TRUE, align 4
  %29 = load i8*, i8** %15, align 8
  %30 = icmp ne i8* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load i32*, i32** %12, align 8
  %34 = call i32 @prompt_for_username_creds(i32** %24, i32* %25, i32* %26, i8* %27, i32 %28, i32 %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %39 = bitcast %struct.TYPE_3__* %38 to i8*
  %40 = load i8**, i8*** %8, align 8
  store i8* %39, i8** %40, align 8
  %41 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %41
}

declare dso_local %struct.TYPE_3__* @apr_pcalloc(i32*, i32) #1

declare dso_local i8* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @prompt_for_username_creds(i32**, i32*, i32*, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
