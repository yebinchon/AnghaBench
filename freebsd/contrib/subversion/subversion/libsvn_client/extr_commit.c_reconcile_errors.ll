; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_commit.c_reconcile_errors.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_commit.c_reconcile_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Commit failed (details follow):\00", align 1
@SVN_ERR_BASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Commit succeeded, but other errors follow:\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Error unlocking locked dirs (details follow):\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Error bumping revisions post-commit (details follow):\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32*)* @reconcile_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @reconcile_errors(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %4
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %20, i32** %5, align 8
  br label %55

21:                                               ; preds = %16, %13, %4
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %27 = call i32* @svn_error_quick_wrap(i32* %25, i32 %26)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  store i32* %28, i32** %10, align 8
  br label %33

29:                                               ; preds = %21
  %30 = load i32, i32* @SVN_ERR_BASE, align 4
  %31 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32* @svn_error_create(i32 %30, i32* null, i32 %31)
  store i32* %32, i32** %10, align 8
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %39 = call i32* @svn_error_quick_wrap(i32* %37, i32 %38)
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @svn_error_compose(i32* %40, i32* %41)
  br label %43

43:                                               ; preds = %36, %33
  %44 = load i32*, i32** %8, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %49 = call i32* @svn_error_quick_wrap(i32* %47, i32 %48)
  store i32* %49, i32** %8, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @svn_error_compose(i32* %50, i32* %51)
  br label %53

53:                                               ; preds = %46, %43
  %54 = load i32*, i32** %10, align 8
  store i32* %54, i32** %5, align 8
  br label %55

55:                                               ; preds = %53, %19
  %56 = load i32*, i32** %5, align 8
  ret i32* %56
}

declare dso_local i32* @svn_error_quick_wrap(i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @svn_error_compose(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
