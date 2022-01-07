; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_pth_pulse_out_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_pth_pulse_out_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.al_eth_pth_pulse_out_params = type { i64, i64, i64, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@AL_ETH_PTH_PULSE_OUT_NUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"eth [%s] PTH out pulse index out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AL_FALSE = common dso_local global i64 0, align 8
@EC_PTH_EGRESS_TRIGGER_CTRL_EN = common dso_local global i32 0, align 4
@EC_PTH_EGRESS_TRIGGER_CTRL_PERIODIC = common dso_local global i32 0, align 4
@EC_PTH_EGRESS_TRIGGER_CTRL_PERIOD_SUBSEC_MASK = common dso_local global i32 0, align 4
@EC_PTH_EGRESS_TRIGGER_CTRL_PERIOD_SUBSEC_SHIFT = common dso_local global i32 0, align 4
@EC_PTH_EGRESS_TRIGGER_CTRL_PERIOD_SEC_MASK = common dso_local global i32 0, align 4
@EC_PTH_EGRESS_TRIGGER_CTRL_PERIOD_SEC_SHIFT = common dso_local global i32 0, align 4
@EC_PTH_EGRESS_TRIGGER_SUBSECONDS_LSB_VAL_SHIFT = common dso_local global i32 0, align 4
@EC_PTH_EGRESS_PULSE_WIDTH_SUBSECONDS_LSB_VAL_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_pth_pulse_out_config(%struct.al_hal_eth_adapter* %0, %struct.al_eth_pth_pulse_out_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_hal_eth_adapter*, align 8
  %5 = alloca %struct.al_eth_pth_pulse_out_params*, align 8
  %6 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %4, align 8
  store %struct.al_eth_pth_pulse_out_params* %1, %struct.al_eth_pth_pulse_out_params** %5, align 8
  %7 = load %struct.al_eth_pth_pulse_out_params*, %struct.al_eth_pth_pulse_out_params** %5, align 8
  %8 = getelementptr inbounds %struct.al_eth_pth_pulse_out_params, %struct.al_eth_pth_pulse_out_params* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AL_ETH_PTH_PULSE_OUT_NUM, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @al_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %176

19:                                               ; preds = %2
  %20 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load %struct.al_eth_pth_pulse_out_params*, %struct.al_eth_pth_pulse_out_params** %5, align 8
  %26 = getelementptr inbounds %struct.al_eth_pth_pulse_out_params, %struct.al_eth_pth_pulse_out_params* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 5
  %30 = call i32 @al_reg_read32(i32* %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.al_eth_pth_pulse_out_params*, %struct.al_eth_pth_pulse_out_params** %5, align 8
  %32 = getelementptr inbounds %struct.al_eth_pth_pulse_out_params, %struct.al_eth_pth_pulse_out_params* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AL_FALSE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %19
  %37 = load i32, i32* @EC_PTH_EGRESS_TRIGGER_CTRL_EN, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %74

41:                                               ; preds = %19
  %42 = load i32, i32* @EC_PTH_EGRESS_TRIGGER_CTRL_EN, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load %struct.al_eth_pth_pulse_out_params*, %struct.al_eth_pth_pulse_out_params** %5, align 8
  %46 = getelementptr inbounds %struct.al_eth_pth_pulse_out_params, %struct.al_eth_pth_pulse_out_params* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AL_FALSE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load i32, i32* @EC_PTH_EGRESS_TRIGGER_CTRL_PERIODIC, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %59

55:                                               ; preds = %41
  %56 = load i32, i32* @EC_PTH_EGRESS_TRIGGER_CTRL_PERIODIC, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @EC_PTH_EGRESS_TRIGGER_CTRL_PERIOD_SUBSEC_MASK, align 4
  %62 = load i32, i32* @EC_PTH_EGRESS_TRIGGER_CTRL_PERIOD_SUBSEC_SHIFT, align 4
  %63 = load %struct.al_eth_pth_pulse_out_params*, %struct.al_eth_pth_pulse_out_params** %5, align 8
  %64 = getelementptr inbounds %struct.al_eth_pth_pulse_out_params, %struct.al_eth_pth_pulse_out_params* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @AL_REG_FIELD_SET(i32 %60, i32 %61, i32 %62, i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @EC_PTH_EGRESS_TRIGGER_CTRL_PERIOD_SEC_MASK, align 4
  %69 = load i32, i32* @EC_PTH_EGRESS_TRIGGER_CTRL_PERIOD_SEC_SHIFT, align 4
  %70 = load %struct.al_eth_pth_pulse_out_params*, %struct.al_eth_pth_pulse_out_params** %5, align 8
  %71 = getelementptr inbounds %struct.al_eth_pth_pulse_out_params, %struct.al_eth_pth_pulse_out_params* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @AL_REG_FIELD_SET(i32 %67, i32 %68, i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %59, %36
  %75 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %76 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load %struct.al_eth_pth_pulse_out_params*, %struct.al_eth_pth_pulse_out_params** %5, align 8
  %81 = getelementptr inbounds %struct.al_eth_pth_pulse_out_params, %struct.al_eth_pth_pulse_out_params* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 5
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @al_reg_write32(i32* %84, i32 %85)
  %87 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %88 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = load %struct.al_eth_pth_pulse_out_params*, %struct.al_eth_pth_pulse_out_params** %5, align 8
  %93 = getelementptr inbounds %struct.al_eth_pth_pulse_out_params, %struct.al_eth_pth_pulse_out_params* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 4
  %97 = load %struct.al_eth_pth_pulse_out_params*, %struct.al_eth_pth_pulse_out_params** %5, align 8
  %98 = getelementptr inbounds %struct.al_eth_pth_pulse_out_params, %struct.al_eth_pth_pulse_out_params* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @al_reg_write32(i32* %96, i32 %100)
  %102 = load %struct.al_eth_pth_pulse_out_params*, %struct.al_eth_pth_pulse_out_params** %5, align 8
  %103 = getelementptr inbounds %struct.al_eth_pth_pulse_out_params, %struct.al_eth_pth_pulse_out_params* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @AL_BIT_MASK(i32 18)
  %107 = and i32 %105, %106
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @EC_PTH_EGRESS_TRIGGER_SUBSECONDS_LSB_VAL_SHIFT, align 4
  %110 = shl i32 %108, %109
  store i32 %110, i32* %6, align 4
  %111 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %112 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = load %struct.al_eth_pth_pulse_out_params*, %struct.al_eth_pth_pulse_out_params** %5, align 8
  %117 = getelementptr inbounds %struct.al_eth_pth_pulse_out_params, %struct.al_eth_pth_pulse_out_params* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 3
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @al_reg_write32(i32* %120, i32 %121)
  %123 = load %struct.al_eth_pth_pulse_out_params*, %struct.al_eth_pth_pulse_out_params** %5, align 8
  %124 = getelementptr inbounds %struct.al_eth_pth_pulse_out_params, %struct.al_eth_pth_pulse_out_params* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = ashr i32 %126, 18
  store i32 %127, i32* %6, align 4
  %128 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %129 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %128, i32 0, i32 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = load %struct.al_eth_pth_pulse_out_params*, %struct.al_eth_pth_pulse_out_params** %5, align 8
  %134 = getelementptr inbounds %struct.al_eth_pth_pulse_out_params, %struct.al_eth_pth_pulse_out_params* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 2
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @al_reg_write32(i32* %137, i32 %138)
  %140 = load %struct.al_eth_pth_pulse_out_params*, %struct.al_eth_pth_pulse_out_params** %5, align 8
  %141 = getelementptr inbounds %struct.al_eth_pth_pulse_out_params, %struct.al_eth_pth_pulse_out_params* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @AL_BIT_MASK(i32 18)
  %144 = and i32 %142, %143
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @EC_PTH_EGRESS_PULSE_WIDTH_SUBSECONDS_LSB_VAL_SHIFT, align 4
  %147 = shl i32 %145, %146
  store i32 %147, i32* %6, align 4
  %148 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %149 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %148, i32 0, i32 0
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = load %struct.al_eth_pth_pulse_out_params*, %struct.al_eth_pth_pulse_out_params** %5, align 8
  %154 = getelementptr inbounds %struct.al_eth_pth_pulse_out_params, %struct.al_eth_pth_pulse_out_params* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @al_reg_write32(i32* %157, i32 %158)
  %160 = load %struct.al_eth_pth_pulse_out_params*, %struct.al_eth_pth_pulse_out_params** %5, align 8
  %161 = getelementptr inbounds %struct.al_eth_pth_pulse_out_params, %struct.al_eth_pth_pulse_out_params* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = ashr i32 %162, 18
  store i32 %163, i32* %6, align 4
  %164 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %165 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %164, i32 0, i32 0
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = load %struct.al_eth_pth_pulse_out_params*, %struct.al_eth_pth_pulse_out_params** %5, align 8
  %170 = getelementptr inbounds %struct.al_eth_pth_pulse_out_params, %struct.al_eth_pth_pulse_out_params* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @al_reg_write32(i32* %173, i32 %174)
  store i32 0, i32* %3, align 4
  br label %176

176:                                              ; preds = %74, %12
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local i32 @al_err(i8*, i32) #1

declare dso_local i32 @al_reg_read32(i32*) #1

declare dso_local i32 @AL_REG_FIELD_SET(i32, i32, i32, i32) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

declare dso_local i32 @AL_BIT_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
