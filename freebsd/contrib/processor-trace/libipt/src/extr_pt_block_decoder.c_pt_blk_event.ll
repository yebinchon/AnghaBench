; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_decoder = type { i32, i32, i32, %struct.pt_event }
%struct.pt_event = type { i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@pte_invalid = common dso_local global i32 0, align 4
@pte_bad_query = common dso_local global i32 0, align 4
@fallthrough = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_blk_event(%struct.pt_block_decoder* %0, %struct.pt_event* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_block_decoder*, align 8
  %6 = alloca %struct.pt_event*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pt_event*, align 8
  %9 = alloca i32, align 4
  store %struct.pt_block_decoder* %0, %struct.pt_block_decoder** %5, align 8
  store %struct.pt_event* %1, %struct.pt_event** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %11 = icmp ne %struct.pt_block_decoder* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %14 = icmp ne %struct.pt_event* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @pte_invalid, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %298

18:                                               ; preds = %12
  %19 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %20 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @pte_bad_query, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %298

26:                                               ; preds = %18
  %27 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %28 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %27, i32 0, i32 3
  store %struct.pt_event* %28, %struct.pt_event** %8, align 8
  %29 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %30 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %287 [
    i32 141, label %32
    i32 146, label %56
    i32 142, label %71
    i32 147, label %80
    i32 145, label %102
    i32 135, label %122
    i32 144, label %131
    i32 128, label %151
    i32 136, label %160
    i32 140, label %169
    i32 129, label %196
    i32 131, label %223
    i32 139, label %232
    i32 137, label %258
    i32 133, label %284
    i32 132, label %284
    i32 134, label %284
    i32 130, label %284
    i32 143, label %284
    i32 138, label %284
  ]

32:                                               ; preds = %26
  %33 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %34 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %39 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %44 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %32
  %48 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %49 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %50 = call i32 @pt_blk_process_enabled(%struct.pt_block_decoder* %48, %struct.pt_event* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %298

55:                                               ; preds = %47
  br label %287

56:                                               ; preds = %26
  %57 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %58 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %61 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 7
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %59, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i32, i32* @pte_bad_query, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %298

69:                                               ; preds = %56
  %70 = load i32, i32* @fallthrough, align 4
  br label %71

71:                                               ; preds = %26, %69
  %72 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %73 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %74 = call i32 @pt_blk_process_disabled(%struct.pt_block_decoder* %72, %struct.pt_event* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %4, align 4
  br label %298

79:                                               ; preds = %71
  br label %287

80:                                               ; preds = %26
  %81 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %82 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %85 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 6
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %83, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %80
  %91 = load i32, i32* @pte_bad_query, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %298

93:                                               ; preds = %80
  %94 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %95 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %96 = call i32 @pt_blk_process_async_branch(%struct.pt_block_decoder* %94, %struct.pt_event* %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %4, align 4
  br label %298

101:                                              ; preds = %93
  br label %287

102:                                              ; preds = %26
  %103 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %104 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %120, label %107

107:                                              ; preds = %102
  %108 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %109 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %112 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %110, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %107
  %118 = load i32, i32* @pte_bad_query, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %298

120:                                              ; preds = %107, %102
  %121 = load i32, i32* @fallthrough, align 4
  br label %122

122:                                              ; preds = %26, %120
  %123 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %124 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %125 = call i32 @pt_blk_process_paging(%struct.pt_block_decoder* %123, %struct.pt_event* %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %4, align 4
  br label %298

130:                                              ; preds = %122
  br label %287

131:                                              ; preds = %26
  %132 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %133 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %149, label %136

136:                                              ; preds = %131
  %137 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %138 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %141 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %139, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %136
  %147 = load i32, i32* @pte_bad_query, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %4, align 4
  br label %298

149:                                              ; preds = %136, %131
  %150 = load i32, i32* @fallthrough, align 4
  br label %151

151:                                              ; preds = %26, %149
  %152 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %153 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %154 = call i32 @pt_blk_process_vmcs(%struct.pt_block_decoder* %152, %struct.pt_event* %153)
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %151
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %4, align 4
  br label %298

159:                                              ; preds = %151
  br label %287

160:                                              ; preds = %26
  %161 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %162 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %163 = call i32 @pt_blk_process_overflow(%struct.pt_block_decoder* %161, %struct.pt_event* %162)
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = load i32, i32* %9, align 4
  store i32 %167, i32* %4, align 4
  br label %298

168:                                              ; preds = %160
  br label %287

169:                                              ; preds = %26
  %170 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %171 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %187, label %174

174:                                              ; preds = %169
  %175 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %176 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %179 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %177, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %174
  %185 = load i32, i32* @pte_bad_query, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %4, align 4
  br label %298

187:                                              ; preds = %174, %169
  %188 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %189 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %190 = call i32 @pt_blk_process_exec_mode(%struct.pt_block_decoder* %188, %struct.pt_event* %189)
  store i32 %190, i32* %9, align 4
  %191 = load i32, i32* %9, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %187
  %194 = load i32, i32* %9, align 4
  store i32 %194, i32* %4, align 4
  br label %298

195:                                              ; preds = %187
  br label %287

196:                                              ; preds = %26
  %197 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %198 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %214, label %201

201:                                              ; preds = %196
  %202 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %203 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %206 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %204, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %201
  %212 = load i32, i32* @pte_bad_query, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %4, align 4
  br label %298

214:                                              ; preds = %201, %196
  %215 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %216 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %217 = call i32 @pt_blk_process_tsx(%struct.pt_block_decoder* %215, %struct.pt_event* %216)
  store i32 %217, i32* %9, align 4
  %218 = load i32, i32* %9, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %214
  %221 = load i32, i32* %9, align 4
  store i32 %221, i32* %4, align 4
  br label %298

222:                                              ; preds = %214
  br label %287

223:                                              ; preds = %26
  %224 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %225 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %226 = call i32 @pt_blk_process_stop(%struct.pt_block_decoder* %224, %struct.pt_event* %225)
  store i32 %226, i32* %9, align 4
  %227 = load i32, i32* %9, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %223
  %230 = load i32, i32* %9, align 4
  store i32 %230, i32* %4, align 4
  br label %298

231:                                              ; preds = %223
  br label %287

232:                                              ; preds = %26
  %233 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %234 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %255, label %237

237:                                              ; preds = %232
  %238 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %239 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %255

242:                                              ; preds = %237
  %243 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %244 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %247 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %245, %250
  br i1 %251, label %252, label %255

252:                                              ; preds = %242
  %253 = load i32, i32* @pte_bad_query, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %4, align 4
  br label %298

255:                                              ; preds = %242, %237, %232
  %256 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %257 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %256, i32 0, i32 0
  store i32 0, i32* %257, align 4
  br label %287

258:                                              ; preds = %26
  %259 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %260 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %281, label %263

263:                                              ; preds = %258
  %264 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %265 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %281

268:                                              ; preds = %263
  %269 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %270 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %273 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = icmp ne i32 %271, %276
  br i1 %277, label %278, label %281

278:                                              ; preds = %268
  %279 = load i32, i32* @pte_bad_query, align 4
  %280 = sub nsw i32 0, %279
  store i32 %280, i32* %4, align 4
  br label %298

281:                                              ; preds = %268, %263, %258
  %282 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %283 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %282, i32 0, i32 0
  store i32 0, i32* %283, align 4
  br label %287

284:                                              ; preds = %26, %26, %26, %26, %26, %26
  %285 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %286 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %285, i32 0, i32 0
  store i32 0, i32* %286, align 4
  br label %287

287:                                              ; preds = %26, %284, %281, %255, %231, %222, %195, %168, %159, %130, %101, %79, %55
  %288 = load i64, i64* %7, align 8
  %289 = icmp ult i64 48, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %287
  store i64 48, i64* %7, align 8
  br label %291

291:                                              ; preds = %290, %287
  %292 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %293 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %294 = load i64, i64* %7, align 8
  %295 = call i32 @memcpy(%struct.pt_event* %292, %struct.pt_event* %293, i64 %294)
  %296 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %297 = call i32 @pt_blk_proceed_trailing_event(%struct.pt_block_decoder* %296, i32* null)
  store i32 %297, i32* %4, align 4
  br label %298

298:                                              ; preds = %291, %278, %252, %229, %220, %211, %193, %184, %166, %157, %146, %128, %117, %99, %90, %77, %66, %53, %23, %15
  %299 = load i32, i32* %4, align 4
  ret i32 %299
}

declare dso_local i32 @pt_blk_process_enabled(%struct.pt_block_decoder*, %struct.pt_event*) #1

declare dso_local i32 @pt_blk_process_disabled(%struct.pt_block_decoder*, %struct.pt_event*) #1

declare dso_local i32 @pt_blk_process_async_branch(%struct.pt_block_decoder*, %struct.pt_event*) #1

declare dso_local i32 @pt_blk_process_paging(%struct.pt_block_decoder*, %struct.pt_event*) #1

declare dso_local i32 @pt_blk_process_vmcs(%struct.pt_block_decoder*, %struct.pt_event*) #1

declare dso_local i32 @pt_blk_process_overflow(%struct.pt_block_decoder*, %struct.pt_event*) #1

declare dso_local i32 @pt_blk_process_exec_mode(%struct.pt_block_decoder*, %struct.pt_event*) #1

declare dso_local i32 @pt_blk_process_tsx(%struct.pt_block_decoder*, %struct.pt_event*) #1

declare dso_local i32 @pt_blk_process_stop(%struct.pt_block_decoder*, %struct.pt_event*) #1

declare dso_local i32 @memcpy(%struct.pt_event*, %struct.pt_event*, i64) #1

declare dso_local i32 @pt_blk_proceed_trailing_event(%struct.pt_block_decoder*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
