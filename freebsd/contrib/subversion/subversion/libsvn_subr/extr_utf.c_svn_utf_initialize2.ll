; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf.c_svn_utf_initialize2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf.c_svn_utf_initialize2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xlate_handle_hash = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@xlate_handle_mutex = common dso_local global i32* null, align 8
@xlate_cleanup = common dso_local global i32 0, align 4
@apr_pool_cleanup_null = common dso_local global i32 0, align 4
@assume_native_charset_is_utf8 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svn_utf_initialize2(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i64, i64* @xlate_handle_hash, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = call i32* @svn_pool_create(i32* %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32, i32* @TRUE, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32* @svn_mutex__init(i32** %6, i32 %13, i32* %14)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @svn_error_clear(i32* %19)
  br label %34

21:                                               ; preds = %10
  %22 = load i32*, i32** %6, align 8
  store i32* %22, i32** @xlate_handle_mutex, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @apr_hash_make(i32* %23)
  store i64 %24, i64* @xlate_handle_hash, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @xlate_cleanup, align 4
  %27 = load i32, i32* @apr_pool_cleanup_null, align 4
  %28 = call i32 @apr_pool_cleanup_register(i32* %25, i32* null, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %21, %2
  %30 = load i64, i64* @assume_native_charset_is_utf8, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %3, align 8
  store i64 %33, i64* @assume_native_charset_is_utf8, align 8
  br label %34

34:                                               ; preds = %18, %32, %29
  ret void
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @svn_mutex__init(i32**, i32, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i64 @apr_hash_make(i32*) #1

declare dso_local i32 @apr_pool_cleanup_register(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
