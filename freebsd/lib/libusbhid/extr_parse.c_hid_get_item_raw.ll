; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusbhid/extr_parse.c_hid_get_item_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusbhid/extr_parse.c_hid_get_item_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, i64*, i64, i64, i64*, i32, i32*, i32, i64, i64, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64 }

@hid_input = common dso_local global i64 0, align 8
@HIO_VARIABLE = common dso_local global i32 0, align 4
@hid_output = common dso_local global i64 0, align 8
@hid_collection = common dso_local global i64 0, align 8
@hid_feature = common dso_local global i64 0, align 8
@hid_endcollection = common dso_local global i64 0, align 8
@MAXPUSH = common dso_local global i64 0, align 8
@MAXUSAGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*)* @hid_get_item_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_get_item_raw(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = icmp eq %struct.TYPE_10__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %635

15:                                               ; preds = %2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 16
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i64 %21
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %6, align 8
  br label %23

23:                                               ; preds = %283, %15
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %133

31:                                               ; preds = %23
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %81

39:                                               ; preds = %31
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 5
  %42 = load i64*, i64** %41, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i64, i64* %42, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 7
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 8
  %61 = load i64*, i64** %60, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i64, i64* %61, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %58, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %39
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %70, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 6
  store i64 0, i64* %74, align 8
  br label %80

75:                                               ; preds = %39
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  br label %80

80:                                               ; preds = %75, %68
  br label %85

81:                                               ; preds = %31
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 7
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %11, align 8
  br label %85

85:                                               ; preds = %81, %80
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %87, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 9
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = shl i32 1, %95
  %97 = and i32 %92, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %132

99:                                               ; preds = %85
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %102 = bitcast %struct.TYPE_9__* %100 to i8*
  %103 = bitcast %struct.TYPE_9__* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 %103, i64 176, i1 false)
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 10
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %106, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %117, %120
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 10
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %124, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, %121
  store i32 %131, i32* %129, align 4
  store i32 1, i32* %3, align 4
  br label %635

132:                                              ; preds = %85
  br label %133

133:                                              ; preds = %132, %23
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  store i64 0, i64* %135, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 2
  store i64 0, i64* %137, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 3
  store i64 0, i64* %139, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 4
  store i64 0, i64* %141, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 11
  store i32 0, i32* %143, align 8
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 6
  store i64 0, i64* %145, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %147 = call i32 @hid_clear_local(%struct.TYPE_9__* %146)
  br label %148

148:                                              ; preds = %633, %223, %133
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 12
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 13
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %151, %154
  br i1 %155, label %156, label %634

156:                                              ; preds = %148
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %158 = call i32 @hid_get_byte(%struct.TYPE_10__* %157, i32 1)
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %9, align 4
  %160 = icmp eq i32 %159, 254
  br i1 %160, label %161, label %171

161:                                              ; preds = %156
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %163 = call i32 @hid_get_byte(%struct.TYPE_10__* %162, i32 1)
  store i32 %163, i32* %9, align 4
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %165 = call i32 @hid_get_byte(%struct.TYPE_10__* %164, i32 1)
  %166 = shl i32 %165, 8
  %167 = load i32, i32* %9, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %9, align 4
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %170 = call i32 @hid_get_byte(%struct.TYPE_10__* %169, i32 1)
  store i32 %170, i32* %7, align 4
  store i32 255, i32* %8, align 4
  br label %183

171:                                              ; preds = %156
  %172 = load i32, i32* %9, align 4
  %173 = lshr i32 %172, 4
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %9, align 4
  %175 = lshr i32 %174, 2
  %176 = and i32 %175, 3
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %9, align 4
  %178 = and i32 %177, 3
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %9, align 4
  %180 = icmp eq i32 %179, 3
  br i1 %180, label %181, label %182

181:                                              ; preds = %171
  store i32 4, i32* %9, align 4
  br label %182

182:                                              ; preds = %181, %171
  br label %183

183:                                              ; preds = %182, %161
  %184 = load i32, i32* %9, align 4
  switch i32 %184, label %223 [
    i32 0, label %185
    i32 1, label %186
    i32 2, label %190
    i32 4, label %201
  ]

185:                                              ; preds = %183
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %228

