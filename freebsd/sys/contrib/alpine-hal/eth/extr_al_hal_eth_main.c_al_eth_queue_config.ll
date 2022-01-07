; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_queue_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_queue_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { %struct.TYPE_4__*, i32, %struct.al_udma, %struct.al_udma, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.al_udma = type { i32* }
%struct.al_udma_q_params = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"eth [%s]: config UDMA %s queue %d\0A\00", align 1
@UDMA_TX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"Tx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"Rx\00", align 1
@UDMA_RX = common dso_local global i32 0, align 4
@AL_TRUE = common dso_local global i32 0, align 4
@AL_ETH_S2M_UDMA_COMP_COAL_TIMEOUT = common dso_local global i32 0, align 4
@EC_RFW_OUT_CFG_META_CNT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_queue_config(%struct.al_hal_eth_adapter* %0, i32 %1, i64 %2, %struct.al_udma_q_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.al_hal_eth_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.al_udma_q_params*, align 8
  %10 = alloca %struct.al_udma*, align 8
  %11 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.al_udma_q_params* %3, %struct.al_udma_q_params** %9, align 8
  %12 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @UDMA_TX, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @al_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %14, i8* %19, i64 %20)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @UDMA_TX, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %6, align 8
  %27 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %26, i32 0, i32 3
  store %struct.al_udma* %27, %struct.al_udma** %10, align 8
  br label %31

28:                                               ; preds = %4
  %29 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %6, align 8
  %30 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %29, i32 0, i32 2
  store %struct.al_udma* %30, %struct.al_udma** %10, align 8
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %6, align 8
  %33 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %9, align 8
  %36 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.al_udma*, %struct.al_udma** %10, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %9, align 8
  %40 = call i32 @al_udma_q_init(%struct.al_udma* %37, i64 %38, %struct.al_udma_q_params* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %5, align 4
  br label %79

45:                                               ; preds = %31
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @UDMA_RX, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %77

49:                                               ; preds = %45
  %50 = load %struct.al_udma*, %struct.al_udma** %10, align 8
  %51 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* @AL_TRUE, align 4
  %56 = load i32, i32* @AL_ETH_S2M_UDMA_COMP_COAL_TIMEOUT, align 4
  %57 = call i32 @al_udma_s2m_q_compl_coal_config(i32* %54, i32 %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %9, align 8
  %59 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sle i32 %60, 32
  %62 = zext i1 %61 to i32
  %63 = call i32 @al_assert(i32 %62)
  %64 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %9, align 8
  %65 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %66, 16
  br i1 %67, label %68, label %76

68:                                               ; preds = %49
  %69 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %6, align 8
  %70 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* @EC_RFW_OUT_CFG_META_CNT_MASK, align 4
  %75 = call i32 @al_reg_write32_masked(i32* %73, i32 %74, i32 2)
  br label %76

76:                                               ; preds = %68, %49
  br label %77

77:                                               ; preds = %76, %45
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %77, %43
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @al_dbg(i8*, i32, i8*, i64) #1

declare dso_local i32 @al_udma_q_init(%struct.al_udma*, i64, %struct.al_udma_q_params*) #1

declare dso_local i32 @al_udma_s2m_q_compl_coal_config(i32*, i32, i32) #1

declare dso_local i32 @al_assert(i32) #1

declare dso_local i32 @al_reg_write32_masked(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
