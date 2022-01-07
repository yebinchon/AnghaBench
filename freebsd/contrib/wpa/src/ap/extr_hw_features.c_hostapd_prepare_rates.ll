; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hw_features.c_hostapd_prepare_rates.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hw_features.c_hostapd_prepare_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { i64, %struct.TYPE_2__*, %struct.hostapd_rate_data*, %struct.hostapd_rate_data* }
%struct.TYPE_2__ = type { i32*, i32*, i32, i32 }
%struct.hostapd_rate_data = type { i32, i32 }
%struct.hostapd_hw_modes = type { i32, i32, i32* }

@__const.hostapd_prepare_rates.basic_rates_a = private unnamed_addr constant [4 x i32] [i32 60, i32 120, i32 240, i32 -1], align 16
@__const.hostapd_prepare_rates.basic_rates_b = private unnamed_addr constant [3 x i32] [i32 10, i32 20, i32 -1], align 4
@__const.hostapd_prepare_rates.basic_rates_g = private unnamed_addr constant [5 x i32] [i32 10, i32 20, i32 55, i32 110, i32 -1], align 16
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to allocate memory for rate table.\00", align 1
@HOSTAPD_RATE_BASIC = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"RATE[%d] rate=%d flags=0x%x\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"No rates remaining in supported/basic rate sets (%d,%d).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_prepare_rates(%struct.hostapd_iface* %0, %struct.hostapd_hw_modes* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_iface*, align 8
  %5 = alloca %struct.hostapd_hw_modes*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca [3 x i32], align 4
  %10 = alloca [5 x i32], align 16
  %11 = alloca i32*, align 8
  %12 = alloca %struct.hostapd_rate_data*, align 8
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %4, align 8
  store %struct.hostapd_hw_modes* %1, %struct.hostapd_hw_modes** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = bitcast [4 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([4 x i32]* @__const.hostapd_prepare_rates.basic_rates_a to i8*), i64 16, i1 false)
  %14 = bitcast [3 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast ([3 x i32]* @__const.hostapd_prepare_rates.basic_rates_b to i8*), i64 12, i1 false)
  %15 = bitcast [5 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([5 x i32]* @__const.hostapd_prepare_rates.basic_rates_g to i8*), i64 20, i1 false)
  %16 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %17 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %24 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %11, align 8
  br label %41

28:                                               ; preds = %2
  %29 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %30 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %39 [
    i32 131, label %32
    i32 129, label %34
    i32 128, label %36
    i32 130, label %38
  ]

32:                                               ; preds = %28
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32* %33, i32** %11, align 8
  br label %40

34:                                               ; preds = %28
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32* %35, i32** %11, align 8
  br label %40

36:                                               ; preds = %28
  %37 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  store i32* %37, i32** %11, align 8
  br label %40

38:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %214

39:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %214

40:                                               ; preds = %36, %34, %32
  br label %41

41:                                               ; preds = %40, %22
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %49, %41
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %42

52:                                               ; preds = %42
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %60 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %59, i32 0, i32 3
  %61 = load %struct.hostapd_rate_data*, %struct.hostapd_rate_data** %60, align 8
  %62 = call i32 @os_free(%struct.hostapd_rate_data* %61)
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = call %struct.hostapd_rate_data* @os_malloc(i32 %66)
  %68 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %69 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %68, i32 0, i32 3
  store %struct.hostapd_rate_data* %67, %struct.hostapd_rate_data** %69, align 8
  %70 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %71 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %70, i32 0, i32 3
  %72 = load %struct.hostapd_rate_data*, %struct.hostapd_rate_data** %71, align 8
  %73 = icmp ne %struct.hostapd_rate_data* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %58
  %75 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %76 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %75, i32 0, i32 3
  %77 = load %struct.hostapd_rate_data*, %struct.hostapd_rate_data** %76, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 4
  %82 = trunc i64 %81 to i32
  %83 = call i32 @os_memcpy(%struct.hostapd_rate_data* %77, i32* %78, i32 %82)
  br label %84

84:                                               ; preds = %74, %58
  %85 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %86 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %85, i32 0, i32 2
  %87 = load %struct.hostapd_rate_data*, %struct.hostapd_rate_data** %86, align 8
  %88 = call i32 @os_free(%struct.hostapd_rate_data* %87)
  %89 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %90 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  %91 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %92 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call %struct.hostapd_rate_data* @os_calloc(i32 %93, i32 8)
  %95 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %96 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %95, i32 0, i32 2
  store %struct.hostapd_rate_data* %94, %struct.hostapd_rate_data** %96, align 8
  %97 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %98 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %97, i32 0, i32 2
  %99 = load %struct.hostapd_rate_data*, %struct.hostapd_rate_data** %98, align 8
  %100 = icmp ne %struct.hostapd_rate_data* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %84
  %102 = load i32, i32* @MSG_ERROR, align 4
  %103 = call i32 (i32, i8*, ...) @wpa_printf(i32 %102, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %214

104:                                              ; preds = %84
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %181, %104
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %108 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %184

111:                                              ; preds = %105
  %112 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %113 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %112, i32 0, i32 1
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %134

118:                                              ; preds = %111
  %119 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %120 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %125 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @hostapd_rate_found(i32* %123, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %118
  br label %181

134:                                              ; preds = %118, %111
  %135 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %136 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %135, i32 0, i32 2
  %137 = load %struct.hostapd_rate_data*, %struct.hostapd_rate_data** %136, align 8
  %138 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %139 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.hostapd_rate_data, %struct.hostapd_rate_data* %137, i64 %140
  store %struct.hostapd_rate_data* %141, %struct.hostapd_rate_data** %12, align 8
  %142 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %143 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.hostapd_rate_data*, %struct.hostapd_rate_data** %12, align 8
  %150 = getelementptr inbounds %struct.hostapd_rate_data, %struct.hostapd_rate_data* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load i32*, i32** %11, align 8
  %152 = load %struct.hostapd_rate_data*, %struct.hostapd_rate_data** %12, align 8
  %153 = getelementptr inbounds %struct.hostapd_rate_data, %struct.hostapd_rate_data* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @hostapd_rate_found(i32* %151, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %134
  %158 = load i32, i32* @HOSTAPD_RATE_BASIC, align 4
  %159 = load %struct.hostapd_rate_data*, %struct.hostapd_rate_data** %12, align 8
  %160 = getelementptr inbounds %struct.hostapd_rate_data, %struct.hostapd_rate_data* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  %163 = load i32, i32* %7, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %7, align 4
  br label %165

165:                                              ; preds = %157, %134
  %166 = load i32, i32* @MSG_DEBUG, align 4
  %167 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %168 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.hostapd_rate_data*, %struct.hostapd_rate_data** %12, align 8
  %171 = getelementptr inbounds %struct.hostapd_rate_data, %struct.hostapd_rate_data* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.hostapd_rate_data*, %struct.hostapd_rate_data** %12, align 8
  %174 = getelementptr inbounds %struct.hostapd_rate_data, %struct.hostapd_rate_data* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (i32, i8*, ...) @wpa_printf(i32 %166, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %169, i32 %172, i32 %175)
  %177 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %178 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %178, align 8
  br label %181

181:                                              ; preds = %165, %133
  %182 = load i32, i32* %6, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %6, align 4
  br label %105

184:                                              ; preds = %105
  %185 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %186 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %184
  %190 = load i32, i32* %7, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %213

192:                                              ; preds = %189, %184
  %193 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %194 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %193, i32 0, i32 1
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %192
  %200 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %201 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %200, i32 0, i32 1
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %213, label %206

206:                                              ; preds = %199, %192
  %207 = load i32, i32* @MSG_ERROR, align 4
  %208 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %209 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = call i32 (i32, i8*, ...) @wpa_printf(i32 %207, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %210, i32 %211)
  store i32 -1, i32* %3, align 4
  br label %214

213:                                              ; preds = %199, %189
  store i32 0, i32* %3, align 4
  br label %214

214:                                              ; preds = %213, %206, %101, %39, %38
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @os_free(%struct.hostapd_rate_data*) #2

declare dso_local %struct.hostapd_rate_data* @os_malloc(i32) #2

declare dso_local i32 @os_memcpy(%struct.hostapd_rate_data*, i32*, i32) #2

declare dso_local %struct.hostapd_rate_data* @os_calloc(i32, i32) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i64 @hostapd_rate_found(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
