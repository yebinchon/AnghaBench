; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_paprd.c_ar9300_paprd_create_curve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_paprd.c_ar9300_paprd_create_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_2__ = type { i32, i32*, i32** }

@NUM_BIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"ERROR:: paprd failed with error code = %d\0A\00", align 1
@HAL_EINPROGRESS = common dso_local global i32 0, align 4
@HAL_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_paprd_create_curve(%struct.ath_hal* %0, %struct.ieee80211_channel* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* @NUM_BIN, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %20 = call %struct.TYPE_2__* @AH9300(%struct.ath_hal* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %78

27:                                               ; preds = %3
  %28 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %29 = call %struct.TYPE_2__* @AH9300(%struct.ath_hal* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32* %36, i32** %9, align 8
  %37 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = getelementptr inbounds i32, i32* %18, i64 0
  %41 = call i32 @ar9300_create_pa_curve(%struct.ath_hal* %37, i32* %39, i32* %10, i32* %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %43 = call i64 @AR_SREV_WASP(%struct.ath_hal* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %27
  %46 = call i32 @OS_DELAY(i32 1000)
  br label %47

47:                                               ; preds = %45, %27
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @ath_hal_printf(%struct.ath_hal* %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %80

54:                                               ; preds = %47
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %57 = call %struct.TYPE_2__* @AH9300(%struct.ath_hal* %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %55, i32* %62, align 4
  %63 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %64 = call i64 @AR_SREV_POSEIDON(%struct.ath_hal* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %54
  %67 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %68 = call i64 @AR_SREV_HORNET(%struct.ath_hal* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %66, %54
  %71 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %72 = call i64 @ar9300_paprd_retrain_pain(%struct.ath_hal* %71, i32* %18)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @HAL_EINPROGRESS, align 4
  store i32 %75, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %80

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %76, %66
  br label %78

78:                                               ; preds = %77, %3
  %79 = load i32, i32* @HAL_OK, align 4
  store i32 %79, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %80

80:                                               ; preds = %78, %74, %50
  %81 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_2__* @AH9300(%struct.ath_hal*) #2

declare dso_local i32 @ar9300_create_pa_curve(%struct.ath_hal*, i32*, i32*, i32*) #2

declare dso_local i64 @AR_SREV_WASP(%struct.ath_hal*) #2

declare dso_local i32 @OS_DELAY(i32) #2

declare dso_local i32 @ath_hal_printf(%struct.ath_hal*, i8*, i32) #2

declare dso_local i64 @AR_SREV_POSEIDON(%struct.ath_hal*) #2

declare dso_local i64 @AR_SREV_HORNET(%struct.ath_hal*) #2

declare dso_local i64 @ar9300_paprd_retrain_pain(%struct.ath_hal*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
