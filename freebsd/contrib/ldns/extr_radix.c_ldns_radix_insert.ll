; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_radix.c_ldns_radix_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_radix.c_ldns_radix_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64*, i32, i64, %struct.TYPE_13__*, %struct.TYPE_13__*, i64, %struct.TYPE_13__*, i8*, i32 }

@LDNS_STATUS_NULL = common dso_local global i32 0, align 4
@LDNS_STATUS_MEM_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LDNS_STATUS_EXISTS_ERR = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_radix_insert(%struct.TYPE_12__* %0, i64* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %12, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %15 = icmp ne %struct.TYPE_12__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i64*, i64** %7, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19, %16, %4
  %23 = load i32, i32* @LDNS_STATUS_NULL, align 4
  store i32 %23, i32* %5, align 4
  br label %324

24:                                               ; preds = %19
  %25 = load i8*, i8** %9, align 8
  %26 = load i64*, i64** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.TYPE_13__* @ldns_radix_new_node(i8* %25, i64* %26, i32 %27)
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %11, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %30 = icmp ne %struct.TYPE_13__* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @LDNS_STATUS_MEM_ERR, align 4
  store i32 %32, i32* %5, align 4
  br label %324

33:                                               ; preds = %24
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = load i64*, i64** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @ldns_radix_find_prefix(%struct.TYPE_12__* %34, i64* %35, i32 %36, %struct.TYPE_13__** %12, i32* %10)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %122, label %39

39:                                               ; preds = %33
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = icmp eq %struct.TYPE_13__* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %51, align 8
  br label %121

52:                                               ; preds = %39
  %53 = call %struct.TYPE_13__* @ldns_radix_new_node(i8* null, i64* bitcast ([1 x i8]* @.str to i64*), i32 0)
  store %struct.TYPE_13__* %53, %struct.TYPE_13__** %12, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %55 = icmp ne %struct.TYPE_13__* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %58 = call i32 @LDNS_FREE(%struct.TYPE_13__* %57)
  %59 = load i32, i32* @LDNS_STATUS_MEM_ERR, align 4
  store i32 %59, i32* %5, align 4
  br label %324

60:                                               ; preds = %52
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %62 = load i64*, i64** %7, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @ldns_radix_array_space(%struct.TYPE_13__* %61, i64 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %60
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %69 = call i32 @LDNS_FREE(%struct.TYPE_13__* %68)
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = call i32 @LDNS_FREE(%struct.TYPE_13__* %72)
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %75 = call i32 @LDNS_FREE(%struct.TYPE_13__* %74)
  %76 = load i32, i32* @LDNS_STATUS_MEM_ERR, align 4
  store i32 %76, i32* %5, align 4
  br label %324

77:                                               ; preds = %60
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 7
  store %struct.TYPE_13__* %78, %struct.TYPE_13__** %80, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 6
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 4
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 5
  store %struct.TYPE_13__* %83, %struct.TYPE_13__** %88, align 8
  %89 = load i32, i32* %8, align 4
  %90 = icmp sgt i32 %89, 1
  br i1 %90, label %91, label %117

91:                                               ; preds = %77
  %92 = load i64*, i64** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 9
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 4
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = call i32 @ldns_radix_prefix_remainder(i32 1, i64* %92, i32 %93, i32* %98, i64* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %116, label %106

106:                                              ; preds = %91
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %108 = call i32 @LDNS_FREE(%struct.TYPE_13__* %107)
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 4
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = call i32 @LDNS_FREE(%struct.TYPE_13__* %111)
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %114 = call i32 @LDNS_FREE(%struct.TYPE_13__* %113)
  %115 = load i32, i32* @LDNS_STATUS_MEM_ERR, align 4
  store i32 %115, i32* %5, align 4
  br label %324

116:                                              ; preds = %91
  br label %117

117:                                              ; preds = %116, %77
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  store %struct.TYPE_13__* %118, %struct.TYPE_13__** %120, align 8
  br label %121

121:                                              ; preds = %117, %48
  br label %318

122:                                              ; preds = %33
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %145

126:                                              ; preds = %122
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 8
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %133 = call i32 @LDNS_FREE(%struct.TYPE_13__* %132)
  %134 = load i32, i32* @LDNS_STATUS_EXISTS_ERR, align 4
  store i32 %134, i32* %5, align 4
  br label %324

135:                                              ; preds = %126
  %136 = load i8*, i8** %9, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 8
  store i8* %136, i8** %138, align 8
  %139 = load i64*, i64** %7, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  store i64* %139, i64** %141, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  br label %317

145:                                              ; preds = %122
  %146 = load i64*, i64** %7, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %13, align 8
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp slt i32 %151, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 @assert(i32 %154)
  %156 = load i64, i64* %13, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = icmp slt i64 %156, %159
  br i1 %160, label %171, label %161

161:                                              ; preds = %145
  %162 = load i64, i64* %13, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = sub nsw i64 %162, %165
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp sge i64 %166, %169
  br i1 %170, label %171, label %239

171:                                              ; preds = %161, %145
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %173 = load i64, i64* %13, align 8
  %174 = call i32 @ldns_radix_array_space(%struct.TYPE_13__* %172, i64 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %171
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %178 = call i32 @LDNS_FREE(%struct.TYPE_13__* %177)
  %179 = load i32, i32* @LDNS_STATUS_MEM_ERR, align 4
  store i32 %179, i32* %5, align 4
  br label %324

180:                                              ; preds = %171
  %181 = load i64, i64* %13, align 8
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = icmp sge i64 %181, %184
  %186 = zext i1 %185 to i32
  %187 = call i32 @assert(i32 %186)
  %188 = load i64, i64* %13, align 8
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = sub nsw i64 %188, %191
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp sle i64 %192, %195
  %197 = zext i1 %196 to i32
  %198 = call i32 @assert(i32 %197)
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* %13, align 8
  %203 = sub nsw i64 %202, %201
  store i64 %203, i64* %13, align 8
  %204 = load i32, i32* %10, align 4
  %205 = add nsw i32 %204, 1
  %206 = load i32, i32* %8, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %225

208:                                              ; preds = %180
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 4
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %210, align 8
  %212 = load i64, i64* %13, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i64 %212
  %214 = load i64*, i64** %7, align 8
  %215 = load i32, i32* %10, align 4
  %216 = add nsw i32 %215, 1
  %217 = load i32, i32* %8, align 4
  %218 = call i32 @ldns_radix_str_create(%struct.TYPE_13__* %213, i64* %214, i32 %216, i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %224, label %220

220:                                              ; preds = %208
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %222 = call i32 @LDNS_FREE(%struct.TYPE_13__* %221)
  %223 = load i32, i32* @LDNS_STATUS_MEM_ERR, align 4
  store i32 %223, i32* %5, align 4
  br label %324

224:                                              ; preds = %208
  br label %225

225:                                              ; preds = %224, %180
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 7
  store %struct.TYPE_13__* %226, %struct.TYPE_13__** %228, align 8
  %229 = load i64, i64* %13, align 8
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 6
  store i64 %229, i64* %231, align 8
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 4
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %234, align 8
  %236 = load i64, i64* %13, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 5
  store %struct.TYPE_13__* %232, %struct.TYPE_13__** %238, align 8
  br label %316

239:                                              ; preds = %161
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 4
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %241, align 8
  %243 = load i64, i64* %13, align 8
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = sub nsw i64 %243, %246
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 5
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %249, align 8
  %251 = icmp eq %struct.TYPE_13__* %250, null
  br i1 %251, label %252, label %293

252:                                              ; preds = %239
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* %13, align 8
  %257 = sub nsw i64 %256, %255
  store i64 %257, i64* %13, align 8
  %258 = load i32, i32* %10, align 4
  %259 = add nsw i32 %258, 1
  %260 = load i32, i32* %8, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %279

262:                                              ; preds = %252
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 4
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %264, align 8
  %266 = load i64, i64* %13, align 8
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i64 %266
  %268 = load i64*, i64** %7, align 8
  %269 = load i32, i32* %10, align 4
  %270 = add nsw i32 %269, 1
  %271 = load i32, i32* %8, align 4
  %272 = call i32 @ldns_radix_str_create(%struct.TYPE_13__* %267, i64* %268, i32 %270, i32 %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %278, label %274

274:                                              ; preds = %262
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %276 = call i32 @LDNS_FREE(%struct.TYPE_13__* %275)
  %277 = load i32, i32* @LDNS_STATUS_MEM_ERR, align 4
  store i32 %277, i32* %5, align 4
  br label %324

278:                                              ; preds = %262
  br label %279

279:                                              ; preds = %278, %252
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 7
  store %struct.TYPE_13__* %280, %struct.TYPE_13__** %282, align 8
  %283 = load i64, i64* %13, align 8
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 6
  store i64 %283, i64* %285, align 8
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 4
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %288, align 8
  %290 = load i64, i64* %13, align 8
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 5
  store %struct.TYPE_13__* %286, %struct.TYPE_13__** %292, align 8
  br label %315

293:                                              ; preds = %239
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 4
  %296 = load %struct.TYPE_13__*, %struct.TYPE_13__** %295, align 8
  %297 = load i64, i64* %13, align 8
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 3
  %300 = load i64, i64* %299, align 8
  %301 = sub nsw i64 %297, %300
  %302 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i64 %301
  %303 = load i64*, i64** %7, align 8
  %304 = load i32, i32* %10, align 4
  %305 = add nsw i32 %304, 1
  %306 = load i32, i32* %8, align 4
  %307 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %308 = call i32 @ldns_radix_array_split(%struct.TYPE_13__* %302, i64* %303, i32 %305, i32 %306, %struct.TYPE_13__* %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %314, label %310

310:                                              ; preds = %293
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %312 = call i32 @LDNS_FREE(%struct.TYPE_13__* %311)
  %313 = load i32, i32* @LDNS_STATUS_MEM_ERR, align 4
  store i32 %313, i32* %5, align 4
  br label %324

314:                                              ; preds = %293
  br label %315

315:                                              ; preds = %314, %279
  br label %316

316:                                              ; preds = %315, %225
  br label %317

317:                                              ; preds = %316, %135
  br label %318

318:                                              ; preds = %317, %121
  %319 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %320, align 8
  %323 = load i32, i32* @LDNS_STATUS_OK, align 4
  store i32 %323, i32* %5, align 4
  br label %324

324:                                              ; preds = %318, %310, %274, %220, %176, %131, %106, %67, %56, %31, %22
  %325 = load i32, i32* %5, align 4
  ret i32 %325
}

declare dso_local %struct.TYPE_13__* @ldns_radix_new_node(i8*, i64*, i32) #1

declare dso_local i32 @ldns_radix_find_prefix(%struct.TYPE_12__*, i64*, i32, %struct.TYPE_13__**, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @LDNS_FREE(%struct.TYPE_13__*) #1

declare dso_local i32 @ldns_radix_array_space(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @ldns_radix_prefix_remainder(i32, i64*, i32, i32*, i64*) #1

declare dso_local i32 @ldns_radix_str_create(%struct.TYPE_13__*, i64*, i32, i32) #1

declare dso_local i32 @ldns_radix_array_split(%struct.TYPE_13__*, i64*, i32, i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
