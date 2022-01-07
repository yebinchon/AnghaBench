; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_debug.c_al_udma_regs_m2s_stat_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_debug.c_al_udma_regs_m2s_stat_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"M2S statistics regs:\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@m2s = common dso_local global i32 0, align 4
@m2s_stat = common dso_local global i32 0, align 4
@cfg_st = common dso_local global i32 0, align 4
@tx_pkt = common dso_local global i32 0, align 4
@tx_bytes_low = common dso_local global i32 0, align 4
@tx_bytes_high = common dso_local global i32 0, align 4
@prefed_desc = common dso_local global i32 0, align 4
@comp_pkt = common dso_local global i32 0, align 4
@comp_desc = common dso_local global i32 0, align 4
@ack_pkts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_udma*)* @al_udma_regs_m2s_stat_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_udma_regs_m2s_stat_print(%struct.al_udma* %0) #0 {
  %2 = alloca %struct.al_udma*, align 8
  store %struct.al_udma* %0, %struct.al_udma** %2, align 8
  %3 = call i32 @al_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %5 = load i32, i32* @m2s, align 4
  %6 = load i32, i32* @m2s_stat, align 4
  %7 = load i32, i32* @cfg_st, align 4
  %8 = call i32 @AL_UDMA_PRINT_REG(%struct.al_udma* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %5, i32 %6, i32 %7)
  %9 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %10 = load i32, i32* @m2s, align 4
  %11 = load i32, i32* @m2s_stat, align 4
  %12 = load i32, i32* @tx_pkt, align 4
  %13 = call i32 @AL_UDMA_PRINT_REG(%struct.al_udma* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %10, i32 %11, i32 %12)
  %14 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %15 = load i32, i32* @m2s, align 4
  %16 = load i32, i32* @m2s_stat, align 4
  %17 = load i32, i32* @tx_bytes_low, align 4
  %18 = call i32 @AL_UDMA_PRINT_REG(%struct.al_udma* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %15, i32 %16, i32 %17)
  %19 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %20 = load i32, i32* @m2s, align 4
  %21 = load i32, i32* @m2s_stat, align 4
  %22 = load i32, i32* @tx_bytes_high, align 4
  %23 = call i32 @AL_UDMA_PRINT_REG(%struct.al_udma* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %20, i32 %21, i32 %22)
  %24 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %25 = load i32, i32* @m2s, align 4
  %26 = load i32, i32* @m2s_stat, align 4
  %27 = load i32, i32* @prefed_desc, align 4
  %28 = call i32 @AL_UDMA_PRINT_REG(%struct.al_udma* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %25, i32 %26, i32 %27)
  %29 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %30 = load i32, i32* @m2s, align 4
  %31 = load i32, i32* @m2s_stat, align 4
  %32 = load i32, i32* @comp_pkt, align 4
  %33 = call i32 @AL_UDMA_PRINT_REG(%struct.al_udma* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 %31, i32 %32)
  %34 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %35 = load i32, i32* @m2s, align 4
  %36 = load i32, i32* @m2s_stat, align 4
  %37 = load i32, i32* @comp_desc, align 4
  %38 = call i32 @AL_UDMA_PRINT_REG(%struct.al_udma* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %36, i32 %37)
  %39 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %40 = load i32, i32* @m2s, align 4
  %41 = load i32, i32* @m2s_stat, align 4
  %42 = load i32, i32* @ack_pkts, align 4
  %43 = call i32 @AL_UDMA_PRINT_REG(%struct.al_udma* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @al_dbg(i8*) #1

declare dso_local i32 @AL_UDMA_PRINT_REG(%struct.al_udma*, i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
