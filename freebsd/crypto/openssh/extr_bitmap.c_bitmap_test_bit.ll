; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_bitmap.c_bitmap_test_bit.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_bitmap.c_bitmap_test_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { i64, i64, i64* }

@BITMAP_BITS = common dso_local global i64 0, align 8
@BITMAP_WMASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bitmap_test_bit(%struct.bitmap* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap*, align 8
  %5 = alloca i64, align 8
  store %struct.bitmap* %0, %struct.bitmap** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %7 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %10 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

14:                                               ; preds = %2
  %15 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %16 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @BITMAP_BITS, align 8
  %22 = udiv i64 %20, %21
  %23 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %24 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ugt i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19, %14
  store i32 0, i32* %3, align 4
  br label %43

28:                                               ; preds = %19
  %29 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %30 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %29, i32 0, i32 2
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @BITMAP_BITS, align 8
  %34 = udiv i64 %32, %33
  %35 = getelementptr inbounds i64, i64* %31, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @BITMAP_WMASK, align 8
  %39 = and i64 %37, %38
  %40 = lshr i64 %36, %39
  %41 = and i64 %40, 1
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %28, %27, %13
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
