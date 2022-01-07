; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_bitmap.c_bitmap_to_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_bitmap.c_bitmap_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { i32, i32, i64* }

@BITMAP_BYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bitmap_to_string(%struct.bitmap* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.bitmap* %0, %struct.bitmap** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to i64*
  store i64* %14, i64** %8, align 8
  %15 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %16 = call i64 @bitmap_nbytes(%struct.bitmap* %15)
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %12, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %3
  %21 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %22 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %25 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20, %3
  store i32 -1, i32* %4, align 4
  br label %80

29:                                               ; preds = %20
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* %12, align 8
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %33, %29
  store i64 0, i64* %11, align 8
  store i64 0, i64* %9, align 8
  br label %36

36:                                               ; preds = %76, %35
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %39 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %37, %42
  br i1 %43, label %44, label %79

44:                                               ; preds = %36
  store i64 0, i64* %10, align 8
  br label %45

45:                                               ; preds = %72, %44
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @BITMAP_BYTES, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %45
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp uge i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %75

54:                                               ; preds = %49
  %55 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %56 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %10, align 8
  %62 = mul i64 %61, 8
  %63 = lshr i64 %60, %62
  %64 = and i64 %63, 255
  %65 = load i64*, i64** %8, align 8
  %66 = load i64, i64* %12, align 8
  %67 = sub i64 %66, 1
  %68 = load i64, i64* %11, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %11, align 8
  %70 = sub i64 %67, %68
  %71 = getelementptr inbounds i64, i64* %65, i64 %70
  store i64 %64, i64* %71, align 8
  br label %72

72:                                               ; preds = %54
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %10, align 8
  br label %45

75:                                               ; preds = %53, %45
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %9, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %9, align 8
  br label %36

79:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %28
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @bitmap_nbytes(%struct.bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
