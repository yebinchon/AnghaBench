; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_prcm_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_prcm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_compat_data = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@compat_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"TI OMAP Power, Reset and Clock Management (PRM)\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"TI OMAP Power, Reset and Clock Management (C1)\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"TI OMAP Power, Reset and Clock Management (C2)\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"unknown instance type: %d\0A\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @omap4_prcm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap4_prcm_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ofw_compat_data*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @ofw_bus_status_okay(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENXIO, align 4
  store i32 %9, i32* %2, align 4
  br label %45

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @compat_data, align 4
  %13 = call %struct.ofw_compat_data* @ofw_bus_search_compatible(i32 %11, i32 %12)
  store %struct.ofw_compat_data* %13, %struct.ofw_compat_data** %4, align 8
  %14 = load %struct.ofw_compat_data*, %struct.ofw_compat_data** %4, align 8
  %15 = getelementptr inbounds %struct.ofw_compat_data, %struct.ofw_compat_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %45

21:                                               ; preds = %10
  %22 = load %struct.ofw_compat_data*, %struct.ofw_compat_data** %4, align 8
  %23 = getelementptr inbounds %struct.ofw_compat_data, %struct.ofw_compat_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  switch i32 %25, label %35 [
    i32 128, label %26
    i32 130, label %29
    i32 129, label %32
  ]

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_set_desc(i32 %27, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %43

29:                                               ; preds = %21
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @device_set_desc(i32 %30, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %43

32:                                               ; preds = %21
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_set_desc(i32 %33, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %43

35:                                               ; preds = %21
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.ofw_compat_data*, %struct.ofw_compat_data** %4, align 8
  %38 = getelementptr inbounds %struct.ofw_compat_data, %struct.ofw_compat_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @ENXIO, align 4
  store i32 %42, i32* %2, align 4
  br label %45

43:                                               ; preds = %32, %29, %26
  %44 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %35, %19, %8
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @ofw_bus_status_okay(i32) #1

declare dso_local %struct.ofw_compat_data* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
