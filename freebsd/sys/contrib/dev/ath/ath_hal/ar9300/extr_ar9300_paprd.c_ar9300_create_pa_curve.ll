; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_paprd.c_ar9300_create_pa_curve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_paprd.c_ar9300_create_pa_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_PHY_CHAN_INFO_MEMORY = common dso_local global i32 0, align 4
@AR_PHY_CHAN_INFO_MEMORY_CHANINFOMEM_S2_READ = common dso_local global i32 0, align 4
@AR_PHY_CHAN_INFO_TAB_0 = common dso_local global i64 0, align 8
@AH_FALSE = common dso_local global i64 0, align 8
@AR_PHY_PAPRD_TRAINER_STAT1_POSEIDON = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_STAT1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*, i64*, i64*, i32*)* @ar9300_create_pa_curve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9300_create_pa_curve(%struct.ath_hal* %0, i64* %1, i64* %2, i32* %3) #0 {
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [48 x i64], align 16
  %12 = alloca [48 x i64], align 16
  %13 = alloca i64, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %15 = call i32 @ar9300_paprd_debug_print(%struct.ath_hal* %14)
  %16 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %17 = load i32, i32* @AR_PHY_CHAN_INFO_MEMORY, align 4
  %18 = load i32, i32* @AR_PHY_CHAN_INFO_MEMORY_CHANINFOMEM_S2_READ, align 4
  %19 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %16, i32 %17, i32 %18, i32 0)
  %20 = load i64, i64* @AR_PHY_CHAN_INFO_TAB_0, align 8
  store i64 %20, i64* %13, align 8
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %33, %4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 48
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %26 = load i64, i64* %13, align 8
  %27 = call i64 @OS_REG_READ(%struct.ath_hal* %25, i64 %26)
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [48 x i64], [48 x i64]* %11, i64 0, i64 %29
  store i64 %27, i64* %30, align 8
  %31 = load i64, i64* %13, align 8
  %32 = add nsw i64 %31, 4
  store i64 %32, i64* %13, align 8
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %21

36:                                               ; preds = %21
  %37 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %38 = load i32, i32* @AR_PHY_CHAN_INFO_MEMORY, align 4
  %39 = load i32, i32* @AR_PHY_CHAN_INFO_MEMORY_CHANINFOMEM_S2_READ, align 4
  %40 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %37, i32 %38, i32 %39, i32 1)
  %41 = load i64, i64* @AR_PHY_CHAN_INFO_TAB_0, align 8
  store i64 %41, i64* %13, align 8
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %54, %36
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 48
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %47 = load i64, i64* %13, align 8
  %48 = call i64 @OS_REG_READ(%struct.ath_hal* %46, i64 %47)
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [48 x i64], [48 x i64]* %12, i64 0, i64 %50
  store i64 %48, i64* %51, align 8
  %52 = load i64, i64* %13, align 8
  %53 = add nsw i64 %52, 4
  store i64 %53, i64* %13, align 8
  br label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %42

57:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  %58 = getelementptr inbounds [48 x i64], [48 x i64]* %11, i64 0, i64 0
  %59 = getelementptr inbounds [48 x i64], [48 x i64]* %12, i64 0, i64 0
  %60 = load i64*, i64** %6, align 8
  %61 = load i64*, i64** %7, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = call i64 @create_pa_curve(i64* %58, i64* %59, i64* %60, i64* %61, i32* %62)
  %64 = load i64, i64* @AH_FALSE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store i32 -2, i32* %10, align 4
  br label %67

67:                                               ; preds = %66, %57
  %68 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %69 = call i64 @AR_SREV_POSEIDON(%struct.ath_hal* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %73 = load i32, i32* @AR_PHY_PAPRD_TRAINER_STAT1_POSEIDON, align 4
  %74 = load i32, i32* @AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE, align 4
  %75 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %72, i32 %73, i32 %74, i32 0)
  br label %81

76:                                               ; preds = %67
  %77 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %78 = load i32, i32* @AR_PHY_PAPRD_TRAINER_STAT1, align 4
  %79 = load i32, i32* @AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE, align 4
  %80 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %77, i32 %78, i32 %79, i32 0)
  br label %81

81:                                               ; preds = %76, %71
  %82 = load i32, i32* %10, align 4
  ret i32 %82
}

declare dso_local i32 @ar9300_paprd_debug_print(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i64 @OS_REG_READ(%struct.ath_hal*, i64) #1

declare dso_local i64 @create_pa_curve(i64*, i64*, i64*, i64*, i32*) #1

declare dso_local i64 @AR_SREV_POSEIDON(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
