; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pcib_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pcib_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"mrvl,pcie\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"mrvl,pci\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"marvell,armada-370-pcie\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Marvell Integrated PCI/PCI-E Controller\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mv_pcib_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_pcib_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @ofw_bus_get_node(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @mv_fdt_is_type(i32 %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %2, align 4
  br label %37

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @ofw_bus_is_compatible(i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @ofw_bus_is_compatible(i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @OF_parent(i32 %21)
  %23 = call i64 @ofw_bus_node_is_compatible(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %37

27:                                               ; preds = %20, %16, %12
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @ofw_bus_status_okay(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %2, align 4
  br label %37

33:                                               ; preds = %27
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @device_set_desc(i32 %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %36 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %31, %25, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @mv_fdt_is_type(i32, i8*) #1

declare dso_local i64 @ofw_bus_is_compatible(i32, i8*) #1

declare dso_local i64 @ofw_bus_node_is_compatible(i32, i8*) #1

declare dso_local i32 @OF_parent(i32) #1

declare dso_local i32 @ofw_bus_status_okay(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
