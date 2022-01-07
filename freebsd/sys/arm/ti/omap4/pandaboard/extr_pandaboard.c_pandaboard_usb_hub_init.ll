; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/pandaboard/extr_pandaboard.c_pandaboard_usb_hub_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/pandaboard/extr_pandaboard.c_pandaboard_usb_hub_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fdtbus_bs_tag = common dso_local global i32 0, align 4
@OMAP44XX_SCRM_HWBASE = common dso_local global i32 0, align 4
@OMAP44XX_SCRM_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Couldn't map SCRM registers\00", align 1
@OMAP44XX_GPIO1_HWBASE = common dso_local global i32 0, align 4
@OMAP44XX_GPIO1_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Couldn't map GPIO1 registers\00", align 1
@OMAP44XX_GPIO2_HWBASE = common dso_local global i32 0, align 4
@OMAP44XX_GPIO2_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Couldn't map GPIO2 registers\00", align 1
@OMAP44XX_SCM_PADCONF_HWBASE = common dso_local global i32 0, align 4
@OMAP44XX_SCM_PADCONF_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Couldn't map SCM Padconf registers\00", align 1
@SCRM_AUXCLK3 = common dso_local global i64 0, align 8
@CONTROL_WKUP_PAD0_FREF_CLK3_OUT = common dso_local global i64 0, align 8
@GPIO1_OE = common dso_local global i64 0, align 8
@GPIO1_CLEARDATAOUT = common dso_local global i64 0, align 8
@CONTROL_CORE_PAD1_KPD_COL2 = common dso_local global i64 0, align 8
@GPIO2_OE = common dso_local global i64 0, align 8
@GPIO2_CLEARDATAOUT = common dso_local global i64 0, align 8
@CONTROL_CORE_PAD0_GPMC_WAIT1 = common dso_local global i64 0, align 8
@GPIO2_SETDATAOUT = common dso_local global i64 0, align 8
@GPIO1_SETDATAOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pandaboard_usb_hub_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @fdtbus_bs_tag, align 4
  %6 = load i32, i32* @OMAP44XX_SCRM_HWBASE, align 4
  %7 = load i32, i32* @OMAP44XX_SCRM_SIZE, align 4
  %8 = call i64 @bus_space_map(i32 %5, i32 %6, i32 %7, i32 0, i64* %1)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32, i32* @fdtbus_bs_tag, align 4
  %14 = load i32, i32* @OMAP44XX_GPIO1_HWBASE, align 4
  %15 = load i32, i32* @OMAP44XX_GPIO1_SIZE, align 4
  %16 = call i64 @bus_space_map(i32 %13, i32 %14, i32 %15, i32 0, i64* %2)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %12
  %21 = load i32, i32* @fdtbus_bs_tag, align 4
  %22 = load i32, i32* @OMAP44XX_GPIO2_HWBASE, align 4
  %23 = load i32, i32* @OMAP44XX_GPIO2_SIZE, align 4
  %24 = call i64 @bus_space_map(i32 %21, i32 %22, i32 %23, i32 0, i64* %3)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %20
  %29 = load i32, i32* @fdtbus_bs_tag, align 4
  %30 = load i32, i32* @OMAP44XX_SCM_PADCONF_HWBASE, align 4
  %31 = load i32, i32* @OMAP44XX_SCM_PADCONF_SIZE, align 4
  %32 = call i64 @bus_space_map(i32 %29, i32 %30, i32 %31, i32 0, i64* %4)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %28
  %37 = load i64, i64* %1, align 8
  %38 = load i64, i64* @SCRM_AUXCLK3, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @REG_WRITE32(i64 %39, i64 65792)
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @CONTROL_WKUP_PAD0_FREF_CLK3_OUT, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @REG_WRITE16(i64 %43, i32 0)
  %45 = load i64, i64* %2, align 8
  %46 = load i64, i64* @GPIO1_OE, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i64, i64* %2, align 8
  %49 = load i64, i64* @GPIO1_OE, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i64 @REG_READ32(i64 %50)
  %52 = and i64 %51, -3
  %53 = call i32 @REG_WRITE32(i64 %47, i64 %52)
  %54 = load i64, i64* %2, align 8
  %55 = load i64, i64* @GPIO1_CLEARDATAOUT, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @REG_WRITE32(i64 %56, i64 2)
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @CONTROL_CORE_PAD1_KPD_COL2, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @REG_WRITE16(i64 %60, i32 3)
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* @GPIO2_OE, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* @GPIO2_OE, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i64 @REG_READ32(i64 %67)
  %69 = and i64 %68, -1073741825
  %70 = call i32 @REG_WRITE32(i64 %64, i64 %69)
  %71 = load i64, i64* %3, align 8
  %72 = load i64, i64* @GPIO2_CLEARDATAOUT, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @REG_WRITE32(i64 %73, i64 1073741824)
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* @CONTROL_CORE_PAD0_GPMC_WAIT1, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @REG_WRITE16(i64 %77, i32 3)
  %79 = call i32 @DELAY(i32 10)
  %80 = load i64, i64* %3, align 8
  %81 = load i64, i64* @GPIO2_SETDATAOUT, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @REG_WRITE32(i64 %82, i64 1073741824)
  %84 = load i64, i64* %2, align 8
  %85 = load i64, i64* @GPIO1_SETDATAOUT, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @REG_WRITE32(i64 %86, i64 2)
  %88 = load i32, i32* @fdtbus_bs_tag, align 4
  %89 = load i64, i64* %1, align 8
  %90 = load i32, i32* @OMAP44XX_SCRM_SIZE, align 4
  %91 = call i32 @bus_space_unmap(i32 %88, i64 %89, i32 %90)
  %92 = load i32, i32* @fdtbus_bs_tag, align 4
  %93 = load i64, i64* %2, align 8
  %94 = load i32, i32* @OMAP44XX_GPIO1_SIZE, align 4
  %95 = call i32 @bus_space_unmap(i32 %92, i64 %93, i32 %94)
  %96 = load i32, i32* @fdtbus_bs_tag, align 4
  %97 = load i64, i64* %3, align 8
  %98 = load i32, i32* @OMAP44XX_GPIO2_SIZE, align 4
  %99 = call i32 @bus_space_unmap(i32 %96, i64 %97, i32 %98)
  %100 = load i32, i32* @fdtbus_bs_tag, align 4
  %101 = load i64, i64* %4, align 8
  %102 = load i32, i32* @OMAP44XX_SCM_PADCONF_SIZE, align 4
  %103 = call i32 @bus_space_unmap(i32 %100, i64 %101, i32 %102)
  ret void
}

declare dso_local i64 @bus_space_map(i32, i32, i32, i32, i64*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @REG_WRITE32(i64, i64) #1

declare dso_local i32 @REG_WRITE16(i64, i32) #1

declare dso_local i64 @REG_READ32(i64) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bus_space_unmap(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
