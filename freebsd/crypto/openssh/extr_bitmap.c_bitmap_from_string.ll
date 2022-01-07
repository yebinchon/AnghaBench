; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_bitmap.c_bitmap_from_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_bitmap.c_bitmap_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { i64, i64* }

@BITMAP_MAX = common dso_local global i32 0, align 4
@BITMAP_BYTES = common dso_local global i32 0, align 4
@BITMAP_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bitmap_from_string(%struct.bitmap* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  store %struct.bitmap* %0, %struct.bitmap** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to i64*
  store i64* %14, i64** %12, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i32, i32* @BITMAP_MAX, align 4
  %17 = sdiv i32 %16, 8
  %18 = sext i32 %17 to i64
  %19 = icmp ugt i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %92

21:                                               ; preds = %3
  %22 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %23 = load i64, i64* %7, align 8
  %24 = mul i64 %23, 8
  %25 = call i32 @reserve(%struct.bitmap* %22, i64 %24)
  store i32 %25, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %92

29:                                               ; preds = %21
  %30 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %31 = call i32 @bitmap_zero(%struct.bitmap* %30)
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %92

35:                                               ; preds = %29
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* @BITMAP_BYTES, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = add i64 %36, %39
  %41 = load i32, i32* @BITMAP_BYTES, align 4
  %42 = sext i32 %41 to i64
  %43 = udiv i64 %40, %42
  %44 = sub i64 %43, 1
  store i64 %44, i64* %10, align 8
  %45 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %46 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i32, i32* @BITMAP_BYTES, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = add i64 %47, %50
  %52 = load i32, i32* @BITMAP_BYTES, align 4
  %53 = sext i32 %52 to i64
  %54 = urem i64 %51, %53
  %55 = mul i64 %54, 8
  store i64 %55, i64* %11, align 8
  store i64 0, i64* %9, align 8
  br label %56

56:                                               ; preds = %86, %35
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %89

60:                                               ; preds = %56
  %61 = load i64*, i64** %12, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %11, align 8
  %66 = shl i64 %64, %65
  %67 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %68 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = or i64 %72, %66
  store i64 %73, i64* %71, align 8
  %74 = load i64, i64* %11, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %60
  %77 = load i64, i64* %10, align 8
  %78 = add i64 %77, -1
  store i64 %78, i64* %10, align 8
  %79 = load i32, i32* @BITMAP_BITS, align 4
  %80 = sub nsw i32 %79, 8
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %11, align 8
  br label %85

82:                                               ; preds = %60
  %83 = load i64, i64* %11, align 8
  %84 = sub i64 %83, 8
  store i64 %84, i64* %11, align 8
  br label %85

85:                                               ; preds = %82, %76
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %9, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %9, align 8
  br label %56

89:                                               ; preds = %56
  %90 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %91 = call i32 @retop(%struct.bitmap* %90)
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %89, %34, %27, %20
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @reserve(%struct.bitmap*, i64) #1

declare dso_local i32 @bitmap_zero(%struct.bitmap*) #1

declare dso_local i32 @retop(%struct.bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
