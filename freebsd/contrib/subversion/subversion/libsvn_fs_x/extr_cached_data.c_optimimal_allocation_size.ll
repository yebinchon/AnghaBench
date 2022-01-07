; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_optimimal_allocation_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_optimimal_allocation_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN__STREAM_CHUNK_SIZE = common dso_local global i64 0, align 8
@APR_SIZE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @optimimal_allocation_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @optimimal_allocation_size(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 1024, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @SVN__STREAM_CHUNK_SIZE, align 8
  %8 = icmp sle i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  store i64 %10, i64* %2, align 8
  br label %33

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = load i32, i32* @APR_SIZE_MAX, align 4
  %14 = sdiv i32 %13, 2
  %15 = sext i32 %14 to i64
  %16 = sub nsw i64 %15, 1024
  %17 = icmp sge i64 %12, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i64, i64* %3, align 8
  store i64 %19, i64* %2, align 8
  br label %33

20:                                               ; preds = %11
  %21 = load i64, i64* @SVN__STREAM_CHUNK_SIZE, align 8
  store i64 %21, i64* %5, align 8
  br label %22

22:                                               ; preds = %27, %20
  %23 = load i64, i64* %5, align 8
  %24 = sub nsw i64 %23, 1024
  %25 = load i64, i64* %3, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i64, i64* %5, align 8
  %29 = mul nsw i64 %28, 2
  store i64 %29, i64* %5, align 8
  br label %22

30:                                               ; preds = %22
  %31 = load i64, i64* %5, align 8
  %32 = sub nsw i64 %31, 1024
  store i64 %32, i64* %2, align 8
  br label %33

33:                                               ; preds = %30, %18, %9
  %34 = load i64, i64* %2, align 8
  ret i64 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
