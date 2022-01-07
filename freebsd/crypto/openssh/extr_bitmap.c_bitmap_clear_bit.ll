; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_bitmap.c_bitmap_clear_bit.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_bitmap.c_bitmap_clear_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { i64, i64, i64* }

@BITMAP_MAX = common dso_local global i64 0, align 8
@BITMAP_BITS = common dso_local global i64 0, align 8
@BITMAP_WMASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitmap_clear_bit(%struct.bitmap* %0, i64 %1) #0 {
  %3 = alloca %struct.bitmap*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.bitmap* %0, %struct.bitmap** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %7 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %10 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp uge i64 %8, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @BITMAP_MAX, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %2
  br label %43

18:                                               ; preds = %13
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @BITMAP_BITS, align 8
  %21 = udiv i64 %19, %20
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %24 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ugt i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %43

28:                                               ; preds = %18
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @BITMAP_WMASK, align 8
  %31 = and i64 %29, %30
  %32 = shl i64 1, %31
  %33 = xor i64 %32, -1
  %34 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %35 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = and i64 %39, %33
  store i64 %40, i64* %38, align 8
  %41 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %42 = call i32 @retop(%struct.bitmap* %41)
  br label %43

43:                                               ; preds = %28, %27, %17
  ret void
}

declare dso_local i32 @retop(%struct.bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
