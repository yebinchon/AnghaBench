; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_routable_torus.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_routable_torus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.torus = type { i32, i64, i64, %struct.TYPE_5__*, %struct.TYPE_6__****, i64, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.fabric = type { i64, i64 }

@MSG_DEADLOCK = common dso_local global i32 0, align 4
@OSM_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"Warning: Could not construct torus using all known fabric switches and/or links.\0A\00", align 1
@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"ERR 4E32: strange failures in x ring at y=%d  z=%d b2g_cnt %u g2b_cnt %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"ERR 4E33: disjoint failures in x ring at y=%d  z=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"ERR 4E34: strange failures in y ring at x=%d  z=%d b2g_cnt %u g2b_cnt %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"ERR 4E35: disjoint failures in y ring at x=%d  z=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"ERR 4E36: strange failures in z ring at x=%d  y=%d b2g_cnt %u g2b_cnt %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"ERR 4E37: disjoint failures in z ring at x=%d  y=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"ERR 4E38: missing switch topology ==> message deadlock!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.torus*, %struct.fabric*)* @routable_torus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @routable_torus(%struct.torus* %0, %struct.fabric* %1) #0 {
  %3 = alloca %struct.torus*, align 8
  %4 = alloca %struct.fabric*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.torus* %0, %struct.torus** %3, align 8
  store %struct.fabric* %1, %struct.fabric** %4, align 8
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %11, align 4
  %12 = load i32, i32* @MSG_DEADLOCK, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.torus*, %struct.torus** %3, align 8
  %15 = getelementptr inbounds %struct.torus, %struct.torus* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.torus*, %struct.torus** %3, align 8
  %19 = getelementptr inbounds %struct.torus, %struct.torus* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.fabric*, %struct.fabric** %4, align 8
  %22 = getelementptr inbounds %struct.fabric, %struct.fabric* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %2
  %26 = load %struct.torus*, %struct.torus** %3, align 8
  %27 = getelementptr inbounds %struct.torus, %struct.torus* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.fabric*, %struct.fabric** %4, align 8
  %30 = getelementptr inbounds %struct.fabric, %struct.fabric* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %25, %2
  %34 = load %struct.torus*, %struct.torus** %3, align 8
  %35 = getelementptr inbounds %struct.torus, %struct.torus* %34, i32 0, i32 3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* @OSM_LOG_INFO, align 4
  %39 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %37, i32 %38, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %33, %25
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %93, %40
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.torus*, %struct.torus** %3, align 8
  %44 = getelementptr inbounds %struct.torus, %struct.torus* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %96

48:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %89, %48
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.torus*, %struct.torus** %3, align 8
  %52 = getelementptr inbounds %struct.torus, %struct.torus* %51, i32 0, i32 7
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = icmp slt i32 %50, %54
  br i1 %55, label %56, label %92

56:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %85, %56
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.torus*, %struct.torus** %3, align 8
  %60 = getelementptr inbounds %struct.torus, %struct.torus* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %88

64:                                               ; preds = %57
  %65 = load %struct.torus*, %struct.torus** %3, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.torus*, %struct.torus** %3, align 8
  %70 = getelementptr inbounds %struct.torus, %struct.torus* %69, i32 0, i32 4
  %71 = load %struct.TYPE_6__****, %struct.TYPE_6__***** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_6__***, %struct.TYPE_6__**** %71, i64 %73
  %75 = load %struct.TYPE_6__***, %struct.TYPE_6__**** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__**, %struct.TYPE_6__*** %75, i64 %77
  %79 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %79, i64 %81
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = call i32 @rpt_torus_missing(%struct.torus* %65, i32 %66, i32 %67, i32 %68, %struct.TYPE_6__* %83, i32* %8)
  br label %85

85:                                               ; preds = %64
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %57

88:                                               ; preds = %57
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %49

92:                                               ; preds = %49
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %41

96:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %224, %96
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.torus*, %struct.torus** %3, align 8
  %100 = getelementptr inbounds %struct.torus, %struct.torus* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = icmp slt i32 %98, %102
  br i1 %103, label %104, label %227

104:                                              ; preds = %97
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %220, %104
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.torus*, %struct.torus** %3, align 8
  %108 = getelementptr inbounds %struct.torus, %struct.torus* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = icmp slt i32 %106, %110
  br i1 %111, label %112, label %223

112:                                              ; preds = %105
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %189, %112
  %114 = load i32, i32* %5, align 4
  %115 = load %struct.torus*, %struct.torus** %3, align 8
  %116 = getelementptr inbounds %struct.torus, %struct.torus* %115, i32 0, i32 6
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = icmp slt i32 %114, %118
  br i1 %119, label %120, label %192

120:                                              ; preds = %113
  %121 = load %struct.torus*, %struct.torus** %3, align 8
  %122 = getelementptr inbounds %struct.torus, %struct.torus* %121, i32 0, i32 4
  %123 = load %struct.TYPE_6__****, %struct.TYPE_6__***** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_6__***, %struct.TYPE_6__**** %123, i64 %125
  %127 = load %struct.TYPE_6__***, %struct.TYPE_6__**** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_6__**, %struct.TYPE_6__*** %127, i64 %129
  %131 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %131, i64 %133
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = icmp ne %struct.TYPE_6__* %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %120
  br label %189

138:                                              ; preds = %120
  %139 = load %struct.torus*, %struct.torus** %3, align 8
  %140 = getelementptr inbounds %struct.torus, %struct.torus* %139, i32 0, i32 4
  %141 = load %struct.TYPE_6__****, %struct.TYPE_6__***** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_6__***, %struct.TYPE_6__**** %141, i64 %143
  %145 = load %struct.TYPE_6__***, %struct.TYPE_6__**** %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_6__**, %struct.TYPE_6__*** %145, i64 %147
  %149 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %148, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %149, i64 %151
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %138
  %161 = load i32, i32* %9, align 4
  %162 = add i32 %161, 1
  store i32 %162, i32* %9, align 4
  br label %163

163:                                              ; preds = %160, %138
  %164 = load %struct.torus*, %struct.torus** %3, align 8
  %165 = getelementptr inbounds %struct.torus, %struct.torus* %164, i32 0, i32 4
  %166 = load %struct.TYPE_6__****, %struct.TYPE_6__***** %165, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_6__***, %struct.TYPE_6__**** %166, i64 %168
  %170 = load %struct.TYPE_6__***, %struct.TYPE_6__**** %169, align 8
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_6__**, %struct.TYPE_6__*** %170, i64 %172
  %174 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %173, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %174, i64 %176
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i64 1
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %163
  %186 = load i32, i32* %10, align 4
  %187 = add i32 %186, 1
  store i32 %187, i32* %10, align 4
  br label %188

188:                                              ; preds = %185, %163
  br label %189

189:                                              ; preds = %188, %137
  %190 = load i32, i32* %5, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %5, align 4
  br label %113

192:                                              ; preds = %113
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* %10, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %207

196:                                              ; preds = %192
  %197 = load %struct.torus*, %struct.torus** %3, align 8
  %198 = getelementptr inbounds %struct.torus, %struct.torus* %197, i32 0, i32 3
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = load i32, i32* @OSM_LOG_ERROR, align 4
  %202 = load i32, i32* %6, align 4
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* %10, align 4
  %206 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %200, i32 %201, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %202, i32 %203, i32 %204, i32 %205)
  store i32 0, i32* %11, align 4
  br label %207

