; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_interrupts.c_ar9300_is_interrupt_pending.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_interrupts.c_ar9300_is_interrupt_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR9300_INTR_SYNC_DEFAULT = common dso_local global i32 0, align 4
@AR_INTR_ASYNC_CAUSE = common dso_local global i32 0, align 4
@AR_INTR_ASYNC_USED = common dso_local global i32 0, align 4
@AR_INTR_SPURIOUS = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@AR_INTR_SYNC_CAUSE = common dso_local global i32 0, align 4
@AR9300_INTR_SYNC_DEF_NO_HOST1_PERR = common dso_local global i32 0, align 4
@AR9340_INTR_SYNC_DEFAULT = common dso_local global i32 0, align 4
@AR_INTR_SYNC_MASK_GPIO = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_is_interrupt_pending(%struct.ath_hal* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  %6 = load i32, i32* @AR9300_INTR_SYNC_DEFAULT, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %8 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %9 = load i32, i32* @AR_INTR_ASYNC_CAUSE, align 4
  %10 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %8, i32 %9)
  %11 = call i32 @OS_REG_READ(%struct.ath_hal* %7, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @AR_INTR_ASYNC_USED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @AR_INTR_SPURIOUS, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @AH_TRUE, align 4
  store i32 %21, i32* %2, align 4
  br label %55

22:                                               ; preds = %16, %1
  %23 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %24 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %25 = load i32, i32* @AR_INTR_SYNC_CAUSE, align 4
  %26 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %24, i32 %25)
  %27 = call i32 @OS_REG_READ(%struct.ath_hal* %23, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %29 = call i64 @AR_SREV_POSEIDON(%struct.ath_hal* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @AR9300_INTR_SYNC_DEF_NO_HOST1_PERR, align 4
  store i32 %32, i32* %4, align 4
  br label %40

33:                                               ; preds = %22
  %34 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %35 = call i64 @AR_SREV_WASP(%struct.ath_hal* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @AR9340_INTR_SYNC_DEFAULT, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %37, %33
  br label %40

40:                                               ; preds = %39, %31
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @AR_INTR_SYNC_MASK_GPIO, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @AR_INTR_SPURIOUS, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @AH_TRUE, align 4
  store i32 %52, i32* %2, align 4
  br label %55

53:                                               ; preds = %47, %40
  %54 = load i32, i32* @AH_FALSE, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %51, %20
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @AR_HOSTIF_REG(%struct.ath_hal*, i32) #1

declare dso_local i64 @AR_SREV_POSEIDON(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_WASP(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
