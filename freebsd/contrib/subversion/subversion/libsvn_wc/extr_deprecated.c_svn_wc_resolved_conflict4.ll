; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_resolved_conflict4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_resolved_conflict4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_resolved_conflict4(i8* %0, i32* %1, i64 %2, i64 %3, i64 %4, i32 %5, i32 %6, i32 %7, i8* %8, i32 %9, i8* %10, i32* %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  store i8* %0, i8** %13, align 8
  store i32* %1, i32** %14, align 8
  store i64 %2, i64* %15, align 8
  store i64 %3, i64* %16, align 8
  store i64 %4, i64* %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i8* %8, i8** %21, align 8
  store i32 %9, i32* %22, align 4
  store i8* %10, i8** %23, align 8
  store i32* %11, i32** %24, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = call i32* @svn_wc__adm_get_db(i32* %28)
  store i32* %29, i32** %26, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = load i32*, i32** %24, align 8
  %32 = call i32 @svn_dirent_get_absolute(i8** %27, i8* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i32*, i32** %26, align 8
  %35 = load i32*, i32** %24, align 8
  %36 = call i32 @svn_wc__context_create_with_db(i32** %25, i32* null, i32* %34, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load i32*, i32** %25, align 8
  %39 = load i8*, i8** %27, align 8
  %40 = load i32, i32* %18, align 4
  %41 = load i64, i64* %15, align 8
  %42 = load i64, i64* %16, align 8
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* null
  %46 = load i64, i64* %17, align 8
  %47 = load i32, i32* %19, align 4
  %48 = load i32, i32* %22, align 4
  %49 = load i8*, i8** %23, align 8
  %50 = load i32, i32* %20, align 4
  %51 = load i8*, i8** %21, align 8
  %52 = load i32*, i32** %24, align 8
  %53 = call i32 @svn_wc_resolved_conflict5(i32* %38, i8* %39, i32 %40, i64 %41, i8* %45, i64 %46, i32 %47, i32 %48, i8* %49, i32 %50, i8* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i32*, i32** %25, align 8
  %56 = call i32 @svn_wc_context_destroy(i32* %55)
  %57 = call i32* @svn_error_trace(i32 %56)
  ret i32* %57
}

declare dso_local i32* @svn_wc__adm_get_db(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @svn_wc__context_create_with_db(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc_resolved_conflict5(i32*, i8*, i32, i64, i8*, i64, i32, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_wc_context_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