207:                                              ; preds = %196, %192
  %208 = load i32, i32* %9, align 4
  %209 = icmp ugt i32 %208, 1
  br i1 %209, label %210, label %219

210:                                              ; preds = %207
  %211 = load %struct.torus*, %struct.torus** %3, align 8
  %212 = getelementptr inbounds %struct.torus, %struct.torus* %211, i32 0, i32 3
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 0
  %215 = load i32, i32* @OSM_LOG_ERROR, align 4
  %216 = load i32, i32* %6, align 4
  %217 = load i32, i32* %7, align 4
  %218 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %214, i32 %215, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %216, i32 %217)
  store i32 0, i32* %11, align 4
  br label %219

219:                                              ; preds = %210, %207
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %6, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %6, align 4
  br label %105

223:                                              ; preds = %105
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %7, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %7, align 4
  br label %97

227:                                              ; preds = %97
  store i32 0, i32* %5, align 4
  br label %228

228:                                              ; preds = %355, %227
  %229 = load i32, i32* %5, align 4
  %230 = load %struct.torus*, %struct.torus** %3, align 8
  %231 = getelementptr inbounds %struct.torus, %struct.torus* %230, i32 0, i32 6
  %232 = load i64, i64* %231, align 8
  %233 = trunc i64 %232 to i32
  %234 = icmp slt i32 %229, %233
  br i1 %234, label %235, label %358

235:                                              ; preds = %228
  store i32 0, i32* %7, align 4
  br label %236

236:                                              ; preds = %351, %235
  %237 = load i32, i32* %7, align 4
  %238 = load %struct.torus*, %struct.torus** %3, align 8
  %239 = getelementptr inbounds %struct.torus, %struct.torus* %238, i32 0, i32 5
  %240 = load i64, i64* %239, align 8
  %241 = trunc i64 %240 to i32
  %242 = icmp slt i32 %237, %241
  br i1 %242, label %243, label %354

