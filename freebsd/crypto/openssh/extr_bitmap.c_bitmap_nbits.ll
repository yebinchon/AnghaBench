; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_bitmap.c_bitmap_nbits.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_bitmap.c_bitmap_nbits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { i64, i64, i64* }

@BITMAP_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bitmap_nbits(%struct.bitmap* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.bitmap*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.bitmap* %0, %struct.bitmap** %3, align 8
  %6 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %7 = call i32 @retop(%struct.bitmap* %6)
  %8 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %9 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %12 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %66

16:                                               ; preds = %1
  %17 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %18 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %16
  %22 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %23 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %28 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %27, i32 0, i32 2
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26, %16
  store i64 0, i64* %2, align 8
  br label %66

34:                                               ; preds = %26, %21
  %35 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %36 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %35, i32 0, i32 2
  %37 = load i64*, i64** %36, align 8
  %38 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %39 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i64, i64* %37, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %5, align 4
  %44 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %45 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  %48 = load i32, i32* @BITMAP_BITS, align 4
  %49 = sext i32 %48 to i64
  %50 = mul nsw i64 %47, %49
  store i64 %50, i64* %4, align 8
  br label %51

51:                                               ; preds = %59, %34
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @BITMAP_BITS, align 4
  %54 = sub nsw i32 %53, 1
  %55 = shl i32 1, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load i32, i32* %5, align 4
  %61 = shl i32 %60, 1
  store i32 %61, i32* %5, align 4
  %62 = load i64, i64* %4, align 8
  %63 = add i64 %62, -1
  store i64 %63, i64* %4, align 8
  br label %51

64:                                               ; preds = %51
  %65 = load i64, i64* %4, align 8
  store i64 %65, i64* %2, align 8
  br label %66

66:                                               ; preds = %64, %33, %15
  %67 = load i64, i64* %2, align 8
  ret i64 %67
}

declare dso_local i32 @retop(%struct.bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
