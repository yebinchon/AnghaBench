; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_gpio.c_ar9300_gpio_set_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_gpio.c_ar9300_gpio_set_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@AR_INTR_SYNC_ENABLE = common dso_local global i32 0, align 4
@AR_INTR_SYNC_MASK = common dso_local global i32 0, align 4
@AR_INTR_SYNC_ENABLE_GPIO_S = common dso_local global i64 0, align 8
@AR_INTR_SYNC_MASK_GPIO_S = common dso_local global i64 0, align 8
@AR9382_GPIO_PIN_8_RESERVED = common dso_local global i64 0, align 8
@AR9382_MAX_GPIO_INPUT_PIN_NUM = common dso_local global i64 0, align 8
@HAL_GPIO_INTR_DISABLE = common dso_local global i64 0, align 8
@AR_GPIO_INTR_POL = common dso_local global i32 0, align 4
@HAL_GPIO_INTR_HIGH = common dso_local global i64 0, align 8
@HAL_GPIO_INTR_LOW = common dso_local global i64 0, align 8
@AR_INTR_ASYNC_ENABLE = common dso_local global i32 0, align 4
@AR_INTR_ASYNC_ENABLE_GPIO_S = common dso_local global i64 0, align 8
@AR_INTR_ASYNC_MASK = common dso_local global i32 0, align 4
@AR_INTR_ASYNC_MASK_GPIO_S = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_gpio_set_intr(%struct.ath_hal* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [2 x i64], align 16
  %11 = alloca [2 x i64], align 16
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %13 = load i32, i32* @AR_INTR_SYNC_ENABLE, align 4
  %14 = call i64 @AR_HOSTIF_REG(%struct.ath_hal* %12, i32 %13)
  %15 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  store i64 %14, i64* %15, align 16
  %16 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %17 = load i32, i32* @AR_INTR_SYNC_MASK, align 4
  %18 = call i64 @AR_HOSTIF_REG(%struct.ath_hal* %16, i32 %17)
  %19 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  store i64 %18, i64* %19, align 8
  %20 = load i64, i64* @AR_INTR_SYNC_ENABLE_GPIO_S, align 8
  %21 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  store i64 %20, i64* %21, align 16
  %22 = load i64, i64* @AR_INTR_SYNC_MASK_GPIO_S, align 8
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  store i64 %22, i64* %23, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %26 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %24, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @HALASSERT(i32 %31)
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @AR9382_GPIO_PIN_8_RESERVED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %3
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @AR9382_MAX_GPIO_INPUT_PIN_NUM, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %3
  br label %153

41:                                               ; preds = %36
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @HAL_GPIO_INTR_DISABLE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %82

45:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %78, %45
  %47 = load i32, i32* %7, align 4
  %48 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %49 = call i32 @ARRAY_LENGTH(i64* %48)
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %81

51:                                               ; preds = %46
  %52 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @OS_REG_READ(%struct.ath_hal* %52, i64 %56)
  store i64 %57, i64* %9, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = add nsw i64 %61, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = shl i32 1, %65
  %67 = xor i32 %66, -1
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %9, align 8
  %70 = and i64 %69, %68
  store i64 %70, i64* %9, align 8
  %71 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @OS_REG_WRITE(%struct.ath_hal* %71, i64 %75, i64 %76)
  br label %78

78:                                               ; preds = %51
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %46

81:                                               ; preds = %46
  br label %153

82:                                               ; preds = %41
  %83 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %84 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %85 = load i32, i32* @AR_GPIO_INTR_POL, align 4
  %86 = call i64 @AR_HOSTIF_REG(%struct.ath_hal* %84, i32 %85)
  %87 = call i64 @OS_REG_READ(%struct.ath_hal* %83, i64 %86)
  store i64 %87, i64* %9, align 8
  %88 = load i64, i64* %5, align 8
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %8, align 4
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* @HAL_GPIO_INTR_HIGH, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %82
  %94 = load i32, i32* %8, align 4
  %95 = shl i32 1, %94
  %96 = xor i32 %95, -1
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %9, align 8
  %99 = and i64 %98, %97
  store i64 %99, i64* %9, align 8
  br label %111

100:                                              ; preds = %82
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* @HAL_GPIO_INTR_LOW, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load i32, i32* %8, align 4
  %106 = shl i32 1, %105
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %9, align 8
  %109 = or i64 %108, %107
  store i64 %109, i64* %9, align 8
  br label %110

110:                                              ; preds = %104, %100
  br label %111

111:                                              ; preds = %110, %93
  %112 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %113 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %114 = load i32, i32* @AR_GPIO_INTR_POL, align 4
  %115 = call i64 @AR_HOSTIF_REG(%struct.ath_hal* %113, i32 %114)
  %116 = load i64, i64* %9, align 8
  %117 = call i32 @OS_REG_WRITE(%struct.ath_hal* %112, i64 %115, i64 %116)
  store i32 0, i32* %7, align 4
  br label %118

118:                                              ; preds = %149, %111
  %119 = load i32, i32* %7, align 4
  %120 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %121 = call i32 @ARRAY_LENGTH(i64* %120)
  %122 = icmp slt i32 %119, %121
  br i1 %122, label %123, label %152

123:                                              ; preds = %118
  %124 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @OS_REG_READ(%struct.ath_hal* %124, i64 %128)
  store i64 %129, i64* %9, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %5, align 8
  %135 = add nsw i64 %133, %134
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = shl i32 1, %137
  %139 = sext i32 %138 to i64
  %140 = load i64, i64* %9, align 8
  %141 = or i64 %140, %139
  store i64 %141, i64* %9, align 8
  %142 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %9, align 8
  %148 = call i32 @OS_REG_WRITE(%struct.ath_hal* %142, i64 %146, i64 %147)
  br label %149

149:                                              ; preds = %123
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %7, align 4
  br label %118

152:                                              ; preds = %118
  br label %153

153:                                              ; preds = %40, %152, %81
  ret void
}

declare dso_local i64 @AR_HOSTIF_REG(%struct.ath_hal*, i32) #1

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @ARRAY_LENGTH(i64*) #1

declare dso_local i64 @OS_REG_READ(%struct.ath_hal*, i64) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
