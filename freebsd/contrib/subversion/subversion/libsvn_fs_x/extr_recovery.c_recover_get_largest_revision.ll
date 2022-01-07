; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_recovery.c_recover_get_largest_revision.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_recovery.c_recover_get_largest_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @recover_get_largest_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @recover_get_largest_revision(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 1, i32* %9, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32* @svn_pool_create(i32* %13)
  store i32* %14, i32** %7, align 8
  br label %15

15:                                               ; preds = %3, %26
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @svn_pool_clear(i32* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @revision_file_exists(i64* %10, i32* %18, i32 %19, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i64, i64* %10, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  br label %29

26:                                               ; preds = %15
  %27 = load i32, i32* %9, align 4
  %28 = shl i32 %27, 1
  store i32 %28, i32* %9, align 4
  br label %15

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = ashr i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %57, %29
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 %39, %40
  %42 = sdiv i32 %41, 2
  %43 = add nsw i32 %38, %42
  store i32 %43, i32* %11, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @svn_pool_clear(i32* %44)
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @revision_file_exists(i64* %12, i32* %46, i32 %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i64, i64* %12, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %37
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %8, align 4
  br label %57

55:                                               ; preds = %37
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %55, %53
  br label %32

58:                                               ; preds = %32
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @svn_pool_destroy(i32* %59)
  %61 = load i32, i32* %8, align 4
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %63
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @revision_file_exists(i64*, i32*, i32, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
