; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_eeprom_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_eeprom_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32, i32 }
%struct.ath_hal_9300 = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_8__, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@AR9300_EEP_BASE_DRIVE_STRENGTH = common dso_local global i32 0, align 4
@AR9300_EEP_VER_MINOR_MASK = common dso_local global i32 0, align 4
@p_modal = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_eeprom_get(%struct.ath_hal_9300* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hal_9300*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store %struct.ath_hal_9300* %0, %struct.ath_hal_9300** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %4, align 8
  %10 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %9, i32 0, i32 0
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %6, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %7, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %8, align 8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %127 [
    i32 146, label %16
    i32 145, label %29
    i32 144, label %42
    i32 134, label %55
    i32 133, label %61
    i32 137, label %67
    i32 136, label %71
    i32 132, label %76
    i32 128, label %80
    i32 130, label %86
    i32 149, label %91
    i32 147, label %96
    i32 129, label %102
    i32 135, label %106
    i32 154, label %112
    i32 153, label %116
    i32 138, label %122
    i32 150, label %123
  ]

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %22, %27
  store i32 %28, i32* %3, align 4
  br label %129

29:                                               ; preds = %2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %35, %40
  store i32 %41, i32* %3, align 4
  br label %129

42:                                               ; preds = %2
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 5
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %48, %53
  store i32 %54, i32* %3, align 4
  br label %129

55:                                               ; preds = %2
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %3, align 4
  br label %129

61:                                               ; preds = %2
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %3, align 4
  br label %129

67:                                               ; preds = %2
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %3, align 4
  br label %129

71:                                               ; preds = %2
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 11
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %3, align 4
  br label %129

76:                                               ; preds = %2
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %3, align 4
  br label %129

80:                                               ; preds = %2
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 4
  %85 = and i32 %84, 15
  store i32 %85, i32* %3, align 4
  br label %129

86:                                               ; preds = %2
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 15
  store i32 %90, i32* %3, align 4
  br label %129

91:                                               ; preds = %2
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, 1
  store i32 %95, i32* %3, align 4
  br label %129

96:                                               ; preds = %2
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 8
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 16
  %101 = ashr i32 %100, 4
  store i32 %101, i32* %3, align 4
  br label %129

102:                                              ; preds = %2
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 9
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %3, align 4
  br label %129

106:                                              ; preds = %2
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 8
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 32
  %111 = ashr i32 %110, 5
  store i32 %111, i32* %3, align 4
  br label %129

112:                                              ; preds = %2
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %3, align 4
  br label %129

116:                                              ; preds = %2
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = ashr i32 %119, 3
  %121 = and i32 %120, 1
  store i32 %121, i32* %3, align 4
  br label %129

122:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %129

123:                                              ; preds = %2
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 10
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %3, align 4
  br label %129

127:                                              ; preds = %2
  %128 = call i32 @HALASSERT(i32 0)
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %127, %123, %122, %116, %112, %106, %102, %96, %91, %86, %80, %76, %71, %67, %61, %55, %42, %29, %16
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @HALASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