243:                                              ; preds = %236
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %244

244:                                              ; preds = %320, %243
  %245 = load i32, i32* %6, align 4
  %246 = load %struct.torus*, %struct.torus** %3, align 8
  %247 = getelementptr inbounds %struct.torus, %struct.torus* %246, i32 0, i32 7
  %248 = load i64, i64* %247, align 8
  %249 = trunc i64 %248 to i32
  %250 = icmp slt i32 %245, %249
  br i1 %250, label %251, label %323

251:                                              ; preds = %244
  %252 = load %struct.torus*, %struct.torus** %3, align 8
  %253 = getelementptr inbounds %struct.torus, %struct.torus* %252, i32 0, i32 4
  %254 = load %struct.TYPE_6__****, %struct.TYPE_6__***** %253, align 8
  %255 = load i32, i32* %5, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_6__***, %struct.TYPE_6__**** %254, i64 %256
  %258 = load %struct.TYPE_6__***, %struct.TYPE_6__**** %257, align 8
  %259 = load i32, i32* %6, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_6__**, %struct.TYPE_6__*** %258, i64 %260
  %262 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %261, align 8
  %263 = load i32, i32* %7, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %262, i64 %264
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %265, align 8
  %267 = icmp ne %struct.TYPE_6__* %266, null
  br i1 %267, label %269, label %268

268:                                              ; preds = %251
  br label %320

269:                                              ; preds = %251
  %270 = load %struct.torus*, %struct.torus** %3, align 8
  %271 = getelementptr inbounds %struct.torus, %struct.torus* %270, i32 0, i32 4
  %272 = load %struct.TYPE_6__****, %struct.TYPE_6__***** %271, align 8
  %273 = load i32, i32* %5, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_6__***, %struct.TYPE_6__**** %272, i64 %274
  %276 = load %struct.TYPE_6__***, %struct.TYPE_6__**** %275, align 8
  %277 = load i32, i32* %6, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_6__**, %struct.TYPE_6__*** %276, i64 %278
  %280 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %279, align 8
  %281 = load i32, i32* %7, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %280, i64 %282
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i64 2
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %294, label %291

291:                                              ; preds = %269
  %292 = load i32, i32* %9, align 4
  %293 = add i32 %292, 1
  store i32 %293, i32* %9, align 4
  br label %294

294:                                              ; preds = %291, %269
  %295 = load %struct.torus*, %struct.torus** %3, align 8
  %296 = getelementptr inbounds %struct.torus, %struct.torus* %295, i32 0, i32 4
  %297 = load %struct.TYPE_6__****, %struct.TYPE_6__***** %296, align 8
  %298 = load i32, i32* %5, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_6__***, %struct.TYPE_6__**** %297, i64 %299
  %301 = load %struct.TYPE_6__***, %struct.TYPE_6__**** %300, align 8
  %302 = load i32, i32* %6, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_6__**, %struct.TYPE_6__*** %301, i64 %303
  %305 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %304, align 8
  %306 = load i32, i32* %7, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %305, i64 %307
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 0
  %311 = load %struct.TYPE_4__*, %struct.TYPE_4__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i64 3
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %319, label %316

316:                                              ; preds = %294
  %317 = load i32, i32* %10, align 4
  %318 = add i32 %317, 1
  store i32 %318, i32* %10, align 4
  br label %319

319:                                              ; preds = %316, %294
  br label %320

320:                                              ; preds = %319, %268
  %321 = load i32, i32* %6, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %6, align 4
  br label %244

323:                                              ; preds = %244
  %324 = load i32, i32* %9, align 4
  %325 = load i32, i32* %10, align 4
  %326 = icmp ne i32 %324, %325
  br i1 %326, label %327, label %338

327:                                              ; preds = %323
  %328 = load %struct.torus*, %struct.torus** %3, align 8
  %329 = getelementptr inbounds %struct.torus, %struct.torus* %328, i32 0, i32 3
  %330 = load %struct.TYPE_5__*, %struct.TYPE_5__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i32 0, i32 0
  %332 = load i32, i32* @OSM_LOG_ERROR, align 4
  %333 = load i32, i32* %5, align 4
  %334 = load i32, i32* %7, align 4
  %335 = load i32, i32* %9, align 4
  %336 = load i32, i32* %10, align 4
  %337 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %331, i32 %332, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i32 %333, i32 %334, i32 %335, i32 %336)
  store i32 0, i32* %11, align 4
  br label %338

