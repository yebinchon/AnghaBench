; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_scan_clone_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_scan_clone_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_scan_params = type { i64, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i64, i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpa_driver_scan_params* @wpa_scan_clone_params(%struct.wpa_driver_scan_params* %0) #0 {
  %2 = alloca %struct.wpa_driver_scan_params*, align 8
  %3 = alloca %struct.wpa_driver_scan_params*, align 8
  %4 = alloca %struct.wpa_driver_scan_params*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.wpa_driver_scan_params* %0, %struct.wpa_driver_scan_params** %3, align 8
  %10 = call %struct.wpa_driver_scan_params* @os_zalloc(i32 144)
  store %struct.wpa_driver_scan_params* %10, %struct.wpa_driver_scan_params** %4, align 8
  %11 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %12 = icmp eq %struct.wpa_driver_scan_params* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.wpa_driver_scan_params* null, %struct.wpa_driver_scan_params** %2, align 8
  br label %326

14:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %72, %14
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %18 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %75

21:                                               ; preds = %15
  %22 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %23 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %22, i32 0, i32 23
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %71

30:                                               ; preds = %21
  %31 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %32 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %31, i32 0, i32 23
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %39 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %38, i32 0, i32 23
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @os_memdup(i32* %37, i32 %44)
  %46 = bitcast i8* %45 to i32*
  store i32* %46, i32** %6, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %30
  br label %323

50:                                               ; preds = %30
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %53 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %52, i32 0, i32 23
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i32* %51, i32** %57, align 8
  %58 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %59 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %58, i32 0, i32 23
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %66 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %65, i32 0, i32 23
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %64, i32* %70, align 8
  br label %71

71:                                               ; preds = %50, %21
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %5, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %5, align 8
  br label %15

75:                                               ; preds = %15
  %76 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %77 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %80 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %82 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %81, i32 0, i32 22
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %106

85:                                               ; preds = %75
  %86 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %87 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %86, i32 0, i32 22
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %90 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i8* @os_memdup(i32* %88, i32 %91)
  %93 = bitcast i8* %92 to i32*
  store i32* %93, i32** %6, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  br label %323

97:                                               ; preds = %85
  %98 = load i32*, i32** %6, align 8
  %99 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %100 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %99, i32 0, i32 22
  store i32* %98, i32** %100, align 8
  %101 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %102 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %105 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %97, %75
  %107 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %108 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %107, i32 0, i32 21
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %134

111:                                              ; preds = %106
  %112 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %113 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %112, i32 0, i32 21
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @int_array_len(i32* %114)
  store i32 %115, i32* %7, align 4
  %116 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %117 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %116, i32 0, i32 21
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 4
  %123 = trunc i64 %122 to i32
  %124 = call i8* @os_memdup(i32* %118, i32 %123)
  %125 = bitcast i8* %124 to i32*
  %126 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %127 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %126, i32 0, i32 21
  store i32* %125, i32** %127, align 8
  %128 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %129 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %128, i32 0, i32 21
  %130 = load i32*, i32** %129, align 8
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %111
  br label %323

133:                                              ; preds = %111
  br label %134

134:                                              ; preds = %133, %106
  %135 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %136 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %135, i32 0, i32 20
  %137 = load i32*, i32** %136, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %164

139:                                              ; preds = %134
  %140 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %141 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %140, i32 0, i32 20
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %144 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = mul i64 4, %146
  %148 = trunc i64 %147 to i32
  %149 = call i8* @os_memdup(i32* %142, i32 %148)
  %150 = bitcast i8* %149 to i32*
  %151 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %152 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %151, i32 0, i32 20
  store i32* %150, i32** %152, align 8
  %153 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %154 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %153, i32 0, i32 20
  %155 = load i32*, i32** %154, align 8
  %156 = icmp eq i32* %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %139
  br label %323

158:                                              ; preds = %139
  %159 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %160 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %163 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %158, %134
  %165 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %166 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %165, i32 0, i32 19
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %169 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %168, i32 0, i32 19
  store i32 %167, i32* %169, align 8
  %170 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %171 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %170, i32 0, i32 18
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %174 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %173, i32 0, i32 18
  store i32 %172, i32* %174, align 4
  %175 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %176 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %175, i32 0, i32 17
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %179 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %178, i32 0, i32 17
  store i32 %177, i32* %179, align 8
  %180 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %181 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %180, i32 0, i32 16
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %184 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %183, i32 0, i32 16
  store i32 %182, i32* %184, align 4
  %185 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %186 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %185, i32 0, i32 15
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %189 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %188, i32 0, i32 15
  store i32 %187, i32* %189, align 8
  %190 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %191 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %190, i32 0, i32 14
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %194 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %193, i32 0, i32 14
  store i32 %192, i32* %194, align 4
  %195 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %196 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %195, i32 0, i32 13
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %199 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %198, i32 0, i32 13
  store i32 %197, i32* %199, align 8
  %200 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %201 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %229

204:                                              ; preds = %164
  %205 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %206 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %205, i32 0, i32 12
  %207 = load i32*, i32** %206, align 8
  %208 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %209 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = mul i64 4, %211
  %213 = trunc i64 %212 to i32
  %214 = call i8* @os_memdup(i32* %207, i32 %213)
  %215 = bitcast i8* %214 to i32*
  %216 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %217 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %216, i32 0, i32 12
  store i32* %215, i32** %217, align 8
  %218 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %219 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %218, i32 0, i32 12
  %220 = load i32*, i32** %219, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %223, label %222

222:                                              ; preds = %204
  br label %323

223:                                              ; preds = %204
  %224 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %225 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %228 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %227, i32 0, i32 3
  store i32 %226, i32* %228, align 8
  br label %229

229:                                              ; preds = %223, %164
  %230 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %231 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %230, i32 0, i32 11
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %282

234:                                              ; preds = %229
  %235 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %236 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %235, i32 0, i32 11
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %239 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %238, i32 0, i32 11
  store i64 %237, i64* %239, align 8
  %240 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %241 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %240, i32 0, i32 10
  %242 = load i32*, i32** %241, align 8
  %243 = icmp ne i32* %242, null
  br i1 %243, label %244, label %281

244:                                              ; preds = %234
  %245 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %246 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %245, i32 0, i32 9
  %247 = load i32*, i32** %246, align 8
  %248 = icmp ne i32* %247, null
  br i1 %248, label %249, label %281

249:                                              ; preds = %244
  %250 = load i32, i32* @ETH_ALEN, align 4
  %251 = mul nsw i32 2, %250
  %252 = call i32* @os_malloc(i32 %251)
  store i32* %252, i32** %8, align 8
  %253 = load i32*, i32** %8, align 8
  %254 = icmp ne i32* %253, null
  br i1 %254, label %256, label %255

255:                                              ; preds = %249
  br label %323

256:                                              ; preds = %249
  %257 = load i32*, i32** %8, align 8
  %258 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %259 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %258, i32 0, i32 10
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* @ETH_ALEN, align 4
  %262 = call i32 @os_memcpy(i32* %257, i32* %260, i32 %261)
  %263 = load i32*, i32** %8, align 8
  %264 = load i32, i32* @ETH_ALEN, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %268 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %267, i32 0, i32 9
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* @ETH_ALEN, align 4
  %271 = call i32 @os_memcpy(i32* %266, i32* %269, i32 %270)
  %272 = load i32*, i32** %8, align 8
  %273 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %274 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %273, i32 0, i32 10
  store i32* %272, i32** %274, align 8
  %275 = load i32*, i32** %8, align 8
  %276 = load i32, i32* @ETH_ALEN, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %280 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %279, i32 0, i32 9
  store i32* %278, i32** %280, align 8
  br label %281

281:                                              ; preds = %256, %244, %234
  br label %282

282:                                              ; preds = %281, %229
  %283 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %284 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %283, i32 0, i32 8
  %285 = load i32*, i32** %284, align 8
  %286 = icmp ne i32* %285, null
  br i1 %286, label %287, label %301

287:                                              ; preds = %282
  %288 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %289 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %288, i32 0, i32 8
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* @ETH_ALEN, align 4
  %292 = call i8* @os_memdup(i32* %290, i32 %291)
  %293 = bitcast i8* %292 to i32*
  store i32* %293, i32** %9, align 8
  %294 = load i32*, i32** %9, align 8
  %295 = icmp ne i32* %294, null
  br i1 %295, label %297, label %296

296:                                              ; preds = %287
  br label %323

297:                                              ; preds = %287
  %298 = load i32*, i32** %9, align 8
  %299 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %300 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %299, i32 0, i32 8
  store i32* %298, i32** %300, align 8
  br label %301

301:                                              ; preds = %297, %282
  %302 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %303 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %302, i32 0, i32 7
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %306 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %305, i32 0, i32 7
  store i32 %304, i32* %306, align 8
  %307 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %308 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %307, i32 0, i32 6
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %311 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %310, i32 0, i32 6
  store i32 %309, i32* %311, align 4
  %312 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %313 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %312, i32 0, i32 5
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %316 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %315, i32 0, i32 5
  store i32 %314, i32* %316, align 8
  %317 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %3, align 8
  %318 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %321 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %320, i32 0, i32 4
  store i32 %319, i32* %321, align 4
  %322 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  store %struct.wpa_driver_scan_params* %322, %struct.wpa_driver_scan_params** %2, align 8
  br label %326

323:                                              ; preds = %296, %255, %222, %157, %132, %96, %49
  %324 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %325 = call i32 @wpa_scan_free_params(%struct.wpa_driver_scan_params* %324)
  store %struct.wpa_driver_scan_params* null, %struct.wpa_driver_scan_params** %2, align 8
  br label %326

326:                                              ; preds = %323, %301, %13
  %327 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %2, align 8
  ret %struct.wpa_driver_scan_params* %327
}

declare dso_local %struct.wpa_driver_scan_params* @os_zalloc(i32) #1

declare dso_local i8* @os_memdup(i32*, i32) #1

declare dso_local i32 @int_array_len(i32*) #1

declare dso_local i32* @os_malloc(i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i32 @wpa_scan_free_params(%struct.wpa_driver_scan_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
