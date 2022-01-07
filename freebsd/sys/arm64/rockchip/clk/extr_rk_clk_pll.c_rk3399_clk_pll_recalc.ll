; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_pll.c_rk3399_clk_pll_recalc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_pll.c_rk3399_clk_pll_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.rk_clk_pll_sc = type { i64 }

@RK3399_CLK_PLL_MODE_MASK = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_MODE_SHIFT = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_MODE_SLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"pll in slow mode, con4=%x\0A\00", align 1
@RK3399_CLK_PLL_MODE_DEEPSLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"pll in deep slow, con4=%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"con0: %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"con1: %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"con2: %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"con3: %x\0A\00", align 1
@RK3399_CLK_PLL_FBDIV_MASK = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_FBDIV_SHIFT = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_POSTDIV1_MASK = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_POSTDIV1_SHIFT = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_POSTDIV2_MASK = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_POSTDIV2_SHIFT = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_REFDIV_MASK = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_REFDIV_SHIFT = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_FRAC_MASK = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_FRAC_SHIFT = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_DSMPD_MASK = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_DSMPD_SHIFT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"fbdiv: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"postdiv1: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"postdiv2: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"refdiv: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"fracdiv: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"dsmpd: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"parent freq=%ju\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"foutvco: %ju\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"freq: %ju\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32*)* @rk3399_clk_pll_recalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3399_clk_pll_recalc(%struct.clknode* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clknode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rk_clk_pll_sc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %4, align 8
  store i32* %1, i32** %5, align 8
  %19 = load %struct.clknode*, %struct.clknode** %4, align 8
  %20 = call %struct.rk_clk_pll_sc* @clknode_get_softc(%struct.clknode* %19)
  store %struct.rk_clk_pll_sc* %20, %struct.rk_clk_pll_sc** %6, align 8
  %21 = load %struct.clknode*, %struct.clknode** %4, align 8
  %22 = call i32 @DEVICE_LOCK(%struct.clknode* %21)
  %23 = load %struct.clknode*, %struct.clknode** %4, align 8
  %24 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %6, align 8
  %25 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @READ4(%struct.clknode* %23, i64 %26, i32* %13)
  %28 = load %struct.clknode*, %struct.clknode** %4, align 8
  %29 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %6, align 8
  %30 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 4
  %33 = call i32 @READ4(%struct.clknode* %28, i64 %32, i32* %14)
  %34 = load %struct.clknode*, %struct.clknode** %4, align 8
  %35 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %6, align 8
  %36 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 8
  %39 = call i32 @READ4(%struct.clknode* %34, i64 %38, i32* %15)
  %40 = load %struct.clknode*, %struct.clknode** %4, align 8
  %41 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %6, align 8
  %42 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 12
  %45 = call i32 @READ4(%struct.clknode* %40, i64 %44, i32* %16)
  %46 = load %struct.clknode*, %struct.clknode** %4, align 8
  %47 = call i32 @DEVICE_UNLOCK(%struct.clknode* %46)
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* @RK3399_CLK_PLL_MODE_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @RK3399_CLK_PLL_MODE_SHIFT, align 4
  %52 = ashr i32 %50, %51
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* @RK3399_CLK_PLL_MODE_SLOW, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %2
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @dprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %57)
  store i32 0, i32* %3, align 4
  br label %154

59:                                               ; preds = %2
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* @RK3399_CLK_PLL_MODE_DEEPSLOW, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* %16, align 4
  %65 = call i32 @dprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32*, i32** %5, align 8
  store i32 32768, i32* %66, align 4
  store i32 0, i32* %3, align 4
  br label %154

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @dprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @dprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @dprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @dprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* @RK3399_CLK_PLL_FBDIV_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @RK3399_CLK_PLL_FBDIV_SHIFT, align 4
  %81 = ashr i32 %79, %80
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @RK3399_CLK_PLL_POSTDIV1_MASK, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @RK3399_CLK_PLL_POSTDIV1_SHIFT, align 4
  %86 = ashr i32 %84, %85
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @RK3399_CLK_PLL_POSTDIV2_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* @RK3399_CLK_PLL_POSTDIV2_SHIFT, align 4
  %91 = ashr i32 %89, %90
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* @RK3399_CLK_PLL_REFDIV_MASK, align 4
  %94 = and i32 %92, %93
  %95 = load i32, i32* @RK3399_CLK_PLL_REFDIV_SHIFT, align 4
  %96 = ashr i32 %94, %95
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* @RK3399_CLK_PLL_FRAC_MASK, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* @RK3399_CLK_PLL_FRAC_SHIFT, align 4
  %101 = ashr i32 %99, %100
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = ashr i32 %102, 24
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* @RK3399_CLK_PLL_DSMPD_MASK, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* @RK3399_CLK_PLL_DSMPD_SHIFT, align 4
  %108 = ashr i32 %106, %107
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @dprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @dprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %119)
  %121 = load i32*, i32** %5, align 8
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %7, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %68
  %127 = load i32*, i32** %5, align 8
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %8, align 4
  %130 = sdiv i32 %128, %129
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %131, %132
  %134 = mul nsw i32 %130, %133
  store i32 %134, i32* %17, align 4
  br label %142

135:                                              ; preds = %68
  %136 = load i32*, i32** %5, align 8
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %8, align 4
  %139 = sdiv i32 %137, %138
  %140 = load i32, i32* %9, align 4
  %141 = mul nsw i32 %139, %140
  store i32 %141, i32* %17, align 4
  br label %142

142:                                              ; preds = %135, %126
  %143 = load i32, i32* %17, align 4
  %144 = call i32 @dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* %17, align 4
  %146 = load i32, i32* %10, align 4
  %147 = sdiv i32 %145, %146
  %148 = load i32, i32* %11, align 4
  %149 = sdiv i32 %147, %148
  %150 = load i32*, i32** %5, align 8
  store i32 %149, i32* %150, align 4
  %151 = load i32*, i32** %5, align 8
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @dprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 %152)
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %142, %63, %56
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local %struct.rk_clk_pll_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @DEVICE_LOCK(%struct.clknode*) #1

declare dso_local i32 @READ4(%struct.clknode*, i64, i32*) #1

declare dso_local i32 @DEVICE_UNLOCK(%struct.clknode*) #1

declare dso_local i32 @dprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