186:                                              ; preds = %183
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %188 = call i32 @hid_get_byte(%struct.TYPE_10__* %187, i32 1)
  %189 = sext i32 %188 to i64
  store i64 %189, i64* %11, align 8
  store i64 255, i64* %10, align 8
  br label %228

190:                                              ; preds = %183
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %192 = call i32 @hid_get_byte(%struct.TYPE_10__* %191, i32 1)
  %193 = sext i32 %192 to i64
  store i64 %193, i64* %11, align 8
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %195 = call i32 @hid_get_byte(%struct.TYPE_10__* %194, i32 1)
  %196 = shl i32 %195, 8
  %197 = sext i32 %196 to i64
  %198 = load i64, i64* %11, align 8
  %199 = or i64 %198, %197
  store i64 %199, i64* %11, align 8
  %200 = load i64, i64* %11, align 8
  store i64 %200, i64* %11, align 8
  store i64 65535, i64* %10, align 8
  br label %228

201:                                              ; preds = %183
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %203 = call i32 @hid_get_byte(%struct.TYPE_10__* %202, i32 1)
  %204 = sext i32 %203 to i64
  store i64 %204, i64* %11, align 8
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %206 = call i32 @hid_get_byte(%struct.TYPE_10__* %205, i32 1)
  %207 = shl i32 %206, 8
  %208 = sext i32 %207 to i64
  %209 = load i64, i64* %11, align 8
  %210 = or i64 %209, %208
  store i64 %210, i64* %11, align 8
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %212 = call i32 @hid_get_byte(%struct.TYPE_10__* %211, i32 1)
  %213 = shl i32 %212, 16
  %214 = sext i32 %213 to i64
  %215 = load i64, i64* %11, align 8
  %216 = or i64 %215, %214
  store i64 %216, i64* %11, align 8
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %218 = call i32 @hid_get_byte(%struct.TYPE_10__* %217, i32 1)
  %219 = shl i32 %218, 24
  %220 = sext i32 %219 to i64
  %221 = load i64, i64* %11, align 8
  %222 = or i64 %221, %220
  store i64 %222, i64* %11, align 8
  store i64 4294967295, i64* %10, align 8
  br label %228

223:                                              ; preds = %183
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %225 = load i32, i32* %9, align 4
  %226 = call i32 @hid_get_byte(%struct.TYPE_10__* %224, i32 %225)
  %227 = sext i32 %226 to i64
  store i64 %227, i64* %11, align 8
  br label %148

228:                                              ; preds = %201, %190, %186, %185
  %229 = load i32, i32* %8, align 4
  switch i32 %229, label %632 [
    i32 0, label %230
    i32 1, label %344
    i32 2, label %470
  ]

230:                                              ; preds = %228
  %231 = load i32, i32* %7, align 4
  switch i32 %231, label %342 [
    i32 8, label %232
    i32 9, label %284
    i32 10, label %293
    i32 11, label %314
    i32 12, label %323
  ]

232:                                              ; preds = %230
  %233 = load i64, i64* @hid_input, align 8
  %234 = trunc i64 %233 to i32
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 8
  %237 = load i64, i64* %11, align 8
  %238 = trunc i64 %237 to i32
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 5
  store i32 %238, i32* %240, align 8
  br label %241

241:                                              ; preds = %314, %284, %232
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 14
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 4
  store i32 %244, i32* %246, align 4
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 15
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 3
  store i32 %249, i32* %251, align 8
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 5
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @HIO_VARIABLE, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %280

258:                                              ; preds = %241
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 4
  %262 = icmp sgt i32 %261, 255
  br i1 %262, label %263, label %266

263:                                              ; preds = %258
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 2
  store i64 255, i64* %265, align 8
  br label %273

266:                                              ; preds = %258
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 4
  %270 = sext i32 %269 to i64
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 2
  store i64 %270, i64* %272, align 8
  br label %273

273:                                              ; preds = %266, %263
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 4
  store i32 1, i32* %275, align 4
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 6
  store i64 0, i64* %277, align 8
  %278 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 7
  store i64 0, i64* %279, align 8
  br label %283

280:                                              ; preds = %241
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 2
  store i64 1, i64* %282, align 8
  br label %283

283:                                              ; preds = %280, %273
  br label %23

