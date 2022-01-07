; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_detect_card_present.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_detect_card_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@AR_SREV = common dso_local global i32 0, align 4
@AR_SREV_ID = common dso_local global i32 0, align 4
@AR_SREV_VERSION2 = common dso_local global i32 0, align 4
@AR_SREV_TYPE2_S = common dso_local global i32 0, align 4
@AR_SREV_REVISION2 = common dso_local global i32 0, align 4
@AR_SREV_VERSION = common dso_local global i32 0, align 4
@AR_SREV_REVISION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_detect_card_present(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %7 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %8 = load i32, i32* @AR_SREV, align 4
  %9 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %7, i32 %8)
  %10 = call i32 @OS_REG_READ(%struct.ath_hal* %6, i32 %9)
  %11 = load i32, i32* @AR_SREV_ID, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 255
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %17 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %18 = load i32, i32* @AR_SREV, align 4
  %19 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %17, i32 %18)
  %20 = call i32 @OS_REG_READ(%struct.ath_hal* %16, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @AR_SREV_VERSION2, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @AR_SREV_TYPE2_S, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @AR_SREV_REVISION2, align 4
  %28 = call i32 @MS(i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %36

29:                                               ; preds = %1
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @AR_SREV_VERSION, align 4
  %32 = call i32 @MS(i32 %30, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @AR_SREV_REVISION, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %29, %15
  %37 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %38 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %45 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %47, %48
  br label %50

50:                                               ; preds = %43, %36
  %51 = phi i1 [ false, %36 ], [ %49, %43 ]
  %52 = zext i1 %51 to i32
  ret i32 %52
}

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @AR_HOSTIF_REG(%struct.ath_hal*, i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
