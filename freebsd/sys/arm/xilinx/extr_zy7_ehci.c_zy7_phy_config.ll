; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_ehci.c_zy7_phy_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_ehci.c_zy7_phy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"phy_type\00", align 1
@ZY7_USB_PORTSC_PTS_MASK = common dso_local global i32 0, align 4
@ZY7_USB_PORTSC_PTW = common dso_local global i32 0, align 4
@ZY7_USB_PORTSC_PTS2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"ulpi\00", align 1
@ZY7_USB_PORTSC_PTS_ULPI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"utmi\00", align 1
@ZY7_USB_PORTSC_PTS_UTMI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"utmi-wide\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@ZY7_USB_PORTSC_PTS_SERIAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"phy_vbus_ext\00", align 1
@ZY7_USB_ULPI_VIEWPORT = common dso_local global i32 0, align 4
@ZY7_USB_ULPI_VIEWPORT_RUN = common dso_local global i32 0, align 4
@ZY7_USB_ULPI_VIEWPORT_RW = common dso_local global i32 0, align 4
@ZY7_USB_ULPI_VIEWPORT_PORT_SHIFT = common dso_local global i32 0, align 4
@ZY7_USB_ULPI_VIEWPORT_ADDR_SHIFT = common dso_local global i32 0, align 4
@ZY7_USB_ULPI_VIEWPORT_DATAWR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @zy7_phy_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zy7_phy_config(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [64 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @ofw_bus_get_node(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %16 = call i64 @OF_getprop(i32 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %15, i32 64)
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %73

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @ZY7_USB_PORTSC(i32 1)
  %22 = call i32 @bus_space_read_4(i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @ZY7_USB_PORTSC_PTS_MASK, align 4
  %24 = load i32, i32* @ZY7_USB_PORTSC_PTW, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @ZY7_USB_PORTSC_PTS2, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %10, align 4
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %18
  %35 = load i32, i32* @ZY7_USB_PORTSC_PTS_ULPI, align 4
  %36 = load i32, i32* %10, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %10, align 4
  br label %67

38:                                               ; preds = %18
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* @ZY7_USB_PORTSC_PTS_UTMI, align 4
  %44 = load i32, i32* %10, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %10, align 4
  br label %66

46:                                               ; preds = %38
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32, i32* @ZY7_USB_PORTSC_PTS_UTMI, align 4
  %52 = load i32, i32* @ZY7_USB_PORTSC_PTW, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  br label %65

56:                                               ; preds = %46
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* @ZY7_USB_PORTSC_PTS_SERIAL, align 4
  %62 = load i32, i32* %10, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %60, %56
  br label %65

65:                                               ; preds = %64, %50
  br label %66

66:                                               ; preds = %65, %42
  br label %67

67:                                               ; preds = %66, %34
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @ZY7_USB_PORTSC(i32 1)
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @bus_space_write_4(i32 %68, i32 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %67, %3
  %74 = load i32, i32* %8, align 4
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %76 = call i64 @OF_getprop(i32 %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %75, i32 64)
  %77 = icmp sge i64 %76, 0
  br i1 %77, label %78, label %111

78:                                               ; preds = %73
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @ZY7_USB_ULPI_VIEWPORT, align 4
  %82 = load i32, i32* @ZY7_USB_ULPI_VIEWPORT_RUN, align 4
  %83 = load i32, i32* @ZY7_USB_ULPI_VIEWPORT_RW, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @ZY7_USB_ULPI_VIEWPORT_PORT_SHIFT, align 4
  %86 = shl i32 0, %85
  %87 = or i32 %84, %86
  %88 = load i32, i32* @ZY7_USB_ULPI_VIEWPORT_ADDR_SHIFT, align 4
  %89 = shl i32 11, %88
  %90 = or i32 %87, %89
  %91 = load i32, i32* @ZY7_USB_ULPI_VIEWPORT_DATAWR_SHIFT, align 4
  %92 = shl i32 96, %91
  %93 = or i32 %90, %92
  %94 = call i32 @bus_space_write_4(i32 %79, i32 %80, i32 %81, i32 %93)
  store i32 100, i32* %11, align 4
  br label %95

95:                                               ; preds = %108, %78
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @ZY7_USB_ULPI_VIEWPORT, align 4
  %99 = call i32 @bus_space_read_4(i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* @ZY7_USB_ULPI_VIEWPORT_RUN, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %95
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %11, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i32 -1, i32* %4, align 4
  br label %112

108:                                              ; preds = %103
  %109 = call i32 @DELAY(i32 1)
  br label %95

110:                                              ; preds = %95
  br label %111

111:                                              ; preds = %110, %73
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %107
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @ZY7_USB_PORTSC(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