284:                                              ; preds = %230
  %285 = load i64, i64* @hid_output, align 8
  %286 = trunc i64 %285 to i32
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 1
  store i32 %286, i32* %288, align 8
  %289 = load i64, i64* %11, align 8
  %290 = trunc i64 %289 to i32
  %291 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 5
  store i32 %290, i32* %292, align 8
  br label %241

293:                                              ; preds = %230
  %294 = load i64, i64* @hid_collection, align 8
  %295 = trunc i64 %294 to i32
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 1
  store i32 %295, i32* %297, align 8
  %298 = load i64, i64* %11, align 8
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 23
  store i64 %298, i64* %300, align 8
  %301 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 22
  %303 = load i32, i32* %302, align 8
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %302, align 8
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 7
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 0
  store i64 %307, i64* %309, align 8
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %312 = bitcast %struct.TYPE_9__* %310 to i8*
  %313 = bitcast %struct.TYPE_9__* %311 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %312, i8* align 8 %313, i64 176, i1 false)
  store i32 1, i32* %3, align 4
  br label %635

314:                                              ; preds = %230
  %315 = load i64, i64* @hid_feature, align 8
  %316 = trunc i64 %315 to i32
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 1
  store i32 %316, i32* %318, align 8
  %319 = load i64, i64* %11, align 8
  %320 = trunc i64 %319 to i32
  %321 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i32 0, i32 5
  store i32 %320, i32* %322, align 8
  br label %241

323:                                              ; preds = %230
  %324 = load i64, i64* @hid_endcollection, align 8
  %325 = trunc i64 %324 to i32
  %326 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i32 0, i32 1
  store i32 %325, i32* %327, align 8
  %328 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %328, i32 0, i32 22
  %330 = load i32, i32* %329, align 8
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %323
  store i32 0, i32* %3, align 4
  br label %635

333:                                              ; preds = %323
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 22
  %336 = load i32, i32* %335, align 8
  %337 = add nsw i32 %336, -1
  store i32 %337, i32* %335, align 8
  %338 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %339 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %340 = bitcast %struct.TYPE_9__* %338 to i8*
  %341 = bitcast %struct.TYPE_9__* %339 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %340, i8* align 8 %341, i64 176, i1 false)
  store i32 1, i32* %3, align 4
  br label %635

342:                                              ; preds = %230
  br label %343

343:                                              ; preds = %342
  br label %633

344:                                              ; preds = %228
  %345 = load i32, i32* %7, align 4
  switch i32 %345, label %468 [
    i32 0, label %346
    i32 1, label %351
    i32 2, label %355
    i32 3, label %359
    i32 4, label %363
    i32 5, label %367
    i32 6, label %371
    i32 7, label %375
    i32 8, label %382
    i32 9, label %389
    i32 10, label %396
    i32 11, label %435
  ]

346:                                              ; preds = %344
  %347 = load i64, i64* %11, align 8
  %348 = shl i64 %347, 16
  %349 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %349, i32 0, i32 8
  store i64 %348, i64* %350, align 8
  br label %469

351:                                              ; preds = %344
  %352 = load i64, i64* %11, align 8
  %353 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i32 0, i32 21
  store i64 %352, i64* %354, align 8
  br label %469

355:                                              ; preds = %344
  %356 = load i64, i64* %11, align 8
  %357 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %357, i32 0, i32 20
  store i64 %356, i64* %358, align 8
  br label %469

359:                                              ; preds = %344
  %360 = load i64, i64* %11, align 8
  %361 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %362 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %361, i32 0, i32 19
  store i64 %360, i64* %362, align 8
  br label %469

363:                                              ; preds = %344
  %364 = load i64, i64* %11, align 8
  %365 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 18
  store i64 %364, i64* %366, align 8
  br label %469

367:                                              ; preds = %344
  %368 = load i64, i64* %11, align 8
  %369 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %370 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %369, i32 0, i32 17
  store i64 %368, i64* %370, align 8
  br label %469

371:                                              ; preds = %344
  %372 = load i64, i64* %11, align 8
  %373 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %374 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %373, i32 0, i32 16
  store i64 %372, i64* %374, align 8
  br label %469

