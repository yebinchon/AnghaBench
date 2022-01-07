; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_debug.c_al_udma_regs_m2s_rd_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_debug.c_al_udma_regs_m2s_rd_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"M2S read regs:\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@m2s = common dso_local global i32 0, align 4
@m2s_rd = common dso_local global i32 0, align 4
@desc_pref_cfg_1 = common dso_local global i32 0, align 4
@desc_pref_cfg_2 = common dso_local global i32 0, align 4
@desc_pref_cfg_3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@min_burst_below_thr = common dso_local global i32 0, align 4
@UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_BELOW_THR = common dso_local global i32 0, align 4
@min_burst_above_thr = common dso_local global i32 0, align 4
@UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_ABOVE_THR = common dso_local global i32 0, align 4
@pref_thr = common dso_local global i32 0, align 4
@UDMA_M2S_RD_DESC_PREF_CFG_3_PREF_THR = common dso_local global i32 0, align 4
@data_cfg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_udma*)* @al_udma_regs_m2s_rd_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_udma_regs_m2s_rd_print(%struct.al_udma* %0) #0 {
  %2 = alloca %struct.al_udma*, align 8
  store %struct.al_udma* %0, %struct.al_udma** %2, align 8
  %3 = call i32 @al_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %5 = load i32, i32* @m2s, align 4
  %6 = load i32, i32* @m2s_rd, align 4
  %7 = load i32, i32* @desc_pref_cfg_1, align 4
  %8 = call i32 @AL_UDMA_PRINT_REG(%struct.al_udma* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %5, i32 %6, i32 %7)
  %9 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %10 = load i32, i32* @m2s, align 4
  %11 = load i32, i32* @m2s_rd, align 4
  %12 = load i32, i32* @desc_pref_cfg_2, align 4
  %13 = call i32 @AL_UDMA_PRINT_REG(%struct.al_udma* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %10, i32 %11, i32 %12)
  %14 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %15 = load i32, i32* @m2s, align 4
  %16 = load i32, i32* @m2s_rd, align 4
  %17 = load i32, i32* @desc_pref_cfg_3, align 4
  %18 = call i32 @AL_UDMA_PRINT_REG(%struct.al_udma* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %15, i32 %16, i32 %17)
  %19 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %20 = load i32, i32* @m2s, align 4
  %21 = load i32, i32* @m2s_rd, align 4
  %22 = load i32, i32* @desc_pref_cfg_3, align 4
  %23 = load i32, i32* @min_burst_below_thr, align 4
  %24 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_BELOW_THR, align 4
  %25 = call i32 @AL_UDMA_PRINT_REG_FIELD(%struct.al_udma* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %20, i32 %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %27 = load i32, i32* @m2s, align 4
  %28 = load i32, i32* @m2s_rd, align 4
  %29 = load i32, i32* @desc_pref_cfg_3, align 4
  %30 = load i32, i32* @min_burst_above_thr, align 4
  %31 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_ABOVE_THR, align 4
  %32 = call i32 @AL_UDMA_PRINT_REG_FIELD(%struct.al_udma* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %27, i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %34 = load i32, i32* @m2s, align 4
  %35 = load i32, i32* @m2s_rd, align 4
  %36 = load i32, i32* @desc_pref_cfg_3, align 4
  %37 = load i32, i32* @pref_thr, align 4
  %38 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_3_PREF_THR, align 4
  %39 = call i32 @AL_UDMA_PRINT_REG_FIELD(%struct.al_udma* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %34, i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %41 = load i32, i32* @m2s, align 4
  %42 = load i32, i32* @m2s_rd, align 4
  %43 = load i32, i32* @data_cfg, align 4
  %44 = call i32 @AL_UDMA_PRINT_REG(%struct.al_udma* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @al_dbg(i8*) #1

declare dso_local i32 @AL_UDMA_PRINT_REG(%struct.al_udma*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @AL_UDMA_PRINT_REG_FIELD(%struct.al_udma*, i8*, i8*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
