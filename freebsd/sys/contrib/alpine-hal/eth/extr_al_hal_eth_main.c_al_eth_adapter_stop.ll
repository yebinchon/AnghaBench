; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_adapter_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_adapter_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { i32, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"eth [%s]: stop controller's UDMA\0A\00", align 1
@UDMA_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"[%s] warn: failed to change state, error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"eth [%s]: controller's TX UDMA stopped\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"eth [%s]: controller's RX UDMA stopped\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_adapter_stop(%struct.al_hal_eth_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.al_hal_eth_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %3, align 8
  %5 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @al_dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %9, i32 0, i32 2
  %11 = load i32, i32* @UDMA_DISABLE, align 4
  %12 = call i32 @al_udma_state_set_wait(%struct.TYPE_2__* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @al_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %47

23:                                               ; preds = %1
  %24 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @al_dbg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %28, i32 0, i32 1
  %30 = load i32, i32* @UDMA_DISABLE, align 4
  %31 = call i32 @al_udma_state_set_wait(%struct.TYPE_2__* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %23
  %35 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @al_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %47

42:                                               ; preds = %23
  %43 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @al_dbg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %42, %34, %15
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @al_dbg(i8*, i32) #1

declare dso_local i32 @al_udma_state_set_wait(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @al_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