375:                                              ; preds = %344
  %376 = load i64, i64* %11, align 8
  %377 = load i64, i64* %10, align 8
  %378 = and i64 %376, %377
  %379 = trunc i64 %378 to i32
  %380 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %380, i32 0, i32 15
  store i32 %379, i32* %381, align 4
  br label %469

382:                                              ; preds = %344
  %383 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %384 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %385 = load i64, i64* %11, align 8
  %386 = load i64, i64* %10, align 8
  %387 = and i64 %385, %386
  %388 = call i32 @hid_switch_rid(%struct.TYPE_10__* %383, %struct.TYPE_9__* %384, i64 %387)
  br label %469

389:                                              ; preds = %344
  %390 = load i64, i64* %11, align 8
  %391 = load i64, i64* %10, align 8
  %392 = and i64 %390, %391
  %393 = trunc i64 %392 to i32
  %394 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %395 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %394, i32 0, i32 14
  store i32 %393, i32* %395, align 8
  br label %469

396:                                              ; preds = %344
  %397 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %398 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %397, i32 0, i32 0
  %399 = load i64, i64* %398, align 8
  %400 = add i64 %399, 1
  store i64 %400, i64* %398, align 8
  %401 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %402 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %401, i32 0, i32 0
  %403 = load i64, i64* %402, align 8
  %404 = load i64, i64* @MAXPUSH, align 8
  %405 = icmp ult i64 %403, %404
  br i1 %405, label %406, label %434

406:                                              ; preds = %396
  %407 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %408 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %407, i32 0, i32 16
  %409 = load %struct.TYPE_9__*, %struct.TYPE_9__** %408, align 8
  %410 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %411 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %409, i64 %412
  %414 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %415 = bitcast %struct.TYPE_9__* %413 to i8*
  %416 = bitcast %struct.TYPE_9__* %414 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %415, i8* align 8 %416, i64 176, i1 false)
  %417 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %418 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %417, i32 0, i32 15
  %419 = load i32, i32* %418, align 4
  %420 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %421 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %420, i32 0, i32 3
  store i32 %419, i32* %421, align 8
  %422 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %423 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %422, i32 0, i32 14
  %424 = load i32, i32* %423, align 8
  %425 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %426 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %425, i32 0, i32 4
  store i32 %424, i32* %426, align 4
  %427 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %428 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %427, i32 0, i32 16
  %429 = load %struct.TYPE_9__*, %struct.TYPE_9__** %428, align 8
  %430 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %431 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %430, i32 0, i32 0
  %432 = load i64, i64* %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %429, i64 %432
  store %struct.TYPE_9__* %433, %struct.TYPE_9__** %6, align 8
  br label %434

434:                                              ; preds = %406, %396
  br label %469

435:                                              ; preds = %344
  %436 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %437 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %436, i32 0, i32 0
  %438 = load i64, i64* %437, align 8
  %439 = add i64 %438, -1
  store i64 %439, i64* %437, align 8
  %440 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %441 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = load i64, i64* @MAXPUSH, align 8
  %444 = icmp ult i64 %442, %443
  br i1 %444, label %445, label %467

445:                                              ; preds = %435
  %446 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %447 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %446, i32 0, i32 16
  %448 = load %struct.TYPE_9__*, %struct.TYPE_9__** %447, align 8
  %449 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %450 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %449, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %448, i64 %451
  store %struct.TYPE_9__* %452, %struct.TYPE_9__** %6, align 8
  %453 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %454 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %453, i32 0, i32 3
  %455 = load i32, i32* %454, align 8
  %456 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %457 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %456, i32 0, i32 15
  store i32 %455, i32* %457, align 4
  %458 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %459 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %458, i32 0, i32 4
  %460 = load i32, i32* %459, align 4
  %461 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %462 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %461, i32 0, i32 14
  store i32 %460, i32* %462, align 8
  %463 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %464 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %463, i32 0, i32 3
  store i32 0, i32* %464, align 8
  %465 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %466 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %465, i32 0, i32 4
  store i32 0, i32* %466, align 4
  br label %467

467:                                              ; preds = %445, %435
  br label %469

468:                                              ; preds = %344
  br label %469

469:                                              ; preds = %468, %467, %434, %389, %382, %375, %371, %367, %363, %359, %355, %351, %346
  br label %633

