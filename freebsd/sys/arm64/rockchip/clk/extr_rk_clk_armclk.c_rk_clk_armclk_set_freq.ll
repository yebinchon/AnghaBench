; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_armclk.c_rk_clk_armclk_set_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_armclk.c_rk_clk_armclk_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.rk_clk_armclk_sc = type { i64, i32, i32, i32, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"Finding best parent/div for target freq of %ju\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Best parent %s (%d) with best freq at %ju\0A\00", align 1
@CLK_SET_DRYRUN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Changing parent (%s) freq to %ju\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Cannot set %s to %ju\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"main parent freq at %ju\0A\00", align 1
@RK_ARMCLK_WRITE_MASK_SHIFT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Write: muxdiv_offset=%x, val=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32, i32*, i32, i32*)* @rk_clk_armclk_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_clk_armclk_set_freq(%struct.clknode* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.clknode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.rk_clk_armclk_sc*, align 8
  %13 = alloca %struct.clknode*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %21, align 4
  %22 = load %struct.clknode*, %struct.clknode** %7, align 8
  %23 = call %struct.rk_clk_armclk_sc* @clknode_get_softc(%struct.clknode* %22)
  store %struct.rk_clk_armclk_sc* %23, %struct.rk_clk_armclk_sc** %12, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.clknode*, %struct.clknode** %7, align 8
  %28 = call i8** @clknode_get_parent_names(%struct.clknode* %27)
  store i8** %28, i8*** %14, align 8
  %29 = load i8**, i8*** %14, align 8
  %30 = load %struct.rk_clk_armclk_sc*, %struct.rk_clk_armclk_sc** %12, align 8
  %31 = getelementptr inbounds %struct.rk_clk_armclk_sc, %struct.rk_clk_armclk_sc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i8*, i8** %29, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call %struct.clknode* @clknode_find_by_name(i8* %34)
  store %struct.clknode* %35, %struct.clknode** %13, align 8
  store i32 0, i32* %20, align 4
  br label %36

36:                                               ; preds = %83, %5
  %37 = load i32, i32* %20, align 4
  %38 = load %struct.rk_clk_armclk_sc*, %struct.rk_clk_armclk_sc** %12, align 8
  %39 = getelementptr inbounds %struct.rk_clk_armclk_sc, %struct.rk_clk_armclk_sc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %86

42:                                               ; preds = %36
  %43 = load %struct.rk_clk_armclk_sc*, %struct.rk_clk_armclk_sc** %12, align 8
  %44 = getelementptr inbounds %struct.rk_clk_armclk_sc, %struct.rk_clk_armclk_sc* %43, i32 0, i32 5
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %20, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %82

54:                                               ; preds = %42
  %55 = load %struct.rk_clk_armclk_sc*, %struct.rk_clk_armclk_sc** %12, align 8
  %56 = getelementptr inbounds %struct.rk_clk_armclk_sc, %struct.rk_clk_armclk_sc* %55, i32 0, i32 5
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %20, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %15, align 4
  %63 = load %struct.rk_clk_armclk_sc*, %struct.rk_clk_armclk_sc** %12, align 8
  %64 = getelementptr inbounds %struct.rk_clk_armclk_sc, %struct.rk_clk_armclk_sc* %63, i32 0, i32 5
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %20, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %17, align 4
  %73 = mul nsw i32 %71, %72
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %20, align 4
  store i32 %74, i32* %21, align 4
  %75 = load %struct.clknode*, %struct.clknode** %13, align 8
  %76 = call i8* @clknode_get_name(%struct.clknode* %75)
  %77 = load %struct.rk_clk_armclk_sc*, %struct.rk_clk_armclk_sc** %12, align 8
  %78 = getelementptr inbounds %struct.rk_clk_armclk_sc, %struct.rk_clk_armclk_sc* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %15, align 4
  %81 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %76, i64 %79, i32 %80)
  br label %86

82:                                               ; preds = %42
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %20, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %20, align 4
  br label %36

86:                                               ; preds = %54, %36
  %87 = load i32, i32* %21, align 4
  %88 = load %struct.rk_clk_armclk_sc*, %struct.rk_clk_armclk_sc** %12, align 8
  %89 = getelementptr inbounds %struct.rk_clk_armclk_sc, %struct.rk_clk_armclk_sc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 0, i32* %6, align 4
  br label %160

93:                                               ; preds = %86
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @CLK_SET_DRYRUN, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32, i32* %15, align 4
  %100 = load i32*, i32** %9, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32*, i32** %11, align 8
  store i32 1, i32* %101, align 4
  store i32 0, i32* %6, align 4
  br label %160

