; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mergeinfo.c_mergeinfo_relpaths_to_urls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mergeinfo.c_mergeinfo_relpaths_to_urls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i64, i8*, i32*, i32*)* @mergeinfo_relpaths_to_urls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mergeinfo_relpaths_to_urls(i32** %0, i64 %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32** %0, i32*** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i32**, i32*** %6, align 8
  store i32* null, i32** %15, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %5
  %19 = load i32*, i32** %9, align 8
  %20 = call i32* @apr_hash_make(i32* %19)
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32* @apr_hash_first(i32* %21, i64 %22)
  store i32* %23, i32** %11, align 8
  br label %24

24:                                               ; preds = %40, %18
  %25 = load i32*, i32** %11, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load i32*, i32** %11, align 8
  %29 = call i8* @apr_hash_this_key(i32* %28)
  store i8* %29, i8** %13, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i8* @apr_hash_this_val(i32* %30)
  store i8* %31, i8** %14, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @svn_path_url_add_component2(i8* %33, i8* %35, i32* %36)
  %38 = load i8*, i8** %14, align 8
  %39 = call i32 @svn_hash_sets(i32* %32, i32 %37, i8* %38)
  br label %40

40:                                               ; preds = %27
  %41 = load i32*, i32** %11, align 8
  %42 = call i32* @apr_hash_next(i32* %41)
  store i32* %42, i32** %11, align 8
  br label %24

43:                                               ; preds = %24
  %44 = load i32*, i32** %12, align 8
  %45 = load i32**, i32*** %6, align 8
  store i32* %44, i32** %45, align 8
  br label %46

46:                                               ; preds = %43, %5
  %47 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %47
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i64) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i8* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i8*) #1

declare dso_local i32 @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
