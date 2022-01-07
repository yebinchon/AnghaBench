; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_ts.c_ts_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_ts.c_ts_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"mrvl,ts\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"unsupported SoC (ID: 0x%08X)!\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Marvell Thermal Sensor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ts_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @ofw_bus_status_okay(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENXIO, align 4
  store i32 %10, i32* %2, align 4
  br label %29

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @ofw_bus_is_compatible(i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %2, align 4
  br label %29

17:                                               ; preds = %11
  %18 = call i32 @soc_id(i32* %4, i32* %5)
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %21 [
    i32 128, label %20
  ]

20:                                               ; preds = %17
  br label %26

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %29

26:                                               ; preds = %20
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_set_desc(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %21, %15, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @ofw_bus_status_okay(i32) #1

declare dso_local i32 @ofw_bus_is_compatible(i32, i8*) #1

declare dso_local i32 @soc_id(i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
