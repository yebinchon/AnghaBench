; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_deprecated.c_svn_diff_file_output_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_deprecated.c_svn_diff_file_output_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_diff_conflict_display_modified_latest = common dso_local global i32 0, align 4
@svn_diff_conflict_display_resolved_modified_latest = common dso_local global i32 0, align 4
@svn_diff_conflict_display_modified_original_latest = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_diff_file_output_merge(i32* %0, i32* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i64 %9, i64 %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store i8* %2, i8** %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i8* %5, i8** %18, align 8
  store i8* %6, i8** %19, align 8
  store i8* %7, i8** %20, align 8
  store i8* %8, i8** %21, align 8
  store i64 %9, i64* %22, align 8
  store i64 %10, i64* %23, align 8
  store i32* %11, i32** %24, align 8
  %26 = load i32, i32* @svn_diff_conflict_display_modified_latest, align 4
  store i32 %26, i32* %25, align 4
  %27 = load i64, i64* %23, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %12
  %30 = load i32, i32* @svn_diff_conflict_display_resolved_modified_latest, align 4
  store i32 %30, i32* %25, align 4
  br label %31

31:                                               ; preds = %29, %12
  %32 = load i64, i64* %22, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @svn_diff_conflict_display_modified_original_latest, align 4
  store i32 %35, i32* %25, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32*, i32** %13, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = load i8*, i8** %15, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = load i8*, i8** %17, align 8
  %42 = load i8*, i8** %18, align 8
  %43 = load i8*, i8** %19, align 8
  %44 = load i8*, i8** %20, align 8
  %45 = load i8*, i8** %21, align 8
  %46 = load i32, i32* %25, align 4
  %47 = load i32*, i32** %24, align 8
  %48 = call i32* @svn_diff_file_output_merge2(i32* %37, i32* %38, i8* %39, i8* %40, i8* %41, i8* %42, i8* %43, i8* %44, i8* %45, i32 %46, i32* %47)
  ret i32* %48
}

declare dso_local i32* @svn_diff_file_output_merge2(i32*, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