102:                                              ; preds = %93
  %103 = load %struct.clknode*, %struct.clknode** %13, align 8
  %104 = call i8* @clknode_get_name(%struct.clknode* %103)
  %105 = load i32, i32* %16, align 4
  %106 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %104, i32 %105)
  %107 = load %struct.clknode*, %struct.clknode** %13, align 8
  %108 = load i32, i32* %16, align 4
  %109 = call i32 @clknode_set_freq(%struct.clknode* %107, i32 %108, i32 0, i32 1)
  store i32 %109, i32* %19, align 4
  %110 = load i32, i32* %19, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %102
  %113 = load %struct.clknode*, %struct.clknode** %13, align 8
  %114 = call i8* @clknode_get_name(%struct.clknode* %113)
  %115 = load i32, i32* %16, align 4
  %116 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %114, i32 %115)
  br label %117

117:                                              ; preds = %112, %102
  %118 = load %struct.clknode*, %struct.clknode** %7, align 8
  %119 = load %struct.rk_clk_armclk_sc*, %struct.rk_clk_armclk_sc** %12, align 8
  %120 = getelementptr inbounds %struct.rk_clk_armclk_sc, %struct.rk_clk_armclk_sc* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @clknode_set_parent_by_idx(%struct.clknode* %118, i64 %121)
  %123 = load %struct.clknode*, %struct.clknode** %13, align 8
  %124 = call i32 @clknode_get_freq(%struct.clknode* %123, i32* %16)
  %125 = load i32, i32* %16, align 4
  %126 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %125)
  %127 = load %struct.clknode*, %struct.clknode** %7, align 8
  %128 = call i32 @DEVICE_LOCK(%struct.clknode* %127)
  %129 = load i32, i32* %17, align 4
  %130 = sub nsw i32 %129, 1
  %131 = load %struct.rk_clk_armclk_sc*, %struct.rk_clk_armclk_sc** %12, align 8
  %132 = getelementptr inbounds %struct.rk_clk_armclk_sc, %struct.rk_clk_armclk_sc* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = shl i32 %130, %133
  %135 = load i32, i32* %18, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %18, align 4
  %137 = load %struct.rk_clk_armclk_sc*, %struct.rk_clk_armclk_sc** %12, align 8
  %138 = getelementptr inbounds %struct.rk_clk_armclk_sc, %struct.rk_clk_armclk_sc* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @RK_ARMCLK_WRITE_MASK_SHIFT, align 4
  %141 = shl i32 %139, %140
  %142 = load i32, i32* %18, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %18, align 4
  %144 = load %struct.rk_clk_armclk_sc*, %struct.rk_clk_armclk_sc** %12, align 8
  %145 = getelementptr inbounds %struct.rk_clk_armclk_sc, %struct.rk_clk_armclk_sc* %144, i32 0, i32 4
  %146 = load i8*, i8** %145, align 8
  %147 = load i32, i32* %18, align 4
  %148 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %146, i32 %147)
  %149 = load %struct.clknode*, %struct.clknode** %7, align 8
  %150 = load %struct.rk_clk_armclk_sc*, %struct.rk_clk_armclk_sc** %12, align 8
  %151 = getelementptr inbounds %struct.rk_clk_armclk_sc, %struct.rk_clk_armclk_sc* %150, i32 0, i32 4
  %152 = load i8*, i8** %151, align 8
  %153 = load i32, i32* %18, align 4
  %154 = call i32 @WRITE4(%struct.clknode* %149, i8* %152, i32 %153)
  %155 = load %struct.clknode*, %struct.clknode** %7, align 8
  %156 = call i32 @DEVICE_UNLOCK(%struct.clknode* %155)
  %157 = load i32, i32* %15, align 4
  %158 = load i32*, i32** %9, align 8
  store i32 %157, i32* %158, align 4
  %159 = load i32*, i32** %11, align 8
  store i32 1, i32* %159, align 4
  store i32 0, i32* %6, align 4
  br label %160

160:                                              ; preds = %117, %98, %92
  %161 = load i32, i32* %6, align 4
  ret i32 %161
}

declare dso_local %struct.rk_clk_armclk_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i8** @clknode_get_parent_names(%struct.clknode*) #1

declare dso_local %struct.clknode* @clknode_find_by_name(i8*) #1

declare dso_local i8* @clknode_get_name(%struct.clknode*) #1

declare dso_local i32 @clknode_set_freq(%struct.clknode*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @clknode_set_parent_by_idx(%struct.clknode*, i64) #1

declare dso_local i32 @clknode_get_freq(%struct.clknode*, i32*) #1

declare dso_local i32 @DEVICE_LOCK(%struct.clknode*) #1

declare dso_local i32 @WRITE4(%struct.clknode*, i8*, i32) #1

declare dso_local i32 @DEVICE_UNLOCK(%struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
