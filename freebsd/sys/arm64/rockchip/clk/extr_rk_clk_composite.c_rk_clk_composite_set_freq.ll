; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_composite.c_rk_clk_composite_set_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_composite.c_rk_clk_composite_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.rk_clk_composite_sc = type { i64, i64, i64 }

@.str = private unnamed_addr constant [48 x i8] c"Finding best parent/div for target freq of %ju\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Testing with parent %s (%d) at freq %ju\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Best parent so far %s (%d) with best freq at %ju\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@CLK_SET_ROUND_DOWN = common dso_local global i32 0, align 4
@CLK_SET_ROUND_UP = common dso_local global i32 0, align 4
@CLK_SET_DRYRUN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Switching parent index from %d to %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Setting divider to %d (reg: %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c" div_mask: 0x%X, div_shift: %d\0A\00", align 1
@RK_CLK_COMPOSITE_MASK_SHIFT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [33 x i8] c"Write: muxdiv_offset=%x, val=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i64, i64*, i32, i32*)* @rk_clk_composite_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_clk_composite_set_freq(%struct.clknode* %0, i64 %1, i64* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.clknode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.rk_clk_composite_sc*, align 8
  %13 = alloca %struct.clknode*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %24 = load %struct.clknode*, %struct.clknode** %7, align 8
  %25 = call %struct.rk_clk_composite_sc* @clknode_get_softc(%struct.clknode* %24)
  store %struct.rk_clk_composite_sc* %25, %struct.rk_clk_composite_sc** %12, align 8
  %26 = load i64*, i64** %9, align 8
  %27 = load i64, i64* %26, align 8
  %28 = call i32 (i8*, i64, ...) @dprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load %struct.clknode*, %struct.clknode** %7, align 8
  %30 = call i8** @clknode_get_parent_names(%struct.clknode* %29)
  store i8** %30, i8*** %14, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %22, align 4
  br label %31

31:                                               ; preds = %80, %5
  %32 = load i32, i32* %22, align 4
  %33 = load %struct.clknode*, %struct.clknode** %7, align 8
  %34 = call i32 @clknode_get_parents_num(%struct.clknode* %33)
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %83

36:                                               ; preds = %31
  %37 = load i8**, i8*** %14, align 8
  %38 = load i32, i32* %22, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call %struct.clknode* @clknode_find_by_name(i8* %41)
  store %struct.clknode* %42, %struct.clknode** %13, align 8
  %43 = load %struct.clknode*, %struct.clknode** %13, align 8
  %44 = call i32 @clknode_get_freq(%struct.clknode* %43, i64* %8)
  %45 = load %struct.clknode*, %struct.clknode** %13, align 8
  %46 = call i32 @clknode_get_name(%struct.clknode* %45)
  %47 = sext i32 %46 to i64
  %48 = load i32, i32* %22, align 4
  %49 = load i64, i64* %8, align 8
  %50 = call i32 (i8*, i64, ...) @dprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %47, i32 %48, i64 %49)
  %51 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %12, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64*, i64** %9, align 8
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @rk_clk_composite_find_best(%struct.rk_clk_composite_sc* %51, i64 %52, i64 %54, i64* %18)
  store i64 %55, i64* %17, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %17, align 8
  %58 = sdiv i64 %56, %57
  store i64 %58, i64* %16, align 8
  %59 = load i64*, i64** %9, align 8
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %16, align 8
  %62 = sub nsw i64 %60, %61
  %63 = load i64*, i64** %9, align 8
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %15, align 8
  %66 = sub nsw i64 %64, %65
  %67 = icmp slt i64 %62, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %36
  %69 = load i64, i64* %16, align 8
  store i64 %69, i64* %15, align 8
  %70 = load i64, i64* %17, align 8
  store i64 %70, i64* %19, align 8
  %71 = load i64, i64* %18, align 8
  store i64 %71, i64* %20, align 8
  %72 = load i32, i32* %22, align 4
  store i32 %72, i32* %23, align 4
  %73 = load %struct.clknode*, %struct.clknode** %13, align 8
  %74 = call i32 @clknode_get_name(%struct.clknode* %73)
  %75 = sext i32 %74 to i64
  %76 = load i32, i32* %22, align 4
  %77 = load i64, i64* %15, align 8
  %78 = call i32 (i8*, i64, ...) @dprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %75, i32 %76, i64 %77)
  br label %79

79:                                               ; preds = %68, %36
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %22, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %22, align 4
  br label %31

83:                                               ; preds = %31
  %84 = load i32*, i32** %11, align 8
  store i32 1, i32* %84, align 4
  %85 = load i64, i64* %19, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @ERANGE, align 4
  store i32 %88, i32* %6, align 4
  br label %175