338:                                              ; preds = %327, %323
  %339 = load i32, i32* %9, align 4
  %340 = icmp ugt i32 %339, 1
  br i1 %340, label %341, label %350

341:                                              ; preds = %338
  %342 = load %struct.torus*, %struct.torus** %3, align 8
  %343 = getelementptr inbounds %struct.torus, %struct.torus* %342, i32 0, i32 3
  %344 = load %struct.TYPE_5__*, %struct.TYPE_5__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %344, i32 0, i32 0
  %346 = load i32, i32* @OSM_LOG_ERROR, align 4
  %347 = load i32, i32* %5, align 4
  %348 = load i32, i32* %7, align 4
  %349 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %345, i32 %346, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %347, i32 %348)
  store i32 0, i32* %11, align 4
  br label %350

350:                                              ; preds = %341, %338
  br label %351

351:                                              ; preds = %350
  %352 = load i32, i32* %7, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %7, align 4
  br label %236

354:                                              ; preds = %236
  br label %355

355:                                              ; preds = %354
  %356 = load i32, i32* %5, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %5, align 4
  br label %228

358:                                              ; preds = %228
  store i32 0, i32* %6, align 4
  br label %359

359:                                              ; preds = %486, %358
  %360 = load i32, i32* %6, align 4
  %361 = load %struct.torus*, %struct.torus** %3, align 8
  %362 = getelementptr inbounds %struct.torus, %struct.torus* %361, i32 0, i32 7
  %363 = load i64, i64* %362, align 8
  %364 = trunc i64 %363 to i32
  %365 = icmp slt i32 %360, %364
  br i1 %365, label %366, label %489

366:                                              ; preds = %359
  store i32 0, i32* %5, align 4
  br label %367

367:                                              ; preds = %482, %366
  %368 = load i32, i32* %5, align 4
  %369 = load %struct.torus*, %struct.torus** %3, align 8
  %370 = getelementptr inbounds %struct.torus, %struct.torus* %369, i32 0, i32 6
  %371 = load i64, i64* %370, align 8
  %372 = trunc i64 %371 to i32
  %373 = icmp slt i32 %368, %372
  br i1 %373, label %374, label %485

374:                                              ; preds = %367
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %375

375:                                              ; preds = %451, %374
  %376 = load i32, i32* %7, align 4
  %377 = load %struct.torus*, %struct.torus** %3, align 8
  %378 = getelementptr inbounds %struct.torus, %struct.torus* %377, i32 0, i32 5
  %379 = load i64, i64* %378, align 8
  %380 = trunc i64 %379 to i32
  %381 = icmp slt i32 %376, %380
  br i1 %381, label %382, label %454

382:                                              ; preds = %375
  %383 = load %struct.torus*, %struct.torus** %3, align 8
  %384 = getelementptr inbounds %struct.torus, %struct.torus* %383, i32 0, i32 4
  %385 = load %struct.TYPE_6__****, %struct.TYPE_6__***** %384, align 8
  %386 = load i32, i32* %5, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.TYPE_6__***, %struct.TYPE_6__**** %385, i64 %387
  %389 = load %struct.TYPE_6__***, %struct.TYPE_6__**** %388, align 8
  %390 = load i32, i32* %6, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_6__**, %struct.TYPE_6__*** %389, i64 %391
  %393 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %392, align 8
  %394 = load i32, i32* %7, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %393, i64 %395
  %397 = load %struct.TYPE_6__*, %struct.TYPE_6__** %396, align 8
  %398 = icmp ne %struct.TYPE_6__* %397, null
  br i1 %398, label %400, label %399

399:                                              ; preds = %382
  br label %451

400:                                              ; preds = %382
  %401 = load %struct.torus*, %struct.torus** %3, align 8
  %402 = getelementptr inbounds %struct.torus, %struct.torus* %401, i32 0, i32 4
  %403 = load %struct.TYPE_6__****, %struct.TYPE_6__***** %402, align 8
  %404 = load i32, i32* %5, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.TYPE_6__***, %struct.TYPE_6__**** %403, i64 %405
  %407 = load %struct.TYPE_6__***, %struct.TYPE_6__**** %406, align 8
  %408 = load i32, i32* %6, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_6__**, %struct.TYPE_6__*** %407, i64 %409
  %411 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %410, align 8
  %412 = load i32, i32* %7, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %411, i64 %413
  %415 = load %struct.TYPE_6__*, %struct.TYPE_6__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %415, i32 0, i32 0
  %417 = load %struct.TYPE_4__*, %struct.TYPE_4__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %417, i64 4
  %419 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %425, label %422

422:                                              ; preds = %400
  %423 = load i32, i32* %9, align 4
  %424 = add i32 %423, 1
  store i32 %424, i32* %9, align 4
  br label %425

