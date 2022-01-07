; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_recv.c_ar9300_set_rx_sel_evm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_recv.c_ar9300_set_rx_sel_evm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { i32 }

@AR_PCU_MISC = common dso_local global i32 0, align 4
@AR_PCU_SEL_EVM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_set_rx_sel_evm(%struct.ath_hal* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath_hal_9300*, align 8
  %9 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %11 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %10)
  store %struct.ath_hal_9300* %11, %struct.ath_hal_9300** %8, align 8
  %12 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %8, align 8
  %13 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %42

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %26 = load i32, i32* @AR_PCU_MISC, align 4
  %27 = load i32, i32* @AR_PCU_SEL_EVM, align 4
  %28 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %25, i32 %26, i32 %27)
  br label %34

29:                                               ; preds = %21
  %30 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %31 = load i32, i32* @AR_PCU_MISC, align 4
  %32 = load i32, i32* @AR_PCU_SEL_EVM, align 4
  %33 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %8, align 8
  %40 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %34, %19
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_CLR_BIT(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
