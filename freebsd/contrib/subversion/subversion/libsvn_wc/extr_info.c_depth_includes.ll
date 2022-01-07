; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_info.c_depth_includes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_info.c_depth_includes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_depth_infinity = common dso_local global i64 0, align 8
@svn_depth_immediates = common dso_local global i64 0, align 8
@svn_depth_files = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64, i32*)* @depth_includes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @depth_includes(i8* %0, i64 %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = call i8* @svn_dirent_dirname(i8* %12, i32* %13)
  store i8* %14, i8** %11, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @svn_depth_infinity, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %40, label %18

18:                                               ; preds = %5
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @svn_depth_immediates, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @svn_depth_files, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @svn_node_file, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26, %18
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = call i64 @strcmp(i8* %31, i8* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30, %26, %22
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @strcmp(i8* %36, i8* %37)
  %39 = icmp eq i64 %38, 0
  br label %40

40:                                               ; preds = %35, %30, %5
  %41 = phi i1 [ true, %30 ], [ true, %5 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  ret i32 %42
}

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
