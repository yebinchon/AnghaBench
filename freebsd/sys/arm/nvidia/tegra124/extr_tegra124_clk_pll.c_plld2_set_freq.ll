; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_pll.c_plld2_set_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_pll.c_plld2_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pll_sc = type { %struct.pdiv_table*, %struct.mnp_bits }
%struct.pdiv_table = type { i64 }
%struct.mnp_bits = type { i32, i32 }

@INT64_MAX = common dso_local global i32 0, align 4
@PLLD2_VCO_MIN = common dso_local global i32 0, align 4
@PLLD2_VCO_MAX = common dso_local global i32 0, align 4
@PLLD2_PFD_MAX = common dso_local global i32 0, align 4
@PLLD2_PFD_MIN = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@CLK_SET_DRYRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pll_sc*, i32, i32*, i32)* @plld2_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plld2_set_freq(%struct.pll_sc* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pll_sc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
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
  %19 = alloca i32, align 4
  %20 = alloca %struct.mnp_bits*, align 8
  %21 = alloca %struct.pdiv_table*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.pll_sc* %0, %struct.pll_sc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %24 = load %struct.pll_sc*, %struct.pll_sc** %6, align 8
  %25 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %24, i32 0, i32 1
  store %struct.mnp_bits* %25, %struct.mnp_bits** %20, align 8
  %26 = load %struct.pll_sc*, %struct.pll_sc** %6, align 8
  %27 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %26, i32 0, i32 0
  %28 = load %struct.pdiv_table*, %struct.pdiv_table** %27, align 8
  store %struct.pdiv_table* %28, %struct.pdiv_table** %21, align 8
  %29 = load i32, i32* @INT64_MAX, align 4
  store i32 %29, i32* %19, align 4
  store i32 0, i32* %22, align 4
  br label %30

30:                                               ; preds = %146, %4
  %31 = load %struct.pdiv_table*, %struct.pdiv_table** %21, align 8
  %32 = load i32, i32* %22, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.pdiv_table, %struct.pdiv_table* %31, i64 %33
  %35 = getelementptr inbounds %struct.pdiv_table, %struct.pdiv_table* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %149

38:                                               ; preds = %30
  %39 = load %struct.pdiv_table*, %struct.pdiv_table** %21, align 8
  %40 = load i32, i32* %22, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.pdiv_table, %struct.pdiv_table* %39, i64 %41
  %43 = getelementptr inbounds %struct.pdiv_table, %struct.pdiv_table* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %12, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %12, align 4
  %49 = mul nsw i32 %47, %48
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* @PLLD2_VCO_MIN, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %38
  br label %146

54:                                               ; preds = %38
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* @PLLD2_VCO_MAX, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %149

59:                                               ; preds = %54
  store i32 1, i32* %10, align 4
  br label %60

60:                                               ; preds = %142, %59
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.mnp_bits*, %struct.mnp_bits** %20, align 8
  %63 = getelementptr inbounds %struct.mnp_bits, %struct.mnp_bits* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 1, %64
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %145

67:                                               ; preds = %60
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %12, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32, i32* %10, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %7, align 4
  %75 = sdiv i32 %74, 2
  %76 = add nsw i32 %73, %75
  %77 = load i32, i32* %7, align 4
  %78 = sdiv i32 %76, %77
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %67
  br label %142

82:                                               ; preds = %67
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.mnp_bits*, %struct.mnp_bits** %20, align 8
  %85 = getelementptr inbounds %struct.mnp_bits, %struct.mnp_bits* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 1, %86
  %88 = icmp sge i32 %83, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %145

90:                                               ; preds = %82
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %11, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32, i32* %10, align 4
  %95 = sdiv i32 %93, %94
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* @PLLD2_VCO_MAX, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %90
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* @PLLD2_VCO_MIN, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99, %90
  br label %142

104:                                              ; preds = %99
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %10, align 4
  %107 = sdiv i32 %105, %106
  store i32 %107, i32* %17, align 4
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* @PLLD2_PFD_MAX, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %115, label %111

111:                                              ; preds = %104
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* @PLLD2_PFD_MIN, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111, %104
  br label %142

116:                                              ; preds = %111
  %117 = load i32*, i32** %8, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* %12, align 4
  %121 = sdiv i32 %119, %120
  %122 = sub nsw i32 %118, %121
  store i32 %122, i32* %18, align 4
  %123 = load i32, i32* %18, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %116
  %126 = load i32, i32* %18, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %18, align 4
  br label %128

128:                                              ; preds = %125, %116
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* %19, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load i32, i32* %18, align 4
  store i32 %133, i32* %19, align 4
  %134 = load i32, i32* %12, align 4
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %11, align 4
  store i32 %136, i32* %14, align 4
  br label %137

137:                                              ; preds = %132, %128
  %138 = load i32, i32* %18, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  br label %150

141:                                              ; preds = %137
  br label %142

142:                                              ; preds = %141, %115, %103, %81
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %10, align 4
  br label %60

145:                                              ; preds = %89, %60
  br label %146

146:                                              ; preds = %145, %53
  %147 = load i32, i32* %22, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %22, align 4
  br label %30

149:                                              ; preds = %58, %30
  br label %150

150:                                              ; preds = %149, %140
  %151 = load i32, i32* %19, align 4
  %152 = load i32*, i32** %8, align 8
  %153 = load i32, i32* %152, align 4
  %154 = mul nsw i32 %153, 100
  %155 = sdiv i32 %154, 4
  %156 = icmp sgt i32 %151, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %150
  %158 = load i32, i32* @ERANGE, align 4
  store i32 %158, i32* %5, align 4
  br label %175

159:                                              ; preds = %150
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* @CLK_SET_DRYRUN, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  store i32 0, i32* %5, align 4
  br label %175

165:                                              ; preds = %159
  %166 = load %struct.pll_sc*, %struct.pll_sc** %6, align 8
  %167 = load i32, i32* %7, align 4
  %168 = load i32*, i32** %8, align 8
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %15, align 4
  %173 = call i32 @pll_set_std(%struct.pll_sc* %166, i32 %167, i32* %168, i32 %169, i32 %170, i32 %171, i32 %172)
  store i32 %173, i32* %23, align 4
  %174 = load i32, i32* %23, align 4
  store i32 %174, i32* %5, align 4
  br label %175

175:                                              ; preds = %165, %164, %157
  %176 = load i32, i32* %5, align 4
  ret i32 %176
}

declare dso_local i32 @pll_set_std(%struct.pll_sc*, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
