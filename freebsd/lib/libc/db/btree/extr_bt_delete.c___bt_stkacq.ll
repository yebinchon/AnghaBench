; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_delete.c___bt_stkacq.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_delete.c___bt_stkacq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_22__ = type { i64, i64, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_24__ = type { %struct.TYPE_22__* }
%struct.TYPE_23__ = type { i64, i32 }

@P_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_22__**, %struct.TYPE_25__*)* @__bt_stkacq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bt_stkacq(%struct.TYPE_26__* %0, %struct.TYPE_22__** %1, %struct.TYPE_25__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_22__**, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_22__** %1, %struct.TYPE_22__*** %6, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %7, align 8
  %18 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %6, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  store %struct.TYPE_22__* %19, %struct.TYPE_22__** %11, align 8
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %24 = call i32 @mpool_put(i32 %22, %struct.TYPE_22__* %23, i32 0)
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 1
  %28 = call %struct.TYPE_24__* @__bt_search(%struct.TYPE_26__* %25, i32* %27, i32* %16)
  store %struct.TYPE_24__* %28, %struct.TYPE_24__** %9, align 8
  %29 = icmp eq %struct.TYPE_24__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %302

31:                                               ; preds = %3
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %33, align 8
  store %struct.TYPE_22__* %34, %struct.TYPE_22__** %11, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %37, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %285

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %150, %44
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %48, %52
  br i1 %53, label %54, label %151

54:                                               ; preds = %45
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %14, align 8
  %58 = load i64, i64* @P_INVALID, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %151

61:                                               ; preds = %54
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %66 = call i32 @mpool_put(i32 %64, %struct.TYPE_22__* %65, i32 0)
  store i32 0, i32* %17, align 4
  br label %67

67:                                               ; preds = %106, %61
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %69 = call %struct.TYPE_23__* @BT_POP(%struct.TYPE_26__* %68)
  store %struct.TYPE_23__* %69, %struct.TYPE_23__** %10, align 8
  %70 = icmp ne %struct.TYPE_23__* %69, null
  br i1 %70, label %71, label %109

71:                                               ; preds = %67
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call %struct.TYPE_22__* @mpool_get(i32 %74, i64 %77, i32 0)
  store %struct.TYPE_22__* %78, %struct.TYPE_22__** %11, align 8
  %79 = icmp eq %struct.TYPE_22__* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  store i32 1, i32* %4, align 4
  br label %302

81:                                               ; preds = %71
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %86 = call i32 @NEXTINDEX(%struct.TYPE_22__* %85)
  %87 = sub nsw i32 %86, 1
  %88 = icmp ne i32 %84, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %81
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @BT_PUSH(%struct.TYPE_26__* %94, i64 %97, i32 %98)
  br label %109

100:                                              ; preds = %81
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %105 = call i32 @mpool_put(i32 %103, %struct.TYPE_22__* %104, i32 0)
  br label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %17, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %17, align 4
  br label %67

109:                                              ; preds = %89, %67
  br label %110

110:                                              ; preds = %136, %109
  %111 = load i32, i32* %17, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %17, align 4
  %113 = icmp ne i32 %111, 0
  br i1 %113, label %114, label %137

114:                                              ; preds = %110
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %116 = load i32, i32* %12, align 4
  %117 = call %struct.TYPE_27__* @GETBINTERNAL(%struct.TYPE_22__* %115, i32 %116)
  store %struct.TYPE_27__* %117, %struct.TYPE_27__** %8, align 8
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %13, align 8
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %122 = load i64, i64* %13, align 8
  %123 = call i32 @BT_PUSH(%struct.TYPE_26__* %121, i64 %122, i32 0)
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %128 = call i32 @mpool_put(i32 %126, %struct.TYPE_22__* %127, i32 0)
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i64, i64* %13, align 8
  %133 = call %struct.TYPE_22__* @mpool_get(i32 %131, i64 %132, i32 0)
  store %struct.TYPE_22__* %133, %struct.TYPE_22__** %11, align 8
  %134 = icmp eq %struct.TYPE_22__* %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %114
  store i32 1, i32* %4, align 4
  br label %302

136:                                              ; preds = %114
  store i32 0, i32* %12, align 4
  br label %110

137:                                              ; preds = %110
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %142 = call i32 @mpool_put(i32 %140, %struct.TYPE_22__* %141, i32 0)
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i64, i64* %14, align 8
  %147 = call %struct.TYPE_22__* @mpool_get(i32 %145, i64 %146, i32 0)
  store %struct.TYPE_22__* %147, %struct.TYPE_22__** %11, align 8
  %148 = icmp eq %struct.TYPE_22__* %147, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %137
  store i32 1, i32* %4, align 4
  br label %302

150:                                              ; preds = %137
  br label %45

151:                                              ; preds = %60, %45
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %154, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %151
  br label %285

161:                                              ; preds = %151
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %166 = call i32 @mpool_put(i32 %164, %struct.TYPE_22__* %165, i32 0)
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 1
  %170 = call %struct.TYPE_24__* @__bt_search(%struct.TYPE_26__* %167, i32* %169, i32* %16)
  store %struct.TYPE_24__* %170, %struct.TYPE_24__** %9, align 8
  %171 = icmp eq %struct.TYPE_24__* %170, null
  br i1 %171, label %172, label %173

172:                                              ; preds = %161
  store i32 1, i32* %4, align 4
  br label %302

173:                                              ; preds = %161
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %175, align 8
  store %struct.TYPE_22__* %176, %struct.TYPE_22__** %11, align 8
  br label %177

177:                                              ; preds = %283, %173
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %180, %184
  br i1 %185, label %186, label %284

186:                                              ; preds = %177
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %15, align 8
  %190 = load i64, i64* @P_INVALID, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  br label %284

193:                                              ; preds = %186
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %198 = call i32 @mpool_put(i32 %196, %struct.TYPE_22__* %197, i32 0)
  store i32 0, i32* %17, align 4
  br label %199

199:                                              ; preds = %235, %193
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %201 = call %struct.TYPE_23__* @BT_POP(%struct.TYPE_26__* %200)
  store %struct.TYPE_23__* %201, %struct.TYPE_23__** %10, align 8
  %202 = icmp ne %struct.TYPE_23__* %201, null
  br i1 %202, label %203, label %238

203:                                              ; preds = %199
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = call %struct.TYPE_22__* @mpool_get(i32 %206, i64 %209, i32 0)
  store %struct.TYPE_22__* %210, %struct.TYPE_22__** %11, align 8
  %211 = icmp eq %struct.TYPE_22__* %210, null
  br i1 %211, label %212, label %213

212:                                              ; preds = %203
  store i32 1, i32* %4, align 4
  br label %302

213:                                              ; preds = %203
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %229

218:                                              ; preds = %213
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = sub nsw i32 %221, 1
  store i32 %222, i32* %12, align 4
  %223 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i32, i32* %12, align 4
  %228 = call i32 @BT_PUSH(%struct.TYPE_26__* %223, i64 %226, i32 %227)
  br label %238

229:                                              ; preds = %213
  %230 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %234 = call i32 @mpool_put(i32 %232, %struct.TYPE_22__* %233, i32 0)
  br label %235

235:                                              ; preds = %229
  %236 = load i32, i32* %17, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %17, align 4
  br label %199

238:                                              ; preds = %218, %199
  br label %239

239:                                              ; preds = %262, %238
  %240 = load i32, i32* %17, align 4
  %241 = add nsw i32 %240, -1
  store i32 %241, i32* %17, align 4
  %242 = icmp ne i32 %240, 0
  br i1 %242, label %243, label %270

243:                                              ; preds = %239
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %245 = load i32, i32* %12, align 4
  %246 = call %struct.TYPE_27__* @GETBINTERNAL(%struct.TYPE_22__* %244, i32 %245)
  store %struct.TYPE_27__* %246, %struct.TYPE_27__** %8, align 8
  %247 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  store i64 %249, i64* %13, align 8
  %250 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %254 = call i32 @mpool_put(i32 %252, %struct.TYPE_22__* %253, i32 0)
  %255 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load i64, i64* %13, align 8
  %259 = call %struct.TYPE_22__* @mpool_get(i32 %257, i64 %258, i32 0)
  store %struct.TYPE_22__* %259, %struct.TYPE_22__** %11, align 8
  %260 = icmp eq %struct.TYPE_22__* %259, null
  br i1 %260, label %261, label %262

261:                                              ; preds = %243
  store i32 1, i32* %4, align 4
  br label %302

262:                                              ; preds = %243
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %264 = call i32 @NEXTINDEX(%struct.TYPE_22__* %263)
  %265 = sub nsw i32 %264, 1
  store i32 %265, i32* %12, align 4
  %266 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %267 = load i64, i64* %13, align 8
  %268 = load i32, i32* %12, align 4
  %269 = call i32 @BT_PUSH(%struct.TYPE_26__* %266, i64 %267, i32 %268)
  br label %239

270:                                              ; preds = %239
  %271 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %275 = call i32 @mpool_put(i32 %273, %struct.TYPE_22__* %274, i32 0)
  %276 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load i64, i64* %15, align 8
  %280 = call %struct.TYPE_22__* @mpool_get(i32 %278, i64 %279, i32 0)
  store %struct.TYPE_22__* %280, %struct.TYPE_22__** %11, align 8
  %281 = icmp eq %struct.TYPE_22__* %280, null
  br i1 %281, label %282, label %283

282:                                              ; preds = %270
  store i32 1, i32* %4, align 4
  br label %302

283:                                              ; preds = %270
  br label %177

284:                                              ; preds = %192, %177
  br label %285

285:                                              ; preds = %284, %160, %43
  %286 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %290 = call i32 @mpool_put(i32 %288, %struct.TYPE_22__* %289, i32 0)
  %291 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = call %struct.TYPE_22__* @mpool_get(i32 %293, i64 %297, i32 0)
  %299 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %6, align 8
  store %struct.TYPE_22__* %298, %struct.TYPE_22__** %299, align 8
  %300 = icmp eq %struct.TYPE_22__* %298, null
  %301 = zext i1 %300 to i32
  store i32 %301, i32* %4, align 4
  br label %302

302:                                              ; preds = %285, %282, %261, %212, %172, %149, %135, %80, %30
  %303 = load i32, i32* %4, align 4
  ret i32 %303
}

declare dso_local i32 @mpool_put(i32, %struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_24__* @__bt_search(%struct.TYPE_26__*, i32*, i32*) #1

declare dso_local %struct.TYPE_23__* @BT_POP(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_22__* @mpool_get(i32, i64, i32) #1

declare dso_local i32 @NEXTINDEX(%struct.TYPE_22__*) #1

declare dso_local i32 @BT_PUSH(%struct.TYPE_26__*, i64, i32) #1

declare dso_local %struct.TYPE_27__* @GETBINTERNAL(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
