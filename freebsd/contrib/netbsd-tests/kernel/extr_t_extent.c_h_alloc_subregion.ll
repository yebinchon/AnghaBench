; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/extr_t_extent.c_h_alloc_subregion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/extr_t_extent.c_h_alloc_subregion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ex = common dso_local global i32 0, align 4
@ret = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"extent_alloc_subregion1(ex, %#lx, %#lx, %#lx, %#lx, 0, %#lx, 0, &result): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [108 x i8] c"extent_alloc_subregion1(ex, %#lx, %#lx, %#lx, %#lx, 0, %#lx, 0, &result): result should be: %#lx, got: %#lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64, i64, i32, i64)* @h_alloc_subregion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h_alloc_subregion(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %16 = load i32, i32* @ex, align 4
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* %12, align 8
  %22 = call i32 @extent_alloc_subregion1(i32 %16, i64 %17, i64 %18, i64 %19, i64 %20, i32 0, i64 %21, i32 0, i64* %15)
  store i32 %22, i32* @ret, align 4
  %23 = load i32, i32* @ret, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %7
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 @strerror(i32 %32)
  %34 = call i32 (i8*, i64, i64, i64, i64, i64, i32, ...) bitcast (i32 (...)* @atf_tc_fail to i32 (i8*, i64, i64, i64, i64, i64, i32, ...)*)(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %28, i64 %29, i64 %30, i64 %31, i32 %33)
  br label %35

35:                                               ; preds = %26, %7
  %36 = load i32, i32* %13, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load i64, i64* %15, align 8
  %40 = load i64, i64* %14, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* %15, align 8
  %50 = call i32 (i8*, i64, i64, i64, i64, i64, i64, i64, ...) bitcast (i32 (...)* @atf_tc_fail to i32 (i8*, i64, i64, i64, i64, i64, i64, i64, ...)*)(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.1, i64 0, i64 0), i64 %43, i64 %44, i64 %45, i64 %46, i64 %47, i64 %48, i64 %49)
  br label %51

51:                                               ; preds = %42, %38, %35
  ret void
}

declare dso_local i32 @extent_alloc_subregion1(i32, i64, i64, i64, i64, i32, i64, i32, i64*) #1

declare dso_local i32 @atf_tc_fail(...) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
