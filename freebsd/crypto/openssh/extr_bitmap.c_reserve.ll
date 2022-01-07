; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_bitmap.c_reserve.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_bitmap.c_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { i64, i64, i32* }

@BITMAP_MAX = common dso_local global i32 0, align 4
@BITMAP_BITS = common dso_local global i32 0, align 4
@BITMAP_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bitmap*, i32)* @reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reserve(%struct.bitmap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.bitmap* %0, %struct.bitmap** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %9 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %12 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp uge i64 %10, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @BITMAP_MAX, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %2
  store i32 -1, i32* %3, align 4
  br label %51

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @BITMAP_BITS, align 4
  %23 = sdiv i32 %21, %22
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %7, align 8
  %26 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %27 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %20
  %32 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %33 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %36 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* @BITMAP_BYTES, align 4
  %40 = call i32* @recallocarray(i32* %34, i64 %37, i64 %38, i32 %39)
  store i32* %40, i32** %6, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %51

43:                                               ; preds = %31
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %46 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %45, i32 0, i32 2
  store i32* %44, i32** %46, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %49 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %43, %20
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %42, %19
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32* @recallocarray(i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
