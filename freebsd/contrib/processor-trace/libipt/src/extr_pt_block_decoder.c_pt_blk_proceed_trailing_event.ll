; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_proceed_trailing_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_proceed_trailing_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_decoder = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_20__, %struct.pt_event }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.pt_event = type { i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.pt_block = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pts_event_pending = common dso_local global i32 0, align 4
@pte_bad_query = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_block_decoder*, %struct.pt_block*)* @pt_blk_proceed_trailing_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_blk_proceed_trailing_event(%struct.pt_block_decoder* %0, %struct.pt_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_block_decoder*, align 8
  %5 = alloca %struct.pt_block*, align 8
  %6 = alloca %struct.pt_event*, align 8
  %7 = alloca i32, align 4
  store %struct.pt_block_decoder* %0, %struct.pt_block_decoder** %4, align 8
  store %struct.pt_block* %1, %struct.pt_block** %5, align 8
  %8 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %9 = icmp ne %struct.pt_block_decoder* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @pte_internal, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %524

13:                                               ; preds = %2
  %14 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %15 = call i32 @pt_blk_fetch_event(%struct.pt_block_decoder* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %524

23:                                               ; preds = %18
  %24 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %25 = call i32 @pt_blk_proceed_postponed_insn(%struct.pt_block_decoder* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %524

30:                                               ; preds = %23
  %31 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %32 = call i32 @pt_blk_status(%struct.pt_block_decoder* %31, i32 0)
  store i32 %32, i32* %3, align 4
  br label %524

33:                                               ; preds = %13
  %34 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %35 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %34, i32 0, i32 9
  store %struct.pt_event* %35, %struct.pt_event** %6, align 8
  %36 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %37 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %514 [
    i32 142, label %39
    i32 141, label %118
    i32 146, label %129
    i32 147, label %172
    i32 135, label %194
    i32 145, label %228
    i32 128, label %255
    i32 144, label %289
    i32 136, label %316
    i32 140, label %327
    i32 129, label %354
    i32 131, label %378
    i32 139, label %389
    i32 137, label %421
    i32 133, label %453
    i32 132, label %453
    i32 134, label %464
    i32 130, label %503
    i32 143, label %503
    i32 138, label %503
  ]

39:                                               ; preds = %33
  %40 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %41 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %514

45:                                               ; preds = %39
  %46 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %47 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %52 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %51, i32 0, i32 4
  %53 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %54 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %53, i32 0, i32 3
  %55 = call i32 @pt_insn_changes_cr3(i32* %52, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %59 = load i32, i32* @pts_event_pending, align 4
  %60 = call i32 @pt_blk_status(%struct.pt_block_decoder* %58, i32 %59)
  store i32 %60, i32* %3, align 4
  br label %524

61:                                               ; preds = %50, %45
  %62 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %63 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %62, i32 0, i32 7
  %64 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %65 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %64, i32 0, i32 4
  %66 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %67 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %66, i32 0, i32 3
  %68 = call i32 @pt_insn_next_ip(i32* %63, i32* %65, i32* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %61
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @pte_bad_query, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %524

78:                                               ; preds = %71
  %79 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %80 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %81 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %80, i32 0, i32 4
  %82 = call i32 @pt_blk_set_disable_resume_ip(%struct.pt_block_decoder* %79, i32* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %3, align 4
  br label %524

87:                                               ; preds = %78
  %88 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %89 = load i32, i32* @pts_event_pending, align 4
  %90 = call i32 @pt_blk_status(%struct.pt_block_decoder* %88, i32 %89)
  store i32 %90, i32* %3, align 4
  br label %524

91:                                               ; preds = %61
  %92 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %93 = call i32 @pt_blk_clear_postponed_insn(%struct.pt_block_decoder* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %3, align 4
  br label %524

98:                                               ; preds = %91
  %99 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %100 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %117, label %103

103:                                              ; preds = %98
  %104 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %105 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %108 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 7
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %106, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %103
  %114 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %115 = load i32, i32* @pts_event_pending, align 4
  %116 = call i32 @pt_blk_status(%struct.pt_block_decoder* %114, i32 %115)
  store i32 %116, i32* %3, align 4
  br label %524

117:                                              ; preds = %103, %98
  br label %514

118:                                              ; preds = %33
  %119 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %120 = call i32 @pt_blk_proceed_postponed_insn(%struct.pt_block_decoder* %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* %7, align 4
  store i32 %124, i32* %3, align 4
  br label %524

125:                                              ; preds = %118
  %126 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %127 = load i32, i32* @pts_event_pending, align 4
  %128 = call i32 @pt_blk_status(%struct.pt_block_decoder* %126, i32 %127)
  store i32 %128, i32* %3, align 4
  br label %524

129:                                              ; preds = %33
  %130 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %131 = call i32 @pt_blk_proceed_postponed_insn(%struct.pt_block_decoder* %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %3, align 4
  br label %524

136:                                              ; preds = %129
  %137 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %138 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %141 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 6
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %139, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %136
  br label %514

147:                                              ; preds = %136
  %148 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %149 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %148, i32 0, i32 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %168

155:                                              ; preds = %147
  %156 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %157 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %158 = call i32 @pt_blk_handle_erratum_skd022(%struct.pt_block_decoder* %156, %struct.pt_event* %157)
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %7, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %155
  %162 = load i32, i32* %7, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = load i32, i32* %7, align 4
  store i32 %165, i32* %3, align 4
  br label %524

166:                                              ; preds = %161
  br label %514

167:                                              ; preds = %155
  br label %168

168:                                              ; preds = %167, %147
  %169 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %170 = load i32, i32* @pts_event_pending, align 4
  %171 = call i32 @pt_blk_status(%struct.pt_block_decoder* %169, i32 %170)
  store i32 %171, i32* %3, align 4
  br label %524

172:                                              ; preds = %33
  %173 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %174 = call i32 @pt_blk_proceed_postponed_insn(%struct.pt_block_decoder* %173)
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %172
  %178 = load i32, i32* %7, align 4
  store i32 %178, i32* %3, align 4
  br label %524

179:                                              ; preds = %172
  %180 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %181 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %180, i32 0, i32 7
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %184 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 5
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %182, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %179
  br label %514

190:                                              ; preds = %179
  %191 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %192 = load i32, i32* @pts_event_pending, align 4
  %193 = call i32 @pt_blk_status(%struct.pt_block_decoder* %191, i32 %192)
  store i32 %193, i32* %3, align 4
  br label %524

194:                                              ; preds = %33
  %195 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %196 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %195, i32 0, i32 6
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %194
  %200 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %201 = load i32, i32* @pts_event_pending, align 4
  %202 = call i32 @pt_blk_status(%struct.pt_block_decoder* %200, i32 %201)
  store i32 %202, i32* %3, align 4
  br label %524

203:                                              ; preds = %194
  %204 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %205 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %203
  %209 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %210 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %208, %203
  br label %514

214:                                              ; preds = %208
  %215 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %216 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %215, i32 0, i32 4
  %217 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %218 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %217, i32 0, i32 3
  %219 = call i32 @pt_insn_binds_to_pip(i32* %216, i32* %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %214
  br label %514

222:                                              ; preds = %214
  %223 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %224 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %223, i32 0, i32 0
  store i32 1, i32* %224, align 4
  %225 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %226 = load i32, i32* @pts_event_pending, align 4
  %227 = call i32 @pt_blk_status(%struct.pt_block_decoder* %225, i32 %226)
  store i32 %227, i32* %3, align 4
  br label %524

228:                                              ; preds = %33
  %229 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %230 = call i32 @pt_blk_proceed_postponed_insn(%struct.pt_block_decoder* %229)
  store i32 %230, i32* %7, align 4
  %231 = load i32, i32* %7, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %228
  %234 = load i32, i32* %7, align 4
  store i32 %234, i32* %3, align 4
  br label %524

235:                                              ; preds = %228
  %236 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %237 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %251, label %240

240:                                              ; preds = %235
  %241 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %242 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %241, i32 0, i32 7
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %245 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 4
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %243, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %240
  br label %514

251:                                              ; preds = %240, %235
  %252 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %253 = load i32, i32* @pts_event_pending, align 4
  %254 = call i32 @pt_blk_status(%struct.pt_block_decoder* %252, i32 %253)
  store i32 %254, i32* %3, align 4
  br label %524

255:                                              ; preds = %33
  %256 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %257 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %256, i32 0, i32 6
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %264, label %260

260:                                              ; preds = %255
  %261 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %262 = load i32, i32* @pts_event_pending, align 4
  %263 = call i32 @pt_blk_status(%struct.pt_block_decoder* %261, i32 %262)
  store i32 %263, i32* %3, align 4
  br label %524

264:                                              ; preds = %255
  %265 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %266 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %264
  %270 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %271 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %269, %264
  br label %514

275:                                              ; preds = %269
  %276 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %277 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %276, i32 0, i32 4
  %278 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %279 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %278, i32 0, i32 3
  %280 = call i32 @pt_insn_binds_to_vmcs(i32* %277, i32* %279)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %283, label %282

282:                                              ; preds = %275
  br label %514

283:                                              ; preds = %275
  %284 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %285 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %284, i32 0, i32 1
  store i32 1, i32* %285, align 4
  %286 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %287 = load i32, i32* @pts_event_pending, align 4
  %288 = call i32 @pt_blk_status(%struct.pt_block_decoder* %286, i32 %287)
  store i32 %288, i32* %3, align 4
  br label %524

289:                                              ; preds = %33
  %290 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %291 = call i32 @pt_blk_proceed_postponed_insn(%struct.pt_block_decoder* %290)
  store i32 %291, i32* %7, align 4
  %292 = load i32, i32* %7, align 4
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %289
  %295 = load i32, i32* %7, align 4
  store i32 %295, i32* %3, align 4
  br label %524

296:                                              ; preds = %289
  %297 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %298 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %312, label %301

301:                                              ; preds = %296
  %302 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %303 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %302, i32 0, i32 7
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %306 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 3
  %308 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = icmp ne i32 %304, %309
  br i1 %310, label %311, label %312

311:                                              ; preds = %301
  br label %514

312:                                              ; preds = %301, %296
  %313 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %314 = load i32, i32* @pts_event_pending, align 4
  %315 = call i32 @pt_blk_status(%struct.pt_block_decoder* %313, i32 %314)
  store i32 %315, i32* %3, align 4
  br label %524

316:                                              ; preds = %33
  %317 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %318 = call i32 @pt_blk_proceed_postponed_insn(%struct.pt_block_decoder* %317)
  store i32 %318, i32* %7, align 4
  %319 = load i32, i32* %7, align 4
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %316
  %322 = load i32, i32* %7, align 4
  store i32 %322, i32* %3, align 4
  br label %524

323:                                              ; preds = %316
  %324 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %325 = load i32, i32* @pts_event_pending, align 4
  %326 = call i32 @pt_blk_status(%struct.pt_block_decoder* %324, i32 %325)
  store i32 %326, i32* %3, align 4
  br label %524

327:                                              ; preds = %33
  %328 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %329 = call i32 @pt_blk_proceed_postponed_insn(%struct.pt_block_decoder* %328)
  store i32 %329, i32* %7, align 4
  %330 = load i32, i32* %7, align 4
  %331 = icmp slt i32 %330, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %327
  %333 = load i32, i32* %7, align 4
  store i32 %333, i32* %3, align 4
  br label %524

334:                                              ; preds = %327
  %335 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %336 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %350, label %339

339:                                              ; preds = %334
  %340 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %341 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %340, i32 0, i32 7
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %344 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %343, i32 0, i32 2
  %345 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %344, i32 0, i32 2
  %346 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = icmp ne i32 %342, %347
  br i1 %348, label %349, label %350

349:                                              ; preds = %339
  br label %514

350:                                              ; preds = %339, %334
  %351 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %352 = load i32, i32* @pts_event_pending, align 4
  %353 = call i32 @pt_blk_status(%struct.pt_block_decoder* %351, i32 %352)
  store i32 %353, i32* %3, align 4
  br label %524

354:                                              ; preds = %33
  %355 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %356 = call i32 @pt_blk_proceed_postponed_insn(%struct.pt_block_decoder* %355)
  store i32 %356, i32* %7, align 4
  %357 = load i32, i32* %7, align 4
  %358 = icmp slt i32 %357, 0
  br i1 %358, label %359, label %361

359:                                              ; preds = %354
  %360 = load i32, i32* %7, align 4
  store i32 %360, i32* %3, align 4
  br label %524

361:                                              ; preds = %354
  %362 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %363 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %364 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %365 = call i32 @pt_blk_postpone_trailing_tsx(%struct.pt_block_decoder* %362, %struct.pt_block* %363, %struct.pt_event* %364)
  store i32 %365, i32* %7, align 4
  %366 = load i32, i32* %7, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %374

368:                                              ; preds = %361
  %369 = load i32, i32* %7, align 4
  %370 = icmp slt i32 %369, 0
  br i1 %370, label %371, label %373

371:                                              ; preds = %368
  %372 = load i32, i32* %7, align 4
  store i32 %372, i32* %3, align 4
  br label %524

373:                                              ; preds = %368
  br label %514

374:                                              ; preds = %361
  %375 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %376 = load i32, i32* @pts_event_pending, align 4
  %377 = call i32 @pt_blk_status(%struct.pt_block_decoder* %375, i32 %376)
  store i32 %377, i32* %3, align 4
  br label %524

378:                                              ; preds = %33
  %379 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %380 = call i32 @pt_blk_proceed_postponed_insn(%struct.pt_block_decoder* %379)
  store i32 %380, i32* %7, align 4
  %381 = load i32, i32* %7, align 4
  %382 = icmp slt i32 %381, 0
  br i1 %382, label %383, label %385

383:                                              ; preds = %378
  %384 = load i32, i32* %7, align 4
  store i32 %384, i32* %3, align 4
  br label %524

385:                                              ; preds = %378
  %386 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %387 = load i32, i32* @pts_event_pending, align 4
  %388 = call i32 @pt_blk_status(%struct.pt_block_decoder* %386, i32 %387)
  store i32 %388, i32* %3, align 4
  br label %524

389:                                              ; preds = %33
  %390 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %391 = call i32 @pt_blk_proceed_postponed_insn(%struct.pt_block_decoder* %390)
  store i32 %391, i32* %7, align 4
  %392 = load i32, i32* %7, align 4
  %393 = icmp slt i32 %392, 0
  br i1 %393, label %394, label %396

394:                                              ; preds = %389
  %395 = load i32, i32* %7, align 4
  store i32 %395, i32* %3, align 4
  br label %524

396:                                              ; preds = %389
  %397 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %398 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %417, label %401

401:                                              ; preds = %396
  %402 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %403 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %402, i32 0, i32 6
  %404 = load i32, i32* %403, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %417

406:                                              ; preds = %401
  %407 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %408 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %407, i32 0, i32 7
  %409 = load i32, i32* %408, align 4
  %410 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %411 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %410, i32 0, i32 2
  %412 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %411, i32 0, i32 1
  %413 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = icmp ne i32 %409, %414
  br i1 %415, label %416, label %417

416:                                              ; preds = %406
  br label %514

417:                                              ; preds = %406, %401, %396
  %418 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %419 = load i32, i32* @pts_event_pending, align 4
  %420 = call i32 @pt_blk_status(%struct.pt_block_decoder* %418, i32 %419)
  store i32 %420, i32* %3, align 4
  br label %524

421:                                              ; preds = %33
  %422 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %423 = call i32 @pt_blk_proceed_postponed_insn(%struct.pt_block_decoder* %422)
  store i32 %423, i32* %7, align 4
  %424 = load i32, i32* %7, align 4
  %425 = icmp slt i32 %424, 0
  br i1 %425, label %426, label %428

426:                                              ; preds = %421
  %427 = load i32, i32* %7, align 4
  store i32 %427, i32* %3, align 4
  br label %524

428:                                              ; preds = %421
  %429 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %430 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %449, label %433

433:                                              ; preds = %428
  %434 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %435 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %434, i32 0, i32 6
  %436 = load i32, i32* %435, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %449

438:                                              ; preds = %433
  %439 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %440 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %439, i32 0, i32 7
  %441 = load i32, i32* %440, align 4
  %442 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %443 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %442, i32 0, i32 2
  %444 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %443, i32 0, i32 0
  %445 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 4
  %447 = icmp ne i32 %441, %446
  br i1 %447, label %448, label %449

448:                                              ; preds = %438
  br label %514

449:                                              ; preds = %438, %433, %428
  %450 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %451 = load i32, i32* @pts_event_pending, align 4
  %452 = call i32 @pt_blk_status(%struct.pt_block_decoder* %450, i32 %451)
  store i32 %452, i32* %3, align 4
  br label %524

453:                                              ; preds = %33, %33
  %454 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %455 = call i32 @pt_blk_proceed_postponed_insn(%struct.pt_block_decoder* %454)
  store i32 %455, i32* %7, align 4
  %456 = load i32, i32* %7, align 4
  %457 = icmp slt i32 %456, 0
  br i1 %457, label %458, label %460

458:                                              ; preds = %453
  %459 = load i32, i32* %7, align 4
  store i32 %459, i32* %3, align 4
  br label %524

460:                                              ; preds = %453
  %461 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %462 = load i32, i32* @pts_event_pending, align 4
  %463 = call i32 @pt_blk_status(%struct.pt_block_decoder* %461, i32 %462)
  store i32 %463, i32* %3, align 4
  br label %524

464:                                              ; preds = %33
  %465 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %466 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %465, i32 0, i32 6
  %467 = load i32, i32* %466, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %473, label %469

469:                                              ; preds = %464
  %470 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %471 = load i32, i32* @pts_event_pending, align 4
  %472 = call i32 @pt_blk_status(%struct.pt_block_decoder* %470, i32 %471)
  store i32 %472, i32* %3, align 4
  br label %524

473:                                              ; preds = %464
  %474 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %475 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %474, i32 0, i32 5
  %476 = load i32, i32* %475, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %483

478:                                              ; preds = %473
  %479 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %480 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %479, i32 0, i32 2
  %481 = load i32, i32* %480, align 4
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %484

483:                                              ; preds = %478, %473
  br label %514

484:                                              ; preds = %478
  %485 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %486 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %485, i32 0, i32 1
  %487 = load i32, i32* %486, align 4
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %496

489:                                              ; preds = %484
  %490 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %491 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %490, i32 0, i32 4
  %492 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %493 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %492, i32 0, i32 3
  %494 = call i32 @pt_insn_is_ptwrite(i32* %491, i32* %493)
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %497, label %496

496:                                              ; preds = %489, %484
  br label %514

497:                                              ; preds = %489
  %498 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %499 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %498, i32 0, i32 2
  store i32 1, i32* %499, align 4
  %500 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %501 = load i32, i32* @pts_event_pending, align 4
  %502 = call i32 @pt_blk_status(%struct.pt_block_decoder* %500, i32 %501)
  store i32 %502, i32* %3, align 4
  br label %524

503:                                              ; preds = %33, %33, %33
  %504 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %505 = call i32 @pt_blk_proceed_postponed_insn(%struct.pt_block_decoder* %504)
  store i32 %505, i32* %7, align 4
  %506 = load i32, i32* %7, align 4
  %507 = icmp slt i32 %506, 0
  br i1 %507, label %508, label %510

508:                                              ; preds = %503
  %509 = load i32, i32* %7, align 4
  store i32 %509, i32* %3, align 4
  br label %524

510:                                              ; preds = %503
  %511 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %512 = load i32, i32* @pts_event_pending, align 4
  %513 = call i32 @pt_blk_status(%struct.pt_block_decoder* %511, i32 %512)
  store i32 %513, i32* %3, align 4
  br label %524

514:                                              ; preds = %33, %496, %483, %448, %416, %373, %349, %311, %282, %274, %250, %221, %213, %189, %166, %146, %117, %44
  %515 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %516 = call i32 @pt_blk_proceed_postponed_insn(%struct.pt_block_decoder* %515)
  store i32 %516, i32* %7, align 4
  %517 = load i32, i32* %7, align 4
  %518 = icmp slt i32 %517, 0
  br i1 %518, label %519, label %521

519:                                              ; preds = %514
  %520 = load i32, i32* %7, align 4
  store i32 %520, i32* %3, align 4
  br label %524

521:                                              ; preds = %514
  %522 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %523 = call i32 @pt_blk_status(%struct.pt_block_decoder* %522, i32 0)
  store i32 %523, i32* %3, align 4
  br label %524

524:                                              ; preds = %521, %519, %510, %508, %497, %469, %460, %458, %449, %426, %417, %394, %385, %383, %374, %371, %359, %350, %332, %323, %321, %312, %294, %283, %260, %251, %233, %222, %199, %190, %177, %168, %164, %134, %125, %123, %113, %96, %87, %85, %76, %57, %30, %28, %21, %10
  %525 = load i32, i32* %3, align 4
  ret i32 %525
}

declare dso_local i32 @pt_blk_fetch_event(%struct.pt_block_decoder*) #1

declare dso_local i32 @pt_blk_proceed_postponed_insn(%struct.pt_block_decoder*) #1

declare dso_local i32 @pt_blk_status(%struct.pt_block_decoder*, i32) #1

declare dso_local i32 @pt_insn_changes_cr3(i32*, i32*) #1

declare dso_local i32 @pt_insn_next_ip(i32*, i32*, i32*) #1

declare dso_local i32 @pt_blk_set_disable_resume_ip(%struct.pt_block_decoder*, i32*) #1

declare dso_local i32 @pt_blk_clear_postponed_insn(%struct.pt_block_decoder*) #1

declare dso_local i32 @pt_blk_handle_erratum_skd022(%struct.pt_block_decoder*, %struct.pt_event*) #1

declare dso_local i32 @pt_insn_binds_to_pip(i32*, i32*) #1

declare dso_local i32 @pt_insn_binds_to_vmcs(i32*, i32*) #1

declare dso_local i32 @pt_blk_postpone_trailing_tsx(%struct.pt_block_decoder*, %struct.pt_block*, %struct.pt_event*) #1

declare dso_local i32 @pt_insn_is_ptwrite(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
