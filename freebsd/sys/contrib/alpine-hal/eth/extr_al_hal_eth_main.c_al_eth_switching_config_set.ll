; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_switching_config_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_switching_config_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EC_TFW_TX_GEN_FWD_ALL_TO_MAC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_switching_config_set(%struct.al_hal_eth_adapter* %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.al_hal_eth_adapter*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load i64, i64* %10, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %8
  %21 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %9, align 8
  %22 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @al_reg_read32(i32* %25)
  store i32 %26, i32* %17, align 4
  %27 = load i64, i64* %11, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load i32, i32* @EC_TFW_TX_GEN_FWD_ALL_TO_MAC, align 4
  %31 = load i32, i32* %17, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %17, align 4
  br label %38

33:                                               ; preds = %20
  %34 = load i32, i32* @EC_TFW_TX_GEN_FWD_ALL_TO_MAC, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %17, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %17, align 4
  br label %38

38:                                               ; preds = %33, %29
  %39 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %9, align 8
  %40 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %17, align 4
  %45 = call i32 @al_reg_write32(i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %38, %8
  %47 = load i64, i64* %12, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %13, align 4
  %50 = and i32 %49, 7
  %51 = shl i32 %50, 1
  %52 = load i32, i32* %17, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %16, align 4
  %55 = and i32 %54, 3
  %56 = shl i32 %55, 4
  %57 = load i32, i32* %17, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %15, align 4
  %60 = and i32 %59, 3
  %61 = shl i32 %60, 6
  %62 = load i32, i32* %17, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %14, align 4
  %65 = and i32 %64, 3
  %66 = shl i32 %65, 8
  %67 = load i32, i32* %17, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %17, align 4
  %69 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %9, align 8
  %70 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %17, align 4
  %78 = call i32 @al_reg_write32(i32* %76, i32 %77)
  ret i32 0
}

declare dso_local i32 @al_reg_read32(i32*) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
