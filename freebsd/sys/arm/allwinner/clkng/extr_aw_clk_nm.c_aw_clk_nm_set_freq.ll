; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_nm.c_aw_clk_nm_set_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_nm.c_aw_clk_nm_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.aw_clk_nm_sc = type { i32, i32, i32, i32, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@AW_CLK_REPARENT = common dso_local global i32 0, align 4
@CLK_SET_DRYRUN = common dso_local global i32 0, align 4
@CLK_SET_ROUND_DOWN = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@CLK_SET_ROUND_UP = common dso_local global i32 0, align 4
@AW_CLK_HAS_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i64, i64*, i32, i32*)* @aw_clk_nm_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_clk_nm_set_freq(%struct.clknode* %0, i64 %1, i64* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.clknode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.aw_clk_nm_sc*, align 8
  %13 = alloca %struct.clknode*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %25 = load %struct.clknode*, %struct.clknode** %7, align 8
  %26 = call %struct.aw_clk_nm_sc* @clknode_get_softc(%struct.clknode* %25)
  store %struct.aw_clk_nm_sc* %26, %struct.aw_clk_nm_sc** %12, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %23, align 4
  %27 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %12, align 8
  %28 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AW_CLK_REPARENT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %79

33:                                               ; preds = %5
  %34 = load %struct.clknode*, %struct.clknode** %7, align 8
  %35 = call i8** @clknode_get_parent_names(%struct.clknode* %34)
  store i8** %35, i8*** %14, align 8
  store i32 0, i32* %22, align 4
  br label %36

36:                                               ; preds = %69, %33
  %37 = load i32, i32* %22, align 4
  %38 = load %struct.clknode*, %struct.clknode** %7, align 8
  %39 = call i32 @clknode_get_parents_num(%struct.clknode* %38)
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %72

41:                                               ; preds = %36
  %42 = load i8**, i8*** %14, align 8
  %43 = load i32, i32* %22, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call %struct.clknode* @clknode_find_by_name(i8* %46)
  store %struct.clknode* %47, %struct.clknode** %13, align 8
  %48 = load %struct.clknode*, %struct.clknode** %13, align 8
  %49 = call i32 @clknode_get_freq(%struct.clknode* %48, i64* %8)
  %50 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %12, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64*, i64** %9, align 8
  %53 = call i64 @aw_clk_nm_find_best(%struct.aw_clk_nm_sc* %50, i64 %51, i64* %52, i32* %19, i32* %18)
  store i64 %53, i64* %15, align 8
  %54 = load i64*, i64** %9, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %15, align 8
  %57 = sub nsw i64 %55, %56
  %58 = load i64*, i64** %9, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %16, align 8
  %61 = sub nsw i64 %59, %60
  %62 = icmp slt i64 %57, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %41
  %64 = load i64, i64* %15, align 8
  store i64 %64, i64* %16, align 8
  %65 = load i32, i32* %22, align 4
  store i32 %65, i32* %23, align 4
  %66 = load i32, i32* %19, align 4
  store i32 %66, i32* %21, align 4
  %67 = load i32, i32* %18, align 4
  store i32 %67, i32* %20, align 4
  br label %68

68:                                               ; preds = %63, %41
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %22, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %22, align 4
  br label %36

72:                                               ; preds = %36
  %73 = load %struct.clknode*, %struct.clknode** %7, align 8
  %74 = call i32 @clknode_get_parent_idx(%struct.clknode* %73)
  store i32 %74, i32* %22, align 4
  %75 = load %struct.clknode*, %struct.clknode** %7, align 8
  %76 = call %struct.clknode* @clknode_get_parent(%struct.clknode* %75)
  store %struct.clknode* %76, %struct.clknode** %13, align 8
  %77 = load %struct.clknode*, %struct.clknode** %13, align 8
  %78 = call i32 @clknode_get_freq(%struct.clknode* %77, i64* %8)
  br label %84

79:                                               ; preds = %5
  %80 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %12, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i64*, i64** %9, align 8
  %83 = call i64 @aw_clk_nm_find_best(%struct.aw_clk_nm_sc* %80, i64 %81, i64* %82, i32* %21, i32* %20)
  store i64 %83, i64* %16, align 8
  br label %84

84:                                               ; preds = %79, %72
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @CLK_SET_DRYRUN, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i64, i64* %16, align 8
  %91 = load i64*, i64** %9, align 8
  store i64 %90, i64* %91, align 8
  %92 = load i32*, i32** %11, align 8
  store i32 1, i32* %92, align 4
  store i32 0, i32* %6, align 4
  br label %225

93:                                               ; preds = %84
  %94 = load i64, i64* %16, align 8
  %95 = load i64*, i64** %9, align 8
  %96 = load i64, i64* %95, align 8
  %97 = icmp slt i64 %94, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @CLK_SET_ROUND_DOWN, align 4
  %101 = and i32 %99, %100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32*, i32** %11, align 8
  store i32 1, i32* %104, align 4
  %105 = load i32, i32* @ERANGE, align 4
  store i32 %105, i32* %6, align 4
  br label %225

106:                                              ; preds = %98, %93
  %107 = load i64, i64* %16, align 8
  %108 = load i64*, i64** %9, align 8
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %107, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @CLK_SET_ROUND_UP, align 4
  %114 = and i32 %112, %113
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32*, i32** %11, align 8
  store i32 1, i32* %117, align 4
  %118 = load i32, i32* @ERANGE, align 4
  store i32 %118, i32* %6, align 4
  br label %225

119:                                              ; preds = %111, %106
  %120 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %12, align 8
  %121 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @AW_CLK_REPARENT, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %119
  %127 = load i32, i32* %22, align 4
  %128 = load i32, i32* %23, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = load %struct.clknode*, %struct.clknode** %7, align 8
  %132 = load i32, i32* %23, align 4
  %133 = call i32 @clknode_set_parent_by_idx(%struct.clknode* %131, i32 %132)
  br label %134

134:                                              ; preds = %130, %126, %119
  %135 = load %struct.clknode*, %struct.clknode** %7, align 8
  %136 = call i32 @DEVICE_LOCK(%struct.clknode* %135)
  %137 = load %struct.clknode*, %struct.clknode** %7, align 8
  %138 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %12, align 8
  %139 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @READ4(%struct.clknode* %137, i32 %140, i32* %17)
  %142 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %12, align 8
  %143 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %142, i32 0, i32 5
  %144 = load i32, i32* %21, align 4
  %145 = call i32 @aw_clk_factor_get_value(%struct.TYPE_2__* %143, i32 %144)
  store i32 %145, i32* %19, align 4
  %146 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %12, align 8
  %147 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %146, i32 0, i32 4
  %148 = load i32, i32* %20, align 4
  %149 = call i32 @aw_clk_factor_get_value(%struct.TYPE_2__* %147, i32 %148)
  store i32 %149, i32* %18, align 4
  %150 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %12, align 8
  %151 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %150, i32 0, i32 5
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = xor i32 %153, -1
  %155 = load i32, i32* %17, align 4
  %156 = and i32 %155, %154
  store i32 %156, i32* %17, align 4
  %157 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %12, align 8
  %158 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = xor i32 %160, -1
  %162 = load i32, i32* %17, align 4
  %163 = and i32 %162, %161
  store i32 %163, i32* %17, align 4
  %164 = load i32, i32* %19, align 4
  %165 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %12, align 8
  %166 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %165, i32 0, i32 5
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = shl i32 %164, %168
  %170 = load i32, i32* %17, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %17, align 4
  %172 = load i32, i32* %18, align 4
  %173 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %12, align 8
  %174 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = shl i32 %172, %176
  %178 = load i32, i32* %17, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %17, align 4
  %180 = load %struct.clknode*, %struct.clknode** %7, align 8
  %181 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %12, align 8
  %182 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %17, align 4
  %185 = call i32 @WRITE4(%struct.clknode* %180, i32 %183, i32 %184)
  %186 = load %struct.clknode*, %struct.clknode** %7, align 8
  %187 = call i32 @DEVICE_UNLOCK(%struct.clknode* %186)
  %188 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %12, align 8
  %189 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @AW_CLK_HAS_LOCK, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %221

194:                                              ; preds = %134
  store i32 0, i32* %24, align 4
  br label %195

195:                                              ; preds = %217, %194
  %196 = load i32, i32* %24, align 4
  %197 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %12, align 8
  %198 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %201, label %220

201:                                              ; preds = %195
  %202 = load %struct.clknode*, %struct.clknode** %7, align 8
  %203 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %12, align 8
  %204 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @READ4(%struct.clknode* %202, i32 %205, i32* %17)
  %207 = load i32, i32* %17, align 4
  %208 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %12, align 8
  %209 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = shl i32 1, %210
  %212 = and i32 %207, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %201
  br label %220

215:                                              ; preds = %201
  %216 = call i32 @DELAY(i32 1000)
  br label %217

217:                                              ; preds = %215
  %218 = load i32, i32* %24, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %24, align 4
  br label %195

220:                                              ; preds = %214, %195
  br label %221

221:                                              ; preds = %220, %134
  %222 = load i64, i64* %16, align 8
  %223 = load i64*, i64** %9, align 8
  store i64 %222, i64* %223, align 8
  %224 = load i32*, i32** %11, align 8
  store i32 1, i32* %224, align 4
  store i32 0, i32* %6, align 4
  br label %225

225:                                              ; preds = %221, %116, %103, %89
  %226 = load i32, i32* %6, align 4
  ret i32 %226
}

declare dso_local %struct.aw_clk_nm_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i8** @clknode_get_parent_names(%struct.clknode*) #1

declare dso_local i32 @clknode_get_parents_num(%struct.clknode*) #1

declare dso_local %struct.clknode* @clknode_find_by_name(i8*) #1

declare dso_local i32 @clknode_get_freq(%struct.clknode*, i64*) #1

declare dso_local i64 @aw_clk_nm_find_best(%struct.aw_clk_nm_sc*, i64, i64*, i32*, i32*) #1

declare dso_local i32 @clknode_get_parent_idx(%struct.clknode*) #1

declare dso_local %struct.clknode* @clknode_get_parent(%struct.clknode*) #1

declare dso_local i32 @clknode_set_parent_by_idx(%struct.clknode*, i32) #1

declare dso_local i32 @DEVICE_LOCK(%struct.clknode*) #1

declare dso_local i32 @READ4(%struct.clknode*, i32, i32*) #1

declare dso_local i32 @aw_clk_factor_get_value(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @WRITE4(%struct.clknode*, i32, i32) #1

declare dso_local i32 @DEVICE_UNLOCK(%struct.clknode*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
