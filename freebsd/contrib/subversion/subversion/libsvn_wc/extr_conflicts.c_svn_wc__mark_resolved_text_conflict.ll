; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__mark_resolved_text_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__mark_resolved_text_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_wc_conflict_choose_merged = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__mark_resolved_text_conflict(i32* %0, i8* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = call i32 @svn_wc__db_read_conflict(i32** %13, i32* null, i32* null, i32* %14, i8* %15, i32* %16, i32* %17)
  %19 = call i32 @SVN_ERR(i32 %18)
  %20 = load i32*, i32** %13, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %5
  %23 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %23, i32** %6, align 8
  br label %52

24:                                               ; preds = %5
  %25 = load i32*, i32** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = load i32, i32* @svn_wc_conflict_choose_merged, align 4
  %29 = load i32, i32* @FALSE, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @build_text_conflict_resolve_items(i32** %12, i32* null, i32* %25, i8* %26, i32* %27, i32 %28, i32* null, i32 %29, i32* null, i32 %30, i8* %31, i32* %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i32*, i32** %7, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* @TRUE, align 4
  %39 = load i32, i32* @FALSE, align 4
  %40 = load i32, i32* @FALSE, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @svn_wc__db_op_mark_resolved(i32* %36, i8* %37, i32 %38, i32 %39, i32 %40, i32* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i32*, i32** %7, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i8*, i8** %10, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @svn_wc__wq_run(i32* %45, i8* %46, i32 %47, i8* %48, i32* %49)
  %51 = call i32* @svn_error_trace(i32 %50)
  store i32* %51, i32** %6, align 8
  br label %52

52:                                               ; preds = %24, %22
  %53 = load i32*, i32** %6, align 8
  ret i32* %53
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_read_conflict(i32**, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @build_text_conflict_resolve_items(i32**, i32*, i32*, i8*, i32*, i32, i32*, i32, i32*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_op_mark_resolved(i32*, i8*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_wc__wq_run(i32*, i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