470:                                              ; preds = %228
  %471 = load i32, i32* %7, align 4
  switch i32 %471, label %630 [
    i32 0, label %472
    i32 1, label %516
    i32 2, label %535
    i32 3, label %602
    i32 4, label %606
    i32 5, label %610
    i32 7, label %614
    i32 8, label %618
    i32 9, label %622
    i32 10, label %626
  ]

472:                                              ; preds = %470
  %473 = load i32, i32* %9, align 4
  %474 = icmp ne i32 %473, 4
  br i1 %474, label %475, label %483

475:                                              ; preds = %472
  %476 = load i64, i64* %11, align 8
  %477 = load i64, i64* %10, align 8
  %478 = and i64 %476, %477
  %479 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %480 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %479, i32 0, i32 8
  %481 = load i64, i64* %480, align 8
  %482 = or i64 %478, %481
  store i64 %482, i64* %11, align 8
  br label %483

483:                                              ; preds = %475, %472
  %484 = load i64, i64* %11, align 8
  %485 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %486 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %485, i32 0, i32 7
  store i64 %484, i64* %486, align 8
  %487 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %488 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %487, i32 0, i32 4
  %489 = load i64, i64* %488, align 8
  %490 = load i64, i64* @MAXUSAGE, align 8
  %491 = icmp ult i64 %489, %490
  br i1 %491, label %492, label %513

492:                                              ; preds = %483
  %493 = load i64, i64* %11, align 8
  %494 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %495 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %494, i32 0, i32 5
  %496 = load i64*, i64** %495, align 8
  %497 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %498 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %497, i32 0, i32 4
  %499 = load i64, i64* %498, align 8
  %500 = getelementptr inbounds i64, i64* %496, i64 %499
  store i64 %493, i64* %500, align 8
  %501 = load i64, i64* %11, align 8
  %502 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %503 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %502, i32 0, i32 8
  %504 = load i64*, i64** %503, align 8
  %505 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %506 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %505, i32 0, i32 4
  %507 = load i64, i64* %506, align 8
  %508 = getelementptr inbounds i64, i64* %504, i64 %507
  store i64 %501, i64* %508, align 8
  %509 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %510 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %509, i32 0, i32 4
  %511 = load i64, i64* %510, align 8
  %512 = add i64 %511, 1
  store i64 %512, i64* %510, align 8
  br label %513

513:                                              ; preds = %492, %483
  %514 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %515 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %514, i32 0, i32 11
  store i32 0, i32* %515, align 8
  br label %631

516:                                              ; preds = %470
  %517 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %518 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %517, i32 0, i32 11
  %519 = load i32, i32* %518, align 8
  %520 = or i32 %519, 1
  store i32 %520, i32* %518, align 8
  %521 = load i32, i32* %9, align 4
  %522 = icmp ne i32 %521, 4
  br i1 %522, label %523, label %531

523:                                              ; preds = %516
  %524 = load i64, i64* %11, align 8
  %525 = load i64, i64* %10, align 8
  %526 = and i64 %524, %525
  %527 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %528 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %527, i32 0, i32 8
  %529 = load i64, i64* %528, align 8
  %530 = or i64 %526, %529
  store i64 %530, i64* %11, align 8
  br label %531

531:                                              ; preds = %523, %516
  %532 = load i64, i64* %11, align 8
  %533 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %534 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %533, i32 0, i32 6
  store i64 %532, i64* %534, align 8
  br label %554

535:                                              ; preds = %470
  %536 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %537 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %536, i32 0, i32 11
  %538 = load i32, i32* %537, align 8
  %539 = or i32 %538, 2
  store i32 %539, i32* %537, align 8
  %540 = load i32, i32* %9, align 4
  %541 = icmp ne i32 %540, 4
  br i1 %541, label %542, label %550

542:                                              ; preds = %535
  %543 = load i64, i64* %11, align 8
  %544 = load i64, i64* %10, align 8
  %545 = and i64 %543, %544
  %546 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %547 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %546, i32 0, i32 8
  %548 = load i64, i64* %547, align 8
  %549 = or i64 %545, %548
  store i64 %549, i64* %11, align 8
  br label %550

550:                                              ; preds = %542, %535
  %551 = load i64, i64* %11, align 8
  %552 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %553 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %552, i32 0, i32 7
  store i64 %551, i64* %553, align 8
  br label %554

