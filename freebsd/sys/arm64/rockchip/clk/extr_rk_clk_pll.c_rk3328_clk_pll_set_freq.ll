; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_pll.c_rk3328_clk_pll_set_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_pll.c_rk3328_clk_pll_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.rk_clk_pll_rate = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.rk_clk_pll_sc = type { i32, i64, i64, %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate* }

@EINVAL = common dso_local global i32 0, align 4
@RK3328_CLK_PLL_MODE_MASK = common dso_local global i32 0, align 4
@RK_CLK_PLL_MASK_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Set PLL_MODEREG to %x\0A\00", align 1
@RK3328_CLK_PLL_POSTDIV1_SHIFT = common dso_local global i32 0, align 4
@RK3328_CLK_PLL_FBDIV_SHIFT = common dso_local global i32 0, align 4
@RK3328_CLK_PLL_POSTDIV1_MASK = common dso_local global i32 0, align 4
@RK3328_CLK_PLL_FBDIV_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Set PLL_CON0 to %x\0A\00", align 1
@RK3328_CLK_PLL_DSMPD_SHIFT = common dso_local global i32 0, align 4
@RK3328_CLK_PLL_POSTDIV2_SHIFT = common dso_local global i32 0, align 4
@RK3328_CLK_PLL_REFDIV_SHIFT = common dso_local global i32 0, align 4
@RK3328_CLK_PLL_DSMPD_MASK = common dso_local global i32 0, align 4
@RK3328_CLK_PLL_POSTDIV2_MASK = common dso_local global i32 0, align 4
@RK3328_CLK_PLL_REFDIV_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Set PLL_CON1 to %x\0A\00", align 1
@RK3328_CLK_PLL_FRAC_MASK = common dso_local global i32 0, align 4
@RK3328_CLK_PLL_FRAC_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Set PLL_CON2 to %x\0A\00", align 1
@RK3328_CLK_PLL_LOCK_MASK = common dso_local global i32 0, align 4
@RK3328_CLK_PLL_MODE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i64, i64*, i32, i32*)* @rk3328_clk_pll_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3328_clk_pll_set_freq(%struct.clknode* %0, i64 %1, i64* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.clknode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.rk_clk_pll_rate*, align 8
  %13 = alloca %struct.rk_clk_pll_sc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load %struct.clknode*, %struct.clknode** %7, align 8
  %17 = call %struct.rk_clk_pll_sc* @clknode_get_softc(%struct.clknode* %16)
  store %struct.rk_clk_pll_sc* %17, %struct.rk_clk_pll_sc** %13, align 8
  %18 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %13, align 8
  %19 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %18, i32 0, i32 4
  %20 = load %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate** %19, align 8
  %21 = icmp ne %struct.rk_clk_pll_rate* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %13, align 8
  %24 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %23, i32 0, i32 4
  %25 = load %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate** %24, align 8
  store %struct.rk_clk_pll_rate* %25, %struct.rk_clk_pll_rate** %12, align 8
  br label %38

26:                                               ; preds = %5
  %27 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %13, align 8
  %28 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %27, i32 0, i32 3
  %29 = load %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate** %28, align 8
  %30 = icmp ne %struct.rk_clk_pll_rate* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %13, align 8
  %33 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %32, i32 0, i32 3
  %34 = load %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate** %33, align 8
  store %struct.rk_clk_pll_rate* %34, %struct.rk_clk_pll_rate** %12, align 8
  br label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %6, align 4
  br label %214

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %22
  br label %39

39:                                               ; preds = %53, %38
  %40 = load %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate** %12, align 8
  %41 = getelementptr inbounds %struct.rk_clk_pll_rate, %struct.rk_clk_pll_rate* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate** %12, align 8
  %46 = getelementptr inbounds %struct.rk_clk_pll_rate, %struct.rk_clk_pll_rate* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %56

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate** %12, align 8
  %55 = getelementptr inbounds %struct.rk_clk_pll_rate, %struct.rk_clk_pll_rate* %54, i32 1
  store %struct.rk_clk_pll_rate* %55, %struct.rk_clk_pll_rate** %12, align 8
  br label %39

56:                                               ; preds = %51, %39
  %57 = load %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate** %12, align 8
  %58 = getelementptr inbounds %struct.rk_clk_pll_rate, %struct.rk_clk_pll_rate* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32*, i32** %11, align 8
  store i32 1, i32* %62, align 4
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* %6, align 4
  br label %214

64:                                               ; preds = %56
  %65 = load %struct.clknode*, %struct.clknode** %7, align 8
  %66 = call i32 @DEVICE_LOCK(%struct.clknode* %65)
  %67 = load i32, i32* @RK3328_CLK_PLL_MODE_MASK, align 4
  %68 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %13, align 8
  %69 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = shl i32 %67, %70
  %72 = load i32, i32* @RK_CLK_PLL_MASK_SHIFT, align 4
  %73 = shl i32 %71, %72
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @dprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load %struct.clknode*, %struct.clknode** %7, align 8
  %77 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %13, align 8
  %78 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @WRITE4(%struct.clknode* %76, i64 %79, i32 %80)
  %82 = load %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate** %12, align 8
  %83 = getelementptr inbounds %struct.rk_clk_pll_rate, %struct.rk_clk_pll_rate* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @RK3328_CLK_PLL_POSTDIV1_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = load %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate** %12, align 8
  %88 = getelementptr inbounds %struct.rk_clk_pll_rate, %struct.rk_clk_pll_rate* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @RK3328_CLK_PLL_FBDIV_SHIFT, align 4
  %91 = shl i32 %89, %90
  %92 = or i32 %86, %91
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* @RK3328_CLK_PLL_POSTDIV1_MASK, align 4
  %94 = load i32, i32* @RK3328_CLK_PLL_FBDIV_MASK, align 4
  %95 = or i32 %93, %94
  %96 = shl i32 %95, 16
  %97 = load i32, i32* %14, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @dprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  %101 = load %struct.clknode*, %struct.clknode** %7, align 8
  %102 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %13, align 8
  %103 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @WRITE4(%struct.clknode* %101, i64 %104, i32 %105)
  %107 = load %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate** %12, align 8
  %108 = getelementptr inbounds %struct.rk_clk_pll_rate, %struct.rk_clk_pll_rate* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @RK3328_CLK_PLL_DSMPD_SHIFT, align 4
  %111 = shl i32 %109, %110
  %112 = load %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate** %12, align 8
  %113 = getelementptr inbounds %struct.rk_clk_pll_rate, %struct.rk_clk_pll_rate* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @RK3328_CLK_PLL_POSTDIV2_SHIFT, align 4
  %116 = shl i32 %114, %115
  %117 = or i32 %111, %116
  %118 = load %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate** %12, align 8
  %119 = getelementptr inbounds %struct.rk_clk_pll_rate, %struct.rk_clk_pll_rate* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @RK3328_CLK_PLL_REFDIV_SHIFT, align 4
  %122 = shl i32 %120, %121
  %123 = or i32 %117, %122
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* @RK3328_CLK_PLL_DSMPD_MASK, align 4
  %125 = load i32, i32* @RK3328_CLK_PLL_POSTDIV2_MASK, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @RK3328_CLK_PLL_REFDIV_MASK, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @RK_CLK_PLL_MASK_SHIFT, align 4
  %130 = shl i32 %128, %129
  %131 = load i32, i32* %14, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* %14, align 4
  %134 = call i32 @dprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %133)
  %135 = load %struct.clknode*, %struct.clknode** %7, align 8
  %136 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %13, align 8
  %137 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, 4
  %140 = load i32, i32* %14, align 4
  %141 = call i32 @WRITE4(%struct.clknode* %135, i64 %139, i32 %140)
  %142 = load %struct.clknode*, %struct.clknode** %7, align 8
  %143 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %13, align 8
  %144 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, 8
  %147 = call i32 @READ4(%struct.clknode* %142, i64 %146, i32* %14)
  %148 = load i32, i32* @RK3328_CLK_PLL_FRAC_MASK, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %14, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %14, align 4
  %152 = load %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate** %12, align 8
  %153 = getelementptr inbounds %struct.rk_clk_pll_rate, %struct.rk_clk_pll_rate* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @RK3328_CLK_PLL_FRAC_SHIFT, align 4
  %156 = shl i32 %154, %155
  %157 = load i32, i32* %14, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* %14, align 4
  %160 = call i32 @dprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %159)
  %161 = load %struct.clknode*, %struct.clknode** %7, align 8
  %162 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %13, align 8
  %163 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, 8
  %166 = load i32, i32* %14, align 4
  %167 = call i32 @WRITE4(%struct.clknode* %161, i64 %165, i32 %166)
  store i32 1000, i32* %15, align 4
  br label %168

