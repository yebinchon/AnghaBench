; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_ldm.c_ZSTD_ldm_countBackwardsMatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_ldm.c_ZSTD_ldm_countBackwardsMatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64*, i64*, i64*)* @ZSTD_ldm_countBackwardsMatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_ldm_countBackwardsMatch(i64* %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %28, %4
  %11 = load i64*, i64** %5, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = icmp ugt i64* %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = load i64*, i64** %7, align 8
  %16 = load i64*, i64** %8, align 8
  %17 = icmp ugt i64* %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i64*, i64** %5, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 -1
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** %7, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 -1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br label %26

26:                                               ; preds = %18, %14, %10
  %27 = phi i1 [ false, %14 ], [ false, %10 ], [ %25, %18 ]
  br i1 %27, label %28, label %35

28:                                               ; preds = %26
  %29 = load i64*, i64** %5, align 8
  %30 = getelementptr inbounds i64, i64* %29, i32 -1
  store i64* %30, i64** %5, align 8
  %31 = load i64*, i64** %7, align 8
  %32 = getelementptr inbounds i64, i64* %31, i32 -1
  store i64* %32, i64** %7, align 8
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %9, align 8
  br label %10

35:                                               ; preds = %26
  %36 = load i64, i64* %9, align 8
  ret i64 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
