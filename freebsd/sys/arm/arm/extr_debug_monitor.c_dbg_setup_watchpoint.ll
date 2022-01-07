; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_debug_monitor.c_dbg_setup_watchpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_debug_monitor.c_dbg_setup_watchpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbg_wb_conf = type { i32, i32, i8*, i8* }

@HW_BREAKPOINT_X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Invalid access type for watchpoint: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DBG_TYPE_WATCHPOINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbg_setup_watchpoint(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dbg_wb_conf, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @HW_BREAKPOINT_X, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @db_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %26

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds %struct.dbg_wb_conf, %struct.dbg_wb_conf* %8, i32 0, i32 3
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds %struct.dbg_wb_conf, %struct.dbg_wb_conf* %8, i32 0, i32 2
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = getelementptr inbounds %struct.dbg_wb_conf, %struct.dbg_wb_conf* %8, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @DBG_TYPE_WATCHPOINT, align 4
  %24 = getelementptr inbounds %struct.dbg_wb_conf, %struct.dbg_wb_conf* %8, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = call i32 @dbg_setup_xpoint(%struct.dbg_wb_conf* %8)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %16, %12
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @db_printf(i8*, i32) #1

declare dso_local i32 @dbg_setup_xpoint(%struct.dbg_wb_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
