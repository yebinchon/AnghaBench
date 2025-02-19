; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_debug.c_al_udma_regs_m2s_comp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_debug.c_al_udma_regs_m2s_comp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"M2S completion regs:\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@m2s = common dso_local global i32 0, align 4
@m2s_comp = common dso_local global i32 0, align 4
@cfg_1c = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@comp_fifo_depth = common dso_local global i32 0, align 4
@UDMA_M2S_COMP_CFG_1C_COMP_FIFO_DEPTH = common dso_local global i32 0, align 4
@unack_fifo_depth = common dso_local global i32 0, align 4
@UDMA_M2S_COMP_CFG_1C_UNACK_FIFO_DEPTH = common dso_local global i32 0, align 4
@q_promotion = common dso_local global i32 0, align 4
@UDMA_M2S_COMP_CFG_1C_Q_PROMOTION = common dso_local global i32 0, align 4
@force_rr = common dso_local global i32 0, align 4
@UDMA_M2S_COMP_CFG_1C_FORCE_RR = common dso_local global i32 0, align 4
@q_free_min = common dso_local global i32 0, align 4
@UDMA_M2S_COMP_CFG_1C_Q_FREE_MIN = common dso_local global i32 0, align 4
@cfg_coal = common dso_local global i32 0, align 4
@cfg_application_ack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_udma*)* @al_udma_regs_m2s_comp_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_udma_regs_m2s_comp_print(%struct.al_udma* %0) #0 {
  %2 = alloca %struct.al_udma*, align 8
  store %struct.al_udma* %0, %struct.al_udma** %2, align 8
  %3 = call i32 @al_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %5 = load i32, i32* @m2s, align 4
  %6 = load i32, i32* @m2s_comp, align 4
  %7 = load i32, i32* @cfg_1c, align 4
  %8 = call i32 @AL_UDMA_PRINT_REG(%struct.al_udma* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %5, i32 %6, i32 %7)
  %9 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %10 = load i32, i32* @m2s, align 4
  %11 = load i32, i32* @m2s_comp, align 4
  %12 = load i32, i32* @cfg_1c, align 4
  %13 = load i32, i32* @comp_fifo_depth, align 4
  %14 = load i32, i32* @UDMA_M2S_COMP_CFG_1C_COMP_FIFO_DEPTH, align 4
  %15 = call i32 @AL_UDMA_PRINT_REG_FIELD(%struct.al_udma* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %10, i32 %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %17 = load i32, i32* @m2s, align 4
  %18 = load i32, i32* @m2s_comp, align 4
  %19 = load i32, i32* @cfg_1c, align 4
  %20 = load i32, i32* @unack_fifo_depth, align 4
  %21 = load i32, i32* @UDMA_M2S_COMP_CFG_1C_UNACK_FIFO_DEPTH, align 4
  %22 = call i32 @AL_UDMA_PRINT_REG_FIELD(%struct.al_udma* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %17, i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %24 = load i32, i32* @m2s, align 4
  %25 = load i32, i32* @m2s_comp, align 4
  %26 = load i32, i32* @cfg_1c, align 4
  %27 = load i32, i32* @q_promotion, align 4
  %28 = load i32, i32* @UDMA_M2S_COMP_CFG_1C_Q_PROMOTION, align 4
  %29 = call i32 @AL_UDMA_PRINT_REG_BIT(%struct.al_udma* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %31 = load i32, i32* @m2s, align 4
  %32 = load i32, i32* @m2s_comp, align 4
  %33 = load i32, i32* @cfg_1c, align 4
  %34 = load i32, i32* @force_rr, align 4
  %35 = load i32, i32* @UDMA_M2S_COMP_CFG_1C_FORCE_RR, align 4
  %36 = call i32 @AL_UDMA_PRINT_REG_BIT(%struct.al_udma* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %38 = load i32, i32* @m2s, align 4
  %39 = load i32, i32* @m2s_comp, align 4
  %40 = load i32, i32* @cfg_1c, align 4
  %41 = load i32, i32* @q_free_min, align 4
  %42 = load i32, i32* @UDMA_M2S_COMP_CFG_1C_Q_FREE_MIN, align 4
  %43 = call i32 @AL_UDMA_PRINT_REG_FIELD(%struct.al_udma* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %38, i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %45 = load i32, i32* @m2s, align 4
  %46 = load i32, i32* @m2s_comp, align 4
  %47 = load i32, i32* @cfg_coal, align 4
  %48 = call i32 @AL_UDMA_PRINT_REG(%struct.al_udma* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  %49 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %50 = load i32, i32* @m2s, align 4
  %51 = load i32, i32* @m2s_comp, align 4
  %52 = load i32, i32* @cfg_application_ack, align 4
  %53 = call i32 @AL_UDMA_PRINT_REG(%struct.al_udma* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %51, i32 %52)
  ret void
}

declare dso_local i32 @al_dbg(i8*) #1

declare dso_local i32 @AL_UDMA_PRINT_REG(%struct.al_udma*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @AL_UDMA_PRINT_REG_FIELD(%struct.al_udma*, i8*, i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @AL_UDMA_PRINT_REG_BIT(%struct.al_udma*, i8*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
