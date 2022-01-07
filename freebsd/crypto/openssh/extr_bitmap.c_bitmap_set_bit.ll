; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_bitmap.c_bitmap_set_bit.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_bitmap.c_bitmap_set_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { i64, i64* }

@BITMAP_BITS = common dso_local global i64 0, align 8
@BITMAP_WMASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bitmap_set_bit(%struct.bitmap* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.bitmap* %0, %struct.bitmap** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @reserve(%struct.bitmap* %8, i64 %9)
  store i32 %10, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %39

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @BITMAP_BITS, align 8
  %17 = udiv i64 %15, %16
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %20 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ugt i64 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %26 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %23, %14
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @BITMAP_WMASK, align 8
  %30 = and i64 %28, %29
  %31 = shl i64 1, %30
  %32 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %33 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = or i64 %37, %31
  store i64 %38, i64* %36, align 8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %27, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @reserve(%struct.bitmap*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
