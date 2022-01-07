; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_debug.c_al_udma_regs_m2s_general_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_debug.c_al_udma_regs_m2s_general_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"M2S general regs:\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@m2s = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@comp_ctrl = common dso_local global i32 0, align 4
@UDMA_M2S_STATE_COMP_CTRL = common dso_local global i32 0, align 4
@stream_if = common dso_local global i32 0, align 4
@UDMA_M2S_STATE_STREAM_IF = common dso_local global i32 0, align 4
@rd_ctrl = common dso_local global i32 0, align 4
@UDMA_M2S_STATE_DATA_RD_CTRL = common dso_local global i32 0, align 4
@desc_pref = common dso_local global i32 0, align 4
@UDMA_M2S_STATE_DESC_PREF = common dso_local global i32 0, align 4
@err_log_mask = common dso_local global i32 0, align 4
@log_0 = common dso_local global i32 0, align 4
@log_1 = common dso_local global i32 0, align 4
@log_2 = common dso_local global i32 0, align 4
@log_3 = common dso_local global i32 0, align 4
@data_fifo_status = common dso_local global i32 0, align 4
@header_fifo_status = common dso_local global i32 0, align 4
@unack_fifo_status = common dso_local global i32 0, align 4
@check_en = common dso_local global i32 0, align 4
@fifo_en = common dso_local global i32 0, align 4
@cfg_len = common dso_local global i32 0, align 4
@stream_cfg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_udma*)* @al_udma_regs_m2s_general_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_udma_regs_m2s_general_print(%struct.al_udma* %0) #0 {
  %2 = alloca %struct.al_udma*, align 8
  store %struct.al_udma* %0, %struct.al_udma** %2, align 8
  %3 = call i32 @al_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %5 = load i32, i32* @m2s, align 4
  %6 = load i32, i32* @m2s, align 4
  %7 = load i32, i32* @state, align 4
  %8 = call i32 @AL_UDMA_PRINT_REG(%struct.al_udma* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %5, i32 %6, i32 %7)
  %9 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %10 = load i32, i32* @m2s, align 4
  %11 = load i32, i32* @m2s, align 4
  %12 = load i32, i32* @state, align 4
  %13 = load i32, i32* @comp_ctrl, align 4
  %14 = load i32, i32* @UDMA_M2S_STATE_COMP_CTRL, align 4
  %15 = call i32 @AL_UDMA_PRINT_REG_FIELD(%struct.al_udma* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %10, i32 %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %17 = load i32, i32* @m2s, align 4
  %18 = load i32, i32* @m2s, align 4
  %19 = load i32, i32* @state, align 4
  %20 = load i32, i32* @stream_if, align 4
  %21 = load i32, i32* @UDMA_M2S_STATE_STREAM_IF, align 4
  %22 = call i32 @AL_UDMA_PRINT_REG_FIELD(%struct.al_udma* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %17, i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %24 = load i32, i32* @m2s, align 4
  %25 = load i32, i32* @m2s, align 4
  %26 = load i32, i32* @state, align 4
  %27 = load i32, i32* @rd_ctrl, align 4
  %28 = load i32, i32* @UDMA_M2S_STATE_DATA_RD_CTRL, align 4
  %29 = call i32 @AL_UDMA_PRINT_REG_FIELD(%struct.al_udma* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %24, i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %31 = load i32, i32* @m2s, align 4
  %32 = load i32, i32* @m2s, align 4
  %33 = load i32, i32* @state, align 4
  %34 = load i32, i32* @desc_pref, align 4
  %35 = load i32, i32* @UDMA_M2S_STATE_DESC_PREF, align 4
  %36 = call i32 @AL_UDMA_PRINT_REG_FIELD(%struct.al_udma* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %31, i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %38 = load i32, i32* @m2s, align 4
  %39 = load i32, i32* @m2s, align 4
  %40 = load i32, i32* @err_log_mask, align 4
  %41 = call i32 @AL_UDMA_PRINT_REG(%struct.al_udma* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %39, i32 %40)
  %42 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %43 = load i32, i32* @m2s, align 4
  %44 = load i32, i32* @m2s, align 4
  %45 = load i32, i32* @log_0, align 4
  %46 = call i32 @AL_UDMA_PRINT_REG(%struct.al_udma* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %44, i32 %45)
  %47 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %48 = load i32, i32* @m2s, align 4
  %49 = load i32, i32* @m2s, align 4
  %50 = load i32, i32* @log_1, align 4
  %51 = call i32 @AL_UDMA_PRINT_REG(%struct.al_udma* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %49, i32 %50)
  %52 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %53 = load i32, i32* @m2s, align 4
  %54 = load i32, i32* @m2s, align 4
  %55 = load i32, i32* @log_2, align 4
  %56 = call i32 @AL_UDMA_PRINT_REG(%struct.al_udma* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %54, i32 %55)
  %57 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %58 = load i32, i32* @m2s, align 4
  %59 = load i32, i32* @m2s, align 4
  %60 = load i32, i32* @log_3, align 4
  %61 = call i32 @AL_UDMA_PRINT_REG(%struct.al_udma* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %59, i32 %60)
  %62 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %63 = load i32, i32* @m2s, align 4
  %64 = load i32, i32* @m2s, align 4
  %65 = load i32, i32* @data_fifo_status, align 4
  %66 = call i32 @AL_UDMA_PRINT_REG(%struct.al_udma* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %64, i32 %65)
  %67 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %68 = load i32, i32* @m2s, align 4
  %69 = load i32, i32* @m2s, align 4
  %70 = load i32, i32* @header_fifo_status, align 4
  %71 = call i32 @AL_UDMA_PRINT_REG(%struct.al_udma* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %69, i32 %70)
  %72 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %73 = load i32, i32* @m2s, align 4
  %74 = load i32, i32* @m2s, align 4
  %75 = load i32, i32* @unack_fifo_status, align 4
  %76 = call i32 @AL_UDMA_PRINT_REG(%struct.al_udma* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %74, i32 %75)
  %77 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %78 = load i32, i32* @m2s, align 4
  %79 = load i32, i32* @m2s, align 4
  %80 = load i32, i32* @check_en, align 4
  %81 = call i32 @AL_UDMA_PRINT_REG(%struct.al_udma* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %79, i32 %80)
  %82 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %83 = load i32, i32* @m2s, align 4
  %84 = load i32, i32* @m2s, align 4
  %85 = load i32, i32* @fifo_en, align 4
  %86 = call i32 @AL_UDMA_PRINT_REG(%struct.al_udma* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %84, i32 %85)
  %87 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %88 = load i32, i32* @m2s, align 4
  %89 = load i32, i32* @m2s, align 4
  %90 = load i32, i32* @cfg_len, align 4
  %91 = call i32 @AL_UDMA_PRINT_REG(%struct.al_udma* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %88, i32 %89, i32 %90)
  %92 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %93 = load i32, i32* @m2s, align 4
  %94 = load i32, i32* @m2s, align 4
  %95 = load i32, i32* @stream_cfg, align 4
  %96 = call i32 @AL_UDMA_PRINT_REG(%struct.al_udma* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %94, i32 %95)
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