89:                                               ; preds = %83
  %90 = load i64, i64* %15, align 8
  %91 = load i64*, i64** %9, align 8
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %90, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @CLK_SET_ROUND_DOWN, align 4
  %97 = and i32 %95, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* @ERANGE, align 4
  store i32 %100, i32* %6, align 4
  br label %175

101:                                              ; preds = %94, %89
  %102 = load i64, i64* %15, align 8
  %103 = load i64*, i64** %9, align 8
  %104 = load i64, i64* %103, align 8
  %105 = icmp sgt i64 %102, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @CLK_SET_ROUND_UP, align 4
  %109 = and i32 %107, %108
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i32, i32* @ERANGE, align 4
  store i32 %112, i32* %6, align 4
  br label %175

113:                                              ; preds = %106, %101
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @CLK_SET_DRYRUN, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i64, i64* %15, align 8
  %120 = load i64*, i64** %9, align 8
  store i64 %119, i64* %120, align 8
  store i32 0, i32* %6, align 4
  br label %175

121:                                              ; preds = %113
  %122 = load %struct.clknode*, %struct.clknode** %7, align 8
  %123 = call i32 @clknode_get_parent_idx(%struct.clknode* %122)
  store i32 %123, i32* %22, align 4
  %124 = load i32, i32* %22, align 4
  %125 = load i32, i32* %23, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %121
  %128 = load i32, i32* %22, align 4
  %129 = sext i32 %128 to i64
  %130 = load i32, i32* %23, align 4
  %131 = call i32 (i8*, i64, ...) @dprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %129, i32 %130)
  %132 = load %struct.clknode*, %struct.clknode** %7, align 8
  %133 = load i32, i32* %23, align 4
  %134 = call i32 @clknode_set_parent_by_idx(%struct.clknode* %132, i32 %133)
  br label %135

135:                                              ; preds = %127, %121
  %136 = load i64, i64* %19, align 8
  %137 = load i64, i64* %20, align 8
  %138 = call i32 (i8*, i64, ...) @dprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %136, i64 %137)
  %139 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %12, align 8
  %140 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %12, align 8
  %143 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = call i32 (i8*, i64, ...) @dprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %141, i64 %144)
  %146 = load %struct.clknode*, %struct.clknode** %7, align 8
  %147 = call i32 @DEVICE_LOCK(%struct.clknode* %146)
  %148 = load i64, i64* %20, align 8
  %149 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %12, align 8
  %150 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = shl i64 %148, %151
  store i64 %152, i64* %21, align 8
  %153 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %12, align 8
  %154 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @RK_CLK_COMPOSITE_MASK_SHIFT, align 8
  %157 = shl i64 %155, %156
  %158 = load i64, i64* %21, align 8
  %159 = or i64 %158, %157
  store i64 %159, i64* %21, align 8
  %160 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %12, align 8
  %161 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %21, align 8
  %164 = call i32 (i8*, i64, ...) @dprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %162, i64 %163)
  %165 = load %struct.clknode*, %struct.clknode** %7, align 8
  %166 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %12, align 8
  %167 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* %21, align 8
  %170 = call i32 @WRITE4(%struct.clknode* %165, i64 %168, i64 %169)
  %171 = load %struct.clknode*, %struct.clknode** %7, align 8
  %172 = call i32 @DEVICE_UNLOCK(%struct.clknode* %171)
  %173 = load i64, i64* %15, align 8
  %174 = load i64*, i64** %9, align 8
  store i64 %173, i64* %174, align 8
  store i32 0, i32* %6, align 4
  br label %175

175:                                              ; preds = %135, %118, %111, %99, %87
  %176 = load i32, i32* %6, align 4
  ret i32 %176
}

declare dso_local %struct.rk_clk_composite_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @dprintf(i8*, i64, ...) #1

declare dso_local i8** @clknode_get_parent_names(%struct.clknode*) #1

declare dso_local i32 @clknode_get_parents_num(%struct.clknode*) #1

declare dso_local %struct.clknode* @clknode_find_by_name(i8*) #1

declare dso_local i32 @clknode_get_freq(%struct.clknode*, i64*) #1

declare dso_local i32 @clknode_get_name(%struct.clknode*) #1

declare dso_local i64 @rk_clk_composite_find_best(%struct.rk_clk_composite_sc*, i64, i64, i64*) #1

declare dso_local i32 @clknode_get_parent_idx(%struct.clknode*) #1

declare dso_local i32 @clknode_set_parent_by_idx(%struct.clknode*, i32) #1

declare dso_local i32 @DEVICE_LOCK(%struct.clknode*) #1

declare dso_local i32 @WRITE4(%struct.clknode*, i64, i64) #1

declare dso_local i32 @DEVICE_UNLOCK(%struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
