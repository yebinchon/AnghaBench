; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_libtommath.c_s_mp_mul_digs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_libtommath.c_s_mp_mul_digs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64* }

@MP_OKAY = common dso_local global i32 0, align 4
@MP_MASK = common dso_local global i64 0, align 8
@DIGIT_BIT = common dso_local global i32 0, align 4
@CHAR_BIT = common dso_local global i32 0, align 4
@MP_WARRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32)* @s_mp_mul_digs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_mp_mul_digs(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1, %struct.TYPE_13__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @mp_init_size(%struct.TYPE_13__* %10, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* @MP_OKAY, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %5, align 4
  br label %112

27:                                               ; preds = %4
  %28 = load i32, i32* %9, align 4
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %33

33:                                               ; preds = %103, %27
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %106

37:                                               ; preds = %33
  store i64 0, i64* %16, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %14, align 4
  %43 = sub nsw i32 %41, %42
  %44 = call i32 @MIN(i32 %40, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %18, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  store i64* %56, i64** %19, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  store i64* %59, i64** %20, align 8
  store i32 0, i32* %15, align 4
  br label %60

60:                                               ; preds = %90, %37
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %93

64:                                               ; preds = %60
  %65 = load i64*, i64** %19, align 8
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i64, i64* %18, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i64*, i64** %20, align 8
  %71 = getelementptr inbounds i64, i64* %70, i32 1
  store i64* %71, i64** %20, align 8
  %72 = load i64, i64* %70, align 8
  %73 = trunc i64 %72 to i32
  %74 = mul nsw i32 %69, %73
  %75 = add nsw i32 %67, %74
  %76 = load i64, i64* %16, align 8
  %77 = trunc i64 %76 to i32
  %78 = add nsw i32 %75, %77
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i64, i64* @MP_MASK, align 8
  %81 = trunc i64 %80 to i32
  %82 = and i32 %79, %81
  %83 = sext i32 %82 to i64
  %84 = load i64*, i64** %19, align 8
  %85 = getelementptr inbounds i64, i64* %84, i32 1
  store i64* %85, i64** %19, align 8
  store i64 %83, i64* %84, align 8
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* @DIGIT_BIT, align 4
  %88 = ashr i32 %86, %87
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %16, align 8
  br label %90

90:                                               ; preds = %64
  %91 = load i32, i32* %15, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %15, align 4
  br label %60

93:                                               ; preds = %60
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %15, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i64, i64* %16, align 8
  %101 = load i64*, i64** %19, align 8
  store i64 %100, i64* %101, align 8
  br label %102

102:                                              ; preds = %99, %93
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %14, align 4
  br label %33

106:                                              ; preds = %33
  %107 = call i32 @mp_clamp(%struct.TYPE_13__* %10)
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %109 = call i32 @mp_exch(%struct.TYPE_13__* %10, %struct.TYPE_13__* %108)
  %110 = call i32 @mp_clear(%struct.TYPE_13__* %10)
  %111 = load i32, i32* @MP_OKAY, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %106, %25
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @mp_init_size(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @mp_clamp(%struct.TYPE_13__*) #1

declare dso_local i32 @mp_exch(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @mp_clear(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
