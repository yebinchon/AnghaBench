; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_sris_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_sris_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { i32, i32, %struct.al_pcie_regs* }
%struct.al_pcie_regs = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }
%struct.al_pcie_sris_params = type { i32, i32, i64 }

@PCIE_SRIS_KP_COUNTER_GEN3_DEFAULT_VAL = common dso_local global i32 0, align 4
@PCIE_SRIS_KP_COUNTER_GEN21_DEFAULT_VAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"PCIe %d: configuring SRIS with default values kp_gen3[%d] kp_gen21[%d]\0A\00", align 1
@PCIE_W_CFG_FUNC_EXT_CFG_APP_SRIS_MODE = common dso_local global i32 0, align 4
@PCIE_W_GLOBAL_CTRL_SRIS_KP_COUNTER_VALUE_GEN3_SRIS_MASK = common dso_local global i32 0, align 4
@PCIE_W_GLOBAL_CTRL_SRIS_KP_COUNTER_VALUE_GEN21_SRIS_MASK = common dso_local global i32 0, align 4
@PCIE_W_GLOBAL_CTRL_SRIS_KP_COUNTER_VALUE_PCIE_X4_SRIS_EN = common dso_local global i32 0, align 4
@PCIE_W_GLOBAL_CTRL_SRIS_KP_COUNTER_VALUE_GEN3_SRIS_SHIFT = common dso_local global i32 0, align 4
@PCIE_W_GLOBAL_CTRL_SRIS_KP_COUNTER_VALUE_GEN21_SRIS_SHIFT = common dso_local global i32 0, align 4
@AL_PCIE_LINK_SPEED_GEN3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"PCIe %d: cannot config Gen%d SRIS with rev_id[%d]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PCIE_FLT_MASK_SKP_INT_VAL_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"PCIe %d: SRIS config is not supported in rev_id[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_pcie_port*, %struct.al_pcie_sris_params*, i32)* @al_pcie_port_sris_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_pcie_port_sris_config(%struct.al_pcie_port* %0, %struct.al_pcie_sris_params* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.al_pcie_port*, align 8
  %6 = alloca %struct.al_pcie_sris_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.al_pcie_regs*, align 8
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %5, align 8
  store %struct.al_pcie_sris_params* %1, %struct.al_pcie_sris_params** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.al_pcie_port*, %struct.al_pcie_port** %5, align 8
  %11 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %10, i32 0, i32 2
  %12 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %11, align 8
  store %struct.al_pcie_regs* %12, %struct.al_pcie_regs** %9, align 8
  %13 = load %struct.al_pcie_sris_params*, %struct.al_pcie_sris_params** %6, align 8
  %14 = getelementptr inbounds %struct.al_pcie_sris_params, %struct.al_pcie_sris_params* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %3
  %18 = load %struct.al_pcie_port*, %struct.al_pcie_port** %5, align 8
  %19 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 130
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @PCIE_SRIS_KP_COUNTER_GEN3_DEFAULT_VAL, align 4
  br label %25

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  %27 = load %struct.al_pcie_sris_params*, %struct.al_pcie_sris_params** %6, align 8
  %28 = getelementptr inbounds %struct.al_pcie_sris_params, %struct.al_pcie_sris_params* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @PCIE_SRIS_KP_COUNTER_GEN21_DEFAULT_VAL, align 4
  %30 = load %struct.al_pcie_sris_params*, %struct.al_pcie_sris_params** %6, align 8
  %31 = getelementptr inbounds %struct.al_pcie_sris_params, %struct.al_pcie_sris_params* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.al_pcie_port*, %struct.al_pcie_port** %5, align 8
  %33 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.al_pcie_sris_params*, %struct.al_pcie_sris_params** %6, align 8
  %36 = getelementptr inbounds %struct.al_pcie_sris_params, %struct.al_pcie_sris_params* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.al_pcie_sris_params*, %struct.al_pcie_sris_params** %6, align 8
  %39 = getelementptr inbounds %struct.al_pcie_sris_params, %struct.al_pcie_sris_params* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @al_dbg(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %25, %3
  %43 = load %struct.al_pcie_port*, %struct.al_pcie_port** %5, align 8
  %44 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %111 [
    i32 128, label %46
    i32 129, label %55
    i32 130, label %80
  ]

46:                                               ; preds = %42
  %47 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %9, align 8
  %48 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* @PCIE_W_CFG_FUNC_EXT_CFG_APP_SRIS_MODE, align 4
  %53 = load i32, i32* @PCIE_W_CFG_FUNC_EXT_CFG_APP_SRIS_MODE, align 4
  %54 = call i32 @al_reg_write32_masked(i32* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %42, %46
  %56 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %9, align 8
  %57 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* @PCIE_W_GLOBAL_CTRL_SRIS_KP_COUNTER_VALUE_GEN3_SRIS_MASK, align 4
  %62 = load i32, i32* @PCIE_W_GLOBAL_CTRL_SRIS_KP_COUNTER_VALUE_GEN21_SRIS_MASK, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @PCIE_W_GLOBAL_CTRL_SRIS_KP_COUNTER_VALUE_PCIE_X4_SRIS_EN, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.al_pcie_sris_params*, %struct.al_pcie_sris_params** %6, align 8
  %67 = getelementptr inbounds %struct.al_pcie_sris_params, %struct.al_pcie_sris_params* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @PCIE_W_GLOBAL_CTRL_SRIS_KP_COUNTER_VALUE_GEN3_SRIS_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load %struct.al_pcie_sris_params*, %struct.al_pcie_sris_params** %6, align 8
  %72 = getelementptr inbounds %struct.al_pcie_sris_params, %struct.al_pcie_sris_params* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PCIE_W_GLOBAL_CTRL_SRIS_KP_COUNTER_VALUE_GEN21_SRIS_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = or i32 %70, %75
  %77 = load i32, i32* @PCIE_W_GLOBAL_CTRL_SRIS_KP_COUNTER_VALUE_PCIE_X4_SRIS_EN, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @al_reg_write32_masked(i32* %60, i32 %65, i32 %78)
  br label %122

80:                                               ; preds = %42
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @AL_PCIE_LINK_SPEED_GEN3, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %80
  %85 = load %struct.al_pcie_sris_params*, %struct.al_pcie_sris_params** %6, align 8
  %86 = getelementptr inbounds %struct.al_pcie_sris_params, %struct.al_pcie_sris_params* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %84
  %90 = load %struct.al_pcie_port*, %struct.al_pcie_port** %5, align 8
  %91 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @al_pcie_speed_gen_code(i32 %93)
  %95 = load %struct.al_pcie_port*, %struct.al_pcie_port** %5, align 8
  %96 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i8*, i32, i32, ...) @al_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %94, i32 %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %124

101:                                              ; preds = %84, %80
  %102 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %9, align 8
  %103 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* @PCIE_FLT_MASK_SKP_INT_VAL_MASK, align 4
  %107 = load %struct.al_pcie_sris_params*, %struct.al_pcie_sris_params** %6, align 8
  %108 = getelementptr inbounds %struct.al_pcie_sris_params, %struct.al_pcie_sris_params* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @al_reg_write32_masked(i32* %105, i32 %106, i32 %109)
  br label %122

111:                                              ; preds = %42
  %112 = load %struct.al_pcie_port*, %struct.al_pcie_port** %5, align 8
  %113 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.al_pcie_port*, %struct.al_pcie_port** %5, align 8
  %116 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (i8*, i32, i32, ...) @al_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %114, i32 %117)
  %119 = call i32 @al_assert(i32 0)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %124

122:                                              ; preds = %101, %55
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %122, %111, %89
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @al_dbg(i8*, i32, i32, i32) #1

declare dso_local i32 @al_reg_write32_masked(i32*, i32, i32) #1

declare dso_local i32 @al_err(i8*, i32, i32, ...) #1

declare dso_local i32 @al_pcie_speed_gen_code(i32) #1

declare dso_local i32 @al_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
