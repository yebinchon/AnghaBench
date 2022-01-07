; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_filter_override_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_filter_override_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.al_eth_filter_override_params = type { i32, i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"[%s]: unsupported override filter options (0x%08x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EC_RFW_DEFAULT_OR_UDMA_MASK = common dso_local global i32 0, align 4
@EC_RFW_DEFAULT_OR_UDMA_SHIFT = common dso_local global i32 0, align 4
@EC_RFW_DEFAULT_OR_QUEUE_MASK = common dso_local global i32 0, align 4
@EC_RFW_DEFAULT_OR_QUEUE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_filter_override_config(%struct.al_hal_eth_adapter* %0, %struct.al_eth_filter_override_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_hal_eth_adapter*, align 8
  %5 = alloca %struct.al_eth_filter_override_params*, align 8
  %6 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %4, align 8
  store %struct.al_eth_filter_override_params* %1, %struct.al_eth_filter_override_params** %5, align 8
  %7 = load %struct.al_eth_filter_override_params*, %struct.al_eth_filter_override_params** %5, align 8
  %8 = call i32 @al_assert(%struct.al_eth_filter_override_params* %7)
  %9 = load %struct.al_eth_filter_override_params*, %struct.al_eth_filter_override_params** %5, align 8
  %10 = getelementptr inbounds %struct.al_eth_filter_override_params, %struct.al_eth_filter_override_params* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @AL_ETH_RFW_FILTER_SUPPORTED(i32 %14)
  %16 = xor i32 %15, -1
  %17 = and i32 %11, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.al_eth_filter_override_params*, %struct.al_eth_filter_override_params** %5, align 8
  %24 = getelementptr inbounds %struct.al_eth_filter_override_params, %struct.al_eth_filter_override_params* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @al_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %72

29:                                               ; preds = %2
  %30 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %36 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @AL_ETH_RFW_FILTER_SUPPORTED(i32 %37)
  %39 = shl i32 %38, 16
  %40 = load %struct.al_eth_filter_override_params*, %struct.al_eth_filter_override_params** %5, align 8
  %41 = getelementptr inbounds %struct.al_eth_filter_override_params, %struct.al_eth_filter_override_params* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 16
  %44 = call i32 @al_reg_write32_masked(i32* %34, i32 %39, i32 %43)
  %45 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %46 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @al_reg_read32(i32* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @EC_RFW_DEFAULT_OR_UDMA_MASK, align 4
  %53 = load i32, i32* @EC_RFW_DEFAULT_OR_UDMA_SHIFT, align 4
  %54 = load %struct.al_eth_filter_override_params*, %struct.al_eth_filter_override_params** %5, align 8
  %55 = getelementptr inbounds %struct.al_eth_filter_override_params, %struct.al_eth_filter_override_params* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @AL_REG_FIELD_SET(i32 %51, i32 %52, i32 %53, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @EC_RFW_DEFAULT_OR_QUEUE_MASK, align 4
  %60 = load i32, i32* @EC_RFW_DEFAULT_OR_QUEUE_SHIFT, align 4
  %61 = load %struct.al_eth_filter_override_params*, %struct.al_eth_filter_override_params** %5, align 8
  %62 = getelementptr inbounds %struct.al_eth_filter_override_params, %struct.al_eth_filter_override_params* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @AL_REG_FIELD_SET(i32 %58, i32 %59, i32 %60, i32 %63)
  %65 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %66 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @al_reg_write32(i32* %69, i32 %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %29, %19
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @al_assert(%struct.al_eth_filter_override_params*) #1

declare dso_local i32 @AL_ETH_RFW_FILTER_SUPPORTED(i32) #1

declare dso_local i32 @al_err(i8*, i32, i32) #1

declare dso_local i32 @al_reg_write32_masked(i32*, i32, i32) #1

declare dso_local i32 @al_reg_read32(i32*) #1

declare dso_local i32 @AL_REG_FIELD_SET(i32, i32, i32, i32) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