554:                                              ; preds = %550, %531
  %555 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %556 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %555, i32 0, i32 11
  %557 = load i32, i32* %556, align 8
  %558 = icmp ne i32 %557, 3
  br i1 %558, label %559, label %560

559:                                              ; preds = %554
  br label %631

560:                                              ; preds = %554
  %561 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %562 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %561, i32 0, i32 4
  %563 = load i64, i64* %562, align 8
  %564 = load i64, i64* @MAXUSAGE, align 8
  %565 = icmp ult i64 %563, %564
  br i1 %565, label %566, label %599

566:                                              ; preds = %560
  %567 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %568 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %567, i32 0, i32 6
  %569 = load i64, i64* %568, align 8
  %570 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %571 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %570, i32 0, i32 7
  %572 = load i64, i64* %571, align 8
  %573 = icmp sle i64 %569, %572
  br i1 %573, label %574, label %599

574:                                              ; preds = %566
  %575 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %576 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %575, i32 0, i32 6
  %577 = load i64, i64* %576, align 8
  %578 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %579 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %578, i32 0, i32 5
  %580 = load i64*, i64** %579, align 8
  %581 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %582 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %581, i32 0, i32 4
  %583 = load i64, i64* %582, align 8
  %584 = getelementptr inbounds i64, i64* %580, i64 %583
  store i64 %577, i64* %584, align 8
  %585 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %586 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %585, i32 0, i32 7
  %587 = load i64, i64* %586, align 8
  %588 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %589 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %588, i32 0, i32 8
  %590 = load i64*, i64** %589, align 8
  %591 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %592 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %591, i32 0, i32 4
  %593 = load i64, i64* %592, align 8
  %594 = getelementptr inbounds i64, i64* %590, i64 %593
  store i64 %587, i64* %594, align 8
  %595 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %596 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %595, i32 0, i32 4
  %597 = load i64, i64* %596, align 8
  %598 = add i64 %597, 1
  store i64 %598, i64* %596, align 8
  br label %599

599:                                              ; preds = %574, %566, %560
  %600 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %601 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %600, i32 0, i32 11
  store i32 0, i32* %601, align 8
  br label %631

602:                                              ; preds = %470
  %603 = load i64, i64* %11, align 8
  %604 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %605 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %604, i32 0, i32 15
  store i64 %603, i64* %605, align 8
  br label %631

606:                                              ; preds = %470
  %607 = load i64, i64* %11, align 8
  %608 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %609 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %608, i32 0, i32 14
  store i64 %607, i64* %609, align 8
  br label %631

610:                                              ; preds = %470
  %611 = load i64, i64* %11, align 8
  %612 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %613 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %612, i32 0, i32 13
  store i64 %611, i64* %613, align 8
  br label %631

614:                                              ; preds = %470
  %615 = load i64, i64* %11, align 8
  %616 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %617 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %616, i32 0, i32 12
  store i64 %615, i64* %617, align 8
  br label %631

618:                                              ; preds = %470
  %619 = load i64, i64* %11, align 8
  %620 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %621 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %620, i32 0, i32 11
  store i64 %619, i64* %621, align 8
  br label %631

622:                                              ; preds = %470
  %623 = load i64, i64* %11, align 8
  %624 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %625 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %624, i32 0, i32 10
  store i64 %623, i64* %625, align 8
  br label %631

626:                                              ; preds = %470
  %627 = load i64, i64* %11, align 8
  %628 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %629 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %628, i32 0, i32 9
  store i64 %627, i64* %629, align 8
  br label %631

630:                                              ; preds = %470
  br label %631

631:                                              ; preds = %630, %626, %622, %618, %614, %610, %606, %602, %599, %559, %513
  br label %633

632:                                              ; preds = %228
  br label %633

633:                                              ; preds = %632, %631, %469, %343
  br label %148

634:                                              ; preds = %148
  store i32 0, i32* %3, align 4
  br label %635

635:                                              ; preds = %634, %333, %332, %293, %99, %14
  %636 = load i32, i32* %3, align 4
  ret i32 %636
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @hid_clear_local(%struct.TYPE_9__*) #2

declare dso_local i32 @hid_get_byte(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @hid_switch_rid(%struct.TYPE_10__*, %struct.TYPE_9__*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
