; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_print_keycache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_print_keycache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }

@.str = private unnamed_addr constant [43 x i8] c"Slot   Key\09\09\09          Valid  Type  Mac  \0A\00", align 1
@AR_KEYTABLE_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [124 x i8] c"%03d    %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x   %02d     %02d    %02x:%02x:%02x:%02x:%02x:%02x \0A\00", align 1
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_print_keycache(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %14 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %15 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %3, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %18 = call i32 (%struct.ath_hal*, i8*, ...) @ath_hal_printf(%struct.ath_hal* %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %11, align 8
  br label %19

19:                                               ; preds = %150, %1
  %20 = load i64, i64* %11, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %153

25:                                               ; preds = %19
  %26 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call i32 @AR_KEYTABLE_KEY0(i64 %27)
  %29 = call i32 @OS_REG_READ(%struct.ath_hal* %26, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @AR_KEYTABLE_KEY1(i64 %31)
  %33 = call i32 @OS_REG_READ(%struct.ath_hal* %30, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @AR_KEYTABLE_KEY2(i64 %35)
  %37 = call i32 @OS_REG_READ(%struct.ath_hal* %34, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @AR_KEYTABLE_KEY3(i64 %39)
  %41 = call i32 @OS_REG_READ(%struct.ath_hal* %38, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @AR_KEYTABLE_KEY4(i64 %43)
  %45 = call i32 @OS_REG_READ(%struct.ath_hal* %42, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @AR_KEYTABLE_TYPE(i64 %47)
  %49 = call i32 @OS_REG_READ(%struct.ath_hal* %46, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @AR_KEYTABLE_MAC0(i64 %51)
  %53 = call i32 @OS_REG_READ(%struct.ath_hal* %50, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @AR_KEYTABLE_MAC1(i64 %55)
  %57 = call i32 @OS_REG_READ(%struct.ath_hal* %54, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @AR_KEYTABLE_VALID, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %25
  store i32 1, i32* %12, align 4
  br label %64

63:                                               ; preds = %25
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %63, %62
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %71, -32769
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = shl i32 %73, 1
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %75, -2147483648
  %77 = ashr i32 %76, 31
  %78 = load i32, i32* %9, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = shl i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %70, %67, %64
  %83 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i32, i32* %4, align 4
  %86 = shl i32 %85, 24
  %87 = ashr i32 %86, 24
  %88 = load i32, i32* %4, align 4
  %89 = shl i32 %88, 16
  %90 = ashr i32 %89, 24
  %91 = load i32, i32* %4, align 4
  %92 = shl i32 %91, 8
  %93 = ashr i32 %92, 24
  %94 = load i32, i32* %4, align 4
  %95 = ashr i32 %94, 24
  %96 = load i32, i32* %5, align 4
  %97 = shl i32 %96, 24
  %98 = ashr i32 %97, 24
  %99 = load i32, i32* %5, align 4
  %100 = shl i32 %99, 16
  %101 = ashr i32 %100, 24
  %102 = load i32, i32* %6, align 4
  %103 = shl i32 %102, 24
  %104 = ashr i32 %103, 24
  %105 = load i32, i32* %6, align 4
  %106 = shl i32 %105, 16
  %107 = ashr i32 %106, 24
  %108 = load i32, i32* %6, align 4
  %109 = shl i32 %108, 8
  %110 = ashr i32 %109, 24
  %111 = load i32, i32* %6, align 4
  %112 = ashr i32 %111, 24
  %113 = load i32, i32* %7, align 4
  %114 = shl i32 %113, 24
  %115 = ashr i32 %114, 24
  %116 = load i32, i32* %7, align 4
  %117 = shl i32 %116, 16
  %118 = ashr i32 %117, 24
  %119 = load i32, i32* %8, align 4
  %120 = shl i32 %119, 24
  %121 = ashr i32 %120, 24
  %122 = load i32, i32* %8, align 4
  %123 = shl i32 %122, 16
  %124 = ashr i32 %123, 24
  %125 = load i32, i32* %8, align 4
  %126 = shl i32 %125, 8
  %127 = ashr i32 %126, 24
  %128 = load i32, i32* %8, align 4
  %129 = ashr i32 %128, 24
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %10, align 4
  %133 = shl i32 %132, 24
  %134 = ashr i32 %133, 24
  %135 = load i32, i32* %10, align 4
  %136 = shl i32 %135, 16
  %137 = ashr i32 %136, 24
  %138 = load i32, i32* %10, align 4
  %139 = shl i32 %138, 8
  %140 = ashr i32 %139, 24
  %141 = load i32, i32* %10, align 4
  %142 = ashr i32 %141, 24
  %143 = load i32, i32* %9, align 4
  %144 = shl i32 %143, 24
  %145 = ashr i32 %144, 24
  %146 = load i32, i32* %9, align 4
  %147 = shl i32 %146, 16
  %148 = ashr i32 %147, 24
  %149 = call i32 (%struct.ath_hal*, i8*, ...) @ath_hal_printf(%struct.ath_hal* %83, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.1, i64 0, i64 0), i64 %84, i32 %87, i32 %90, i32 %93, i32 %95, i32 %98, i32 %101, i32 %104, i32 %107, i32 %110, i32 %112, i32 %115, i32 %118, i32 %121, i32 %124, i32 %127, i32 %129, i32 %130, i32 %131, i32 %134, i32 %137, i32 %140, i32 %142, i32 %145, i32 %148)
  br label %150

150:                                              ; preds = %82
  %151 = load i64, i64* %11, align 8
  %152 = add nsw i64 %151, 1
  store i64 %152, i64* %11, align 8
  br label %19

153:                                              ; preds = %19
  %154 = load i32, i32* @AH_TRUE, align 4
  ret i32 %154
}

declare dso_local %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @ath_hal_printf(%struct.ath_hal*, i8*, ...) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @AR_KEYTABLE_KEY0(i64) #1

declare dso_local i32 @AR_KEYTABLE_KEY1(i64) #1

declare dso_local i32 @AR_KEYTABLE_KEY2(i64) #1

declare dso_local i32 @AR_KEYTABLE_KEY3(i64) #1

declare dso_local i32 @AR_KEYTABLE_KEY4(i64) #1

declare dso_local i32 @AR_KEYTABLE_TYPE(i64) #1

declare dso_local i32 @AR_KEYTABLE_MAC0(i64) #1

declare dso_local i32 @AR_KEYTABLE_MAC1(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
