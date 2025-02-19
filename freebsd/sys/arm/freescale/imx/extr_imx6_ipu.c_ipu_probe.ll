; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ipu.c_ipu_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ipu.c_ipu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@have_ipu = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"fsl,imx6q-ipu\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Freescale IPU\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ipu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i64, i64* @have_ipu, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @ENXIO, align 4
  store i32 %7, i32* %2, align 4
  br label %24

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @ofw_bus_status_okay(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %2, align 4
  br label %24

14:                                               ; preds = %8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @ofw_bus_is_compatible(i32 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %24

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_set_desc(i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %20, %18, %12, %6
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @ofw_bus_status_okay(i32) #1

declare dso_local i32 @ofw_bus_is_compatible(i32, i8*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