425:                                              ; preds = %422, %400
  %426 = load %struct.torus*, %struct.torus** %3, align 8
  %427 = getelementptr inbounds %struct.torus, %struct.torus* %426, i32 0, i32 4
  %428 = load %struct.TYPE_6__****, %struct.TYPE_6__***** %427, align 8
  %429 = load i32, i32* %5, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.TYPE_6__***, %struct.TYPE_6__**** %428, i64 %430
  %432 = load %struct.TYPE_6__***, %struct.TYPE_6__**** %431, align 8
  %433 = load i32, i32* %6, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.TYPE_6__**, %struct.TYPE_6__*** %432, i64 %434
  %436 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %435, align 8
  %437 = load i32, i32* %7, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %436, i64 %438
  %440 = load %struct.TYPE_6__*, %struct.TYPE_6__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %440, i32 0, i32 0
  %442 = load %struct.TYPE_4__*, %struct.TYPE_4__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %442, i64 5
  %444 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %450, label %447

447:                                              ; preds = %425
  %448 = load i32, i32* %10, align 4
  %449 = add i32 %448, 1
  store i32 %449, i32* %10, align 4
  br label %450

450:                                              ; preds = %447, %425
  br label %451

451:                                              ; preds = %450, %399
  %452 = load i32, i32* %7, align 4
  %453 = add nsw i32 %452, 1
  store i32 %453, i32* %7, align 4
  br label %375

454:                                              ; preds = %375
  %455 = load i32, i32* %9, align 4
  %456 = load i32, i32* %10, align 4
  %457 = icmp ne i32 %455, %456
  br i1 %457, label %458, label %469

458:                                              ; preds = %454
  %459 = load %struct.torus*, %struct.torus** %3, align 8
  %460 = getelementptr inbounds %struct.torus, %struct.torus* %459, i32 0, i32 3
  %461 = load %struct.TYPE_5__*, %struct.TYPE_5__** %460, align 8
  %462 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %461, i32 0, i32 0
  %463 = load i32, i32* @OSM_LOG_ERROR, align 4
  %464 = load i32, i32* %5, align 4
  %465 = load i32, i32* %6, align 4
  %466 = load i32, i32* %9, align 4
  %467 = load i32, i32* %10, align 4
  %468 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %462, i32 %463, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i32 %464, i32 %465, i32 %466, i32 %467)
  store i32 0, i32* %11, align 4
  br label %469

469:                                              ; preds = %458, %454
  %470 = load i32, i32* %9, align 4
  %471 = icmp ugt i32 %470, 1
  br i1 %471, label %472, label %481

472:                                              ; preds = %469
  %473 = load %struct.torus*, %struct.torus** %3, align 8
  %474 = getelementptr inbounds %struct.torus, %struct.torus* %473, i32 0, i32 3
  %475 = load %struct.TYPE_5__*, %struct.TYPE_5__** %474, align 8
  %476 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %475, i32 0, i32 0
  %477 = load i32, i32* @OSM_LOG_ERROR, align 4
  %478 = load i32, i32* %5, align 4
  %479 = load i32, i32* %6, align 4
  %480 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %476, i32 %477, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %478, i32 %479)
  store i32 0, i32* %11, align 4
  br label %481

481:                                              ; preds = %472, %469
  br label %482

482:                                              ; preds = %481
  %483 = load i32, i32* %5, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %5, align 4
  br label %367

485:                                              ; preds = %367
  br label %486

486:                                              ; preds = %485
  %487 = load i32, i32* %6, align 4
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* %6, align 4
  br label %359

489:                                              ; preds = %359
  %490 = load %struct.torus*, %struct.torus** %3, align 8
  %491 = getelementptr inbounds %struct.torus, %struct.torus* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 8
  %493 = load i32, i32* @MSG_DEADLOCK, align 4
  %494 = and i32 %492, %493
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %503

496:                                              ; preds = %489
  %497 = load %struct.torus*, %struct.torus** %3, align 8
  %498 = getelementptr inbounds %struct.torus, %struct.torus* %497, i32 0, i32 3
  %499 = load %struct.TYPE_5__*, %struct.TYPE_5__** %498, align 8
  %500 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %499, i32 0, i32 0
  %501 = load i32, i32* @OSM_LOG_ERROR, align 4
  %502 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %500, i32 %501, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %503

503:                                              ; preds = %496, %489
  %504 = load i32, i32* %11, align 4
  ret i32 %504
}

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, ...) #1

declare dso_local i32 @rpt_torus_missing(%struct.torus*, i32, i32, i32, %struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
