; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_base_add_excluded_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_base_add_excluded_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_wc__db_status_server_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_base_add_excluded_node(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6, i64 %7, i32* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store i32* %0, i32** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i64 %7, i64* %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  %23 = load i64, i64* %19, align 8
  %24 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %11
  %27 = load i64, i64* %19, align 8
  %28 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %26, %11
  %31 = phi i1 [ true, %11 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @SVN_ERR_ASSERT(i32 %32)
  %34 = load i32*, i32** %12, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = load i8*, i8** %15, align 8
  %38 = load i8*, i8** %16, align 8
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %18, align 4
  %41 = load i64, i64* %19, align 8
  %42 = load i32*, i32** %20, align 8
  %43 = load i32*, i32** %21, align 8
  %44 = load i32*, i32** %22, align 8
  %45 = call i32* @add_excluded_or_not_present_node(i32* %34, i8* %35, i8* %36, i8* %37, i8* %38, i32 %39, i32 %40, i64 %41, i32* %42, i32* %43, i32* %44)
  ret i32* %45
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32* @add_excluded_or_not_present_node(i32*, i8*, i8*, i8*, i8*, i32, i32, i64, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
