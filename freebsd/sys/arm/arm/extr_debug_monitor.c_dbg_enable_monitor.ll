; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_debug_monitor.c_dbg_enable_monitor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_debug_monitor.c_dbg_enable_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dbg_model = common dso_local global i32 0, align 4
@DBGSCR_MDBG_EN = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @dbg_enable_monitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbg_enable_monitor() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i64 (...) @dbg_monitor_is_enabled()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %27

6:                                                ; preds = %0
  %7 = call i32 (...) @cp14_dbgdscrint_get()
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* @dbg_model, align 4
  switch i32 %8, label %19 [
    i32 131, label %9
    i32 130, label %9
    i32 129, label %14
    i32 128, label %14
  ]

9:                                                ; preds = %6, %6
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @DBGSCR_MDBG_EN, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @cp14_dbgdscr_v6_set(i32 %12)
  br label %20

14:                                               ; preds = %6, %6
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @DBGSCR_MDBG_EN, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @cp14_dbgdscr_v7_set(i32 %17)
  br label %20

19:                                               ; preds = %6
  br label %20

20:                                               ; preds = %19, %14, %9
  %21 = call i32 (...) @isb()
  %22 = call i64 (...) @dbg_monitor_is_enabled()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %1, align 4
  br label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %25, %24, %5
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i64 @dbg_monitor_is_enabled(...) #1

declare dso_local i32 @cp14_dbgdscrint_get(...) #1

declare dso_local i32 @cp14_dbgdscr_v6_set(i32) #1

declare dso_local i32 @cp14_dbgdscr_v7_set(i32) #1

declare dso_local i32 @isb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
