; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_insn_decoder = type { i32, i32, i64, i64, i32, i32, %struct.pt_event }
%struct.pt_event = type { i32, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@pte_invalid = common dso_local global i32 0, align 4
@pte_bad_query = common dso_local global i32 0, align 4
@fallthrough = common dso_local global i32 0, align 4
@pts_event_pending = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_insn_event(%struct.pt_insn_decoder* %0, %struct.pt_event* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_insn_decoder*, align 8
  %6 = alloca %struct.pt_event*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pt_event*, align 8
  %9 = alloca i32, align 4
  store %struct.pt_insn_decoder* %0, %struct.pt_insn_decoder** %5, align 8
  store %struct.pt_event* %1, %struct.pt_event** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %11 = icmp ne %struct.pt_insn_decoder* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %14 = icmp ne %struct.pt_event* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @pte_invalid, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %292

18:                                               ; preds = %12
  %19 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %20 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @pte_bad_query, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %292

26:                                               ; preds = %18
  %27 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %28 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %27, i32 0, i32 6
  store %struct.pt_event* %28, %struct.pt_event** %8, align 8
  %29 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %30 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %32 [
    i32 141, label %35
    i32 146, label %58
    i32 142, label %78
    i32 147, label %86
    i32 145, label %107
    i32 135, label %127
    i32 144, label %135
    i32 128, label %155
    i32 136, label %163
    i32 140, label %171
    i32 129, label %179
    i32 131, label %187
    i32 139, label %195
    i32 137, label %219
    i32 133, label %243
    i32 132, label %243
    i32 134, label %243
    i32 130, label %243
    i32 143, label %243
    i32 138, label %243
  ]

32:                                               ; preds = %26
  %33 = load i32, i32* @pte_bad_query, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %292

35:                                               ; preds = %26
  %36 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %37 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %40 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %38, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %47 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  br label %50

50:                                               ; preds = %45, %35
  %51 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %52 = call i32 @pt_insn_process_enabled(%struct.pt_insn_decoder* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %292

57:                                               ; preds = %50
  br label %244

58:                                               ; preds = %26
  %59 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %60 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %76, label %63

63:                                               ; preds = %58
  %64 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %65 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %68 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %66, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = load i32, i32* @pte_bad_query, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %292

76:                                               ; preds = %63, %58
  %77 = load i32, i32* @fallthrough, align 4
  br label %78

78:                                               ; preds = %26, %76
  %79 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %80 = call i32 @pt_insn_process_disabled(%struct.pt_insn_decoder* %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %4, align 4
  br label %292

85:                                               ; preds = %78
  br label %244

86:                                               ; preds = %26
  %87 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %88 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %91 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %89, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %86
  %97 = load i32, i32* @pte_bad_query, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %292

99:                                               ; preds = %86
  %100 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %101 = call i32 @pt_insn_process_async_branch(%struct.pt_insn_decoder* %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %4, align 4
  br label %292

106:                                              ; preds = %99
  br label %244

107:                                              ; preds = %26
  %108 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %109 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %125, label %112

112:                                              ; preds = %107
  %113 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %114 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %117 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %115, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %112
  %123 = load i32, i32* @pte_bad_query, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %4, align 4
  br label %292

125:                                              ; preds = %112, %107
  %126 = load i32, i32* @fallthrough, align 4
  br label %127

127:                                              ; preds = %26, %125
  %128 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %129 = call i32 @pt_insn_process_paging(%struct.pt_insn_decoder* %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %4, align 4
  br label %292

134:                                              ; preds = %127
  br label %244

135:                                              ; preds = %26
  %136 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %137 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %153, label %140

140:                                              ; preds = %135
  %141 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %142 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %145 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %143, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %140
  %151 = load i32, i32* @pte_bad_query, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %4, align 4
  br label %292

153:                                              ; preds = %140, %135
  %154 = load i32, i32* @fallthrough, align 4
  br label %155

155:                                              ; preds = %26, %153
  %156 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %157 = call i32 @pt_insn_process_vmcs(%struct.pt_insn_decoder* %156)
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = load i32, i32* %9, align 4
  store i32 %161, i32* %4, align 4
  br label %292

162:                                              ; preds = %155
  br label %244

163:                                              ; preds = %26
  %164 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %165 = call i32 @pt_insn_process_overflow(%struct.pt_insn_decoder* %164)
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = load i32, i32* %9, align 4
  store i32 %169, i32* %4, align 4
  br label %292

170:                                              ; preds = %163
  br label %244

171:                                              ; preds = %26
  %172 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %173 = call i32 @pt_insn_process_exec_mode(%struct.pt_insn_decoder* %172)
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %9, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  %177 = load i32, i32* %9, align 4
  store i32 %177, i32* %4, align 4
  br label %292

178:                                              ; preds = %171
  br label %244

179:                                              ; preds = %26
  %180 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %181 = call i32 @pt_insn_process_tsx(%struct.pt_insn_decoder* %180)
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = load i32, i32* %9, align 4
  store i32 %185, i32* %4, align 4
  br label %292

186:                                              ; preds = %179
  br label %244

187:                                              ; preds = %26
  %188 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %189 = call i32 @pt_insn_process_stop(%struct.pt_insn_decoder* %188)
  store i32 %189, i32* %9, align 4
  %190 = load i32, i32* %9, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = load i32, i32* %9, align 4
  store i32 %193, i32* %4, align 4
  br label %292

194:                                              ; preds = %187
  br label %244

195:                                              ; preds = %26
  %196 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %197 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %218, label %200

200:                                              ; preds = %195
  %201 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %202 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %218

205:                                              ; preds = %200
  %206 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %207 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %210 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %208, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %205
  %216 = load i32, i32* @pte_bad_query, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %4, align 4
  br label %292

218:                                              ; preds = %205, %200, %195
  br label %244

219:                                              ; preds = %26
  %220 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %221 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %242, label %224

224:                                              ; preds = %219
  %225 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %226 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %242

229:                                              ; preds = %224
  %230 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %231 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %234 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = icmp ne i32 %232, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %229
  %240 = load i32, i32* @pte_bad_query, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %4, align 4
  br label %292

242:                                              ; preds = %229, %224, %219
  br label %244

243:                                              ; preds = %26, %26, %26, %26, %26, %26
  br label %244

244:                                              ; preds = %243, %242, %218, %194, %186, %178, %170, %162, %134, %106, %85, %57
  %245 = load i64, i64* %7, align 8
  %246 = icmp ult i64 40, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %244
  store i64 40, i64* %7, align 8
  br label %248

248:                                              ; preds = %247, %244
  %249 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %250 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %251 = load i64, i64* %7, align 8
  %252 = call i32 @memcpy(%struct.pt_event* %249, %struct.pt_event* %250, i64 %251)
  %253 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %254 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %253, i32 0, i32 3
  store i64 0, i64* %254, align 8
  %255 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %256 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %289

259:                                              ; preds = %248
  %260 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %261 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %262 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %261, i32 0, i32 1
  %263 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %264 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %263, i32 0, i32 0
  %265 = call i32 @pt_insn_check_insn_event(%struct.pt_insn_decoder* %260, i32* %262, i32* %264)
  store i32 %265, i32* %9, align 4
  %266 = load i32, i32* %9, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %281

268:                                              ; preds = %259
  %269 = load i32, i32* %9, align 4
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %268
  %272 = load i32, i32* %9, align 4
  store i32 %272, i32* %4, align 4
  br label %292

273:                                              ; preds = %268
  %274 = load i32, i32* %9, align 4
  %275 = load i32, i32* @pts_event_pending, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %273
  %279 = load i32, i32* %9, align 4
  store i32 %279, i32* %4, align 4
  br label %292

280:                                              ; preds = %273
  br label %281

281:                                              ; preds = %280, %259
  %282 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %283 = call i32 @pt_insn_proceed_postponed(%struct.pt_insn_decoder* %282)
  store i32 %283, i32* %9, align 4
  %284 = load i32, i32* %9, align 4
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %281
  %287 = load i32, i32* %9, align 4
  store i32 %287, i32* %4, align 4
  br label %292

288:                                              ; preds = %281
  br label %289

289:                                              ; preds = %288, %248
  %290 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %291 = call i32 @pt_insn_check_ip_event(%struct.pt_insn_decoder* %290, i32* null, i32* null)
  store i32 %291, i32* %4, align 4
  br label %292

292:                                              ; preds = %289, %286, %278, %271, %239, %215, %192, %184, %176, %168, %160, %150, %132, %122, %104, %96, %83, %73, %55, %32, %23, %15
  %293 = load i32, i32* %4, align 4
  ret i32 %293
}

declare dso_local i32 @pt_insn_process_enabled(%struct.pt_insn_decoder*) #1

declare dso_local i32 @pt_insn_process_disabled(%struct.pt_insn_decoder*) #1

declare dso_local i32 @pt_insn_process_async_branch(%struct.pt_insn_decoder*) #1

declare dso_local i32 @pt_insn_process_paging(%struct.pt_insn_decoder*) #1

declare dso_local i32 @pt_insn_process_vmcs(%struct.pt_insn_decoder*) #1

declare dso_local i32 @pt_insn_process_overflow(%struct.pt_insn_decoder*) #1

declare dso_local i32 @pt_insn_process_exec_mode(%struct.pt_insn_decoder*) #1

declare dso_local i32 @pt_insn_process_tsx(%struct.pt_insn_decoder*) #1

declare dso_local i32 @pt_insn_process_stop(%struct.pt_insn_decoder*) #1

declare dso_local i32 @memcpy(%struct.pt_event*, %struct.pt_event*, i64) #1

declare dso_local i32 @pt_insn_check_insn_event(%struct.pt_insn_decoder*, i32*, i32*) #1

declare dso_local i32 @pt_insn_proceed_postponed(%struct.pt_insn_decoder*) #1

declare dso_local i32 @pt_insn_check_ip_event(%struct.pt_insn_decoder*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