168:                                              ; preds = %185, %64
  %169 = load i32, i32* %15, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %188

171:                                              ; preds = %168
  %172 = load %struct.clknode*, %struct.clknode** %7, align 8
  %173 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %13, align 8
  %174 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %175, 4
  %177 = call i32 @READ4(%struct.clknode* %172, i64 %176, i32* %14)
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* @RK3328_CLK_PLL_LOCK_MASK, align 4
  %180 = and i32 %178, %179
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %171
  br label %188

183:                                              ; preds = %171
  %184 = call i32 @DELAY(i32 1)
  br label %185

185:                                              ; preds = %183
  %186 = load i32, i32* %15, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %15, align 4
  br label %168

188:                                              ; preds = %182, %168
  %189 = load i32, i32* @RK3328_CLK_PLL_MODE_NORMAL, align 4
  %190 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %13, align 8
  %191 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = shl i32 %189, %192
  store i32 %193, i32* %14, align 4
  %194 = load i32, i32* @RK3328_CLK_PLL_MODE_MASK, align 4
  %195 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %13, align 8
  %196 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = shl i32 %194, %197
  %199 = load i32, i32* @RK_CLK_PLL_MASK_SHIFT, align 4
  %200 = shl i32 %198, %199
  %201 = load i32, i32* %14, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %14, align 4
  %203 = load i32, i32* %14, align 4
  %204 = call i32 @dprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %203)
  %205 = load %struct.clknode*, %struct.clknode** %7, align 8
  %206 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %13, align 8
  %207 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load i32, i32* %14, align 4
  %210 = call i32 @WRITE4(%struct.clknode* %205, i64 %208, i32 %209)
  %211 = load %struct.clknode*, %struct.clknode** %7, align 8
  %212 = call i32 @DEVICE_UNLOCK(%struct.clknode* %211)
  %213 = load i32*, i32** %11, align 8
  store i32 1, i32* %213, align 4
  store i32 0, i32* %6, align 4
  br label %214

214:                                              ; preds = %188, %61, %35
  %215 = load i32, i32* %6, align 4
  ret i32 %215
}

declare dso_local %struct.rk_clk_pll_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @DEVICE_LOCK(%struct.clknode*) #1

declare dso_local i32 @dprintf(i8*, i32) #1

declare dso_local i32 @WRITE4(%struct.clknode*, i64, i32) #1

declare dso_local i32 @READ4(%struct.clknode*, i64, i32*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @DEVICE_UNLOCK(%struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
