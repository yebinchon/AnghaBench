; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_wugen.c_omap4_wugen_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_wugen.c_omap4_wugen_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap4_wugen_sc = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"interrupt-parent\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"can't read parent node property\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"can't find parent controller\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"can't allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"can't register PIC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @omap4_wugen_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap4_wugen_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap4_wugen_sc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.omap4_wugen_sc* @device_get_softc(i32 %9)
  store %struct.omap4_wugen_sc* %10, %struct.omap4_wugen_sc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.omap4_wugen_sc*, %struct.omap4_wugen_sc** %4, align 8
  %13 = getelementptr inbounds %struct.omap4_wugen_sc, %struct.omap4_wugen_sc* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @ofw_bus_get_node(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @OF_getencprop(i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %6, i32 4)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %60

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = call i32* @OF_device_from_xref(i32 %24)
  %26 = load %struct.omap4_wugen_sc*, %struct.omap4_wugen_sc** %4, align 8
  %27 = getelementptr inbounds %struct.omap4_wugen_sc, %struct.omap4_wugen_sc* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load %struct.omap4_wugen_sc*, %struct.omap4_wugen_sc** %4, align 8
  %29 = getelementptr inbounds %struct.omap4_wugen_sc, %struct.omap4_wugen_sc* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %60

35:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @SYS_RES_MEMORY, align 4
  %38 = load i32, i32* @RF_ACTIVE, align 4
  %39 = call i32* @bus_alloc_resource_any(i32 %36, i32 %37, i32* %7, i32 %38)
  %40 = load %struct.omap4_wugen_sc*, %struct.omap4_wugen_sc** %4, align 8
  %41 = getelementptr inbounds %struct.omap4_wugen_sc, %struct.omap4_wugen_sc* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  %42 = load %struct.omap4_wugen_sc*, %struct.omap4_wugen_sc** %4, align 8
  %43 = getelementptr inbounds %struct.omap4_wugen_sc, %struct.omap4_wugen_sc* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* @ENXIO, align 4
  store i32 %49, i32* %2, align 4
  br label %64

50:                                               ; preds = %35
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @OF_xref_from_node(i32 %52)
  %54 = call i32* @intr_pic_register(i32 %51, i32 %53)
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %60

59:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %64

60:                                               ; preds = %56, %32, %20
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @omap4_wugen_detach(i32 %61)
  %63 = load i32, i32* @ENXIO, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %59, %46
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.omap4_wugen_sc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32* @OF_device_from_xref(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32* @intr_pic_register(i32, i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @omap4_wugen_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
