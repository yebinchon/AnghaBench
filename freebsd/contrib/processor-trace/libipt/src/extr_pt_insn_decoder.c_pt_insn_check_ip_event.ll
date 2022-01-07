; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_check_ip_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_check_ip_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_insn_decoder = type { i32, i32, %struct.TYPE_17__, %struct.pt_event }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.pt_event = type { i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.pt_insn = type { i32 }
%struct.pt_insn_ext = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pts_event_pending = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_insn_decoder*, %struct.pt_insn*, %struct.pt_insn_ext*)* @pt_insn_check_ip_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_insn_check_ip_event(%struct.pt_insn_decoder* %0, %struct.pt_insn* %1, %struct.pt_insn_ext* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_insn_decoder*, align 8
  %6 = alloca %struct.pt_insn*, align 8
  %7 = alloca %struct.pt_insn_ext*, align 8
  %8 = alloca %struct.pt_event*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pt_insn_decoder* %0, %struct.pt_insn_decoder** %5, align 8
  store %struct.pt_insn* %1, %struct.pt_insn** %6, align 8
  store %struct.pt_insn_ext* %2, %struct.pt_insn_ext** %7, align 8
  %11 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %12 = icmp ne %struct.pt_insn_decoder* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @pte_internal, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %267

16:                                               ; preds = %3
  %17 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %18 = call i32 @event_pending(%struct.pt_insn_decoder* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %267

26:                                               ; preds = %21
  %27 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %28 = call i32 @pt_insn_status(%struct.pt_insn_decoder* %27, i32 0)
  store i32 %28, i32* %4, align 4
  br label %267

29:                                               ; preds = %16
  %30 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %31 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %30, i32 0, i32 3
  store %struct.pt_event* %31, %struct.pt_event** %8, align 8
  %32 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %33 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %264 [
    i32 142, label %35
    i32 141, label %36
    i32 146, label %40
    i32 129, label %75
    i32 147, label %93
    i32 136, label %108
    i32 140, label %112
    i32 135, label %132
    i32 145, label %142
    i32 128, label %162
    i32 144, label %172
    i32 131, label %192
    i32 139, label %196
    i32 137, label %221
    i32 133, label %246
    i32 132, label %246
    i32 134, label %250
    i32 130, label %260
    i32 143, label %260
    i32 138, label %260
  ]

35:                                               ; preds = %29
  br label %264

36:                                               ; preds = %29
  %37 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %38 = load i32, i32* @pts_event_pending, align 4
  %39 = call i32 @pt_insn_status(%struct.pt_insn_decoder* %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %267

40:                                               ; preds = %29
  %41 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %42 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %47 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %264

51:                                               ; preds = %40
  %52 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %53 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %51
  %60 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %61 = call i32 @handle_erratum_skd022(%struct.pt_insn_decoder* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %267

69:                                               ; preds = %64
  br label %264

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %51
  %72 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %73 = load i32, i32* @pts_event_pending, align 4
  %74 = call i32 @pt_insn_status(%struct.pt_insn_decoder* %72, i32 %73)
  store i32 %74, i32* %4, align 4
  br label %267

75:                                               ; preds = %29
  %76 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %77 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %78 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %7, align 8
  %79 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %80 = call i32 @pt_insn_postpone_tsx(%struct.pt_insn_decoder* %76, %struct.pt_insn* %77, %struct.pt_insn_ext* %78, %struct.pt_event* %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %4, align 4
  br label %267

88:                                               ; preds = %83
  br label %264

89:                                               ; preds = %75
  %90 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %91 = load i32, i32* @pts_event_pending, align 4
  %92 = call i32 @pt_insn_status(%struct.pt_insn_decoder* %90, i32 %91)
  store i32 %92, i32* %4, align 4
  br label %267

93:                                               ; preds = %29
  %94 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %95 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %100 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %98, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  br label %264

104:                                              ; preds = %93
  %105 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %106 = load i32, i32* @pts_event_pending, align 4
  %107 = call i32 @pt_insn_status(%struct.pt_insn_decoder* %105, i32 %106)
  store i32 %107, i32* %4, align 4
  br label %267

108:                                              ; preds = %29
  %109 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %110 = load i32, i32* @pts_event_pending, align 4
  %111 = call i32 @pt_insn_status(%struct.pt_insn_decoder* %109, i32 %110)
  store i32 %111, i32* %4, align 4
  br label %267

112:                                              ; preds = %29
  %113 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %114 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %128, label %117

117:                                              ; preds = %112
  %118 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %119 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %124 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %122, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %117
  br label %264

128:                                              ; preds = %117, %112
  %129 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %130 = load i32, i32* @pts_event_pending, align 4
  %131 = call i32 @pt_insn_status(%struct.pt_insn_decoder* %129, i32 %130)
  store i32 %131, i32* %4, align 4
  br label %267

132:                                              ; preds = %29
  %133 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %134 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %264

138:                                              ; preds = %132
  %139 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %140 = load i32, i32* @pts_event_pending, align 4
  %141 = call i32 @pt_insn_status(%struct.pt_insn_decoder* %139, i32 %140)
  store i32 %141, i32* %4, align 4
  br label %267

142:                                              ; preds = %29
  %143 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %144 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %158, label %147

147:                                              ; preds = %142
  %148 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %149 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %154 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %152, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %147
  br label %264

158:                                              ; preds = %147, %142
  %159 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %160 = load i32, i32* @pts_event_pending, align 4
  %161 = call i32 @pt_insn_status(%struct.pt_insn_decoder* %159, i32 %160)
  store i32 %161, i32* %4, align 4
  br label %267

162:                                              ; preds = %29
  %163 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %164 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %264

168:                                              ; preds = %162
  %169 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %170 = load i32, i32* @pts_event_pending, align 4
  %171 = call i32 @pt_insn_status(%struct.pt_insn_decoder* %169, i32 %170)
  store i32 %171, i32* %4, align 4
  br label %267

172:                                              ; preds = %29
  %173 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %174 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %188, label %177

177:                                              ; preds = %172
  %178 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %179 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %184 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %182, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %177
  br label %264

188:                                              ; preds = %177, %172
  %189 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %190 = load i32, i32* @pts_event_pending, align 4
  %191 = call i32 @pt_insn_status(%struct.pt_insn_decoder* %189, i32 %190)
  store i32 %191, i32* %4, align 4
  br label %267

192:                                              ; preds = %29
  %193 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %194 = load i32, i32* @pts_event_pending, align 4
  %195 = call i32 @pt_insn_status(%struct.pt_insn_decoder* %193, i32 %194)
  store i32 %195, i32* %4, align 4
  br label %267

196:                                              ; preds = %29
  %197 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %198 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %217, label %201

201:                                              ; preds = %196
  %202 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %203 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %217

206:                                              ; preds = %201
  %207 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %208 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %211 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %209, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %206
  br label %264

217:                                              ; preds = %206, %201, %196
  %218 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %219 = load i32, i32* @pts_event_pending, align 4
  %220 = call i32 @pt_insn_status(%struct.pt_insn_decoder* %218, i32 %219)
  store i32 %220, i32* %4, align 4
  br label %267

221:                                              ; preds = %29
  %222 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %223 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %242, label %226

226:                                              ; preds = %221
  %227 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %228 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %242

231:                                              ; preds = %226
  %232 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %233 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %236 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %234, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %231
  br label %264

242:                                              ; preds = %231, %226, %221
  %243 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %244 = load i32, i32* @pts_event_pending, align 4
  %245 = call i32 @pt_insn_status(%struct.pt_insn_decoder* %243, i32 %244)
  store i32 %245, i32* %4, align 4
  br label %267

246:                                              ; preds = %29, %29
  %247 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %248 = load i32, i32* @pts_event_pending, align 4
  %249 = call i32 @pt_insn_status(%struct.pt_insn_decoder* %247, i32 %248)
  store i32 %249, i32* %4, align 4
  br label %267

250:                                              ; preds = %29
  %251 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %252 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %250
  br label %264

256:                                              ; preds = %250
  %257 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %258 = load i32, i32* @pts_event_pending, align 4
  %259 = call i32 @pt_insn_status(%struct.pt_insn_decoder* %257, i32 %258)
  store i32 %259, i32* %4, align 4
  br label %267

260:                                              ; preds = %29, %29, %29
  %261 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %262 = load i32, i32* @pts_event_pending, align 4
  %263 = call i32 @pt_insn_status(%struct.pt_insn_decoder* %261, i32 %262)
  store i32 %263, i32* %4, align 4
  br label %267

264:                                              ; preds = %29, %255, %241, %216, %187, %167, %157, %137, %127, %103, %88, %69, %50, %35
  %265 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %266 = call i32 @pt_insn_status(%struct.pt_insn_decoder* %265, i32 0)
  store i32 %266, i32* %4, align 4
  br label %267

267:                                              ; preds = %264, %260, %256, %246, %242, %217, %192, %188, %168, %158, %138, %128, %108, %104, %89, %86, %71, %67, %36, %26, %24, %13
  %268 = load i32, i32* %4, align 4
  ret i32 %268
}

declare dso_local i32 @event_pending(%struct.pt_insn_decoder*) #1

declare dso_local i32 @pt_insn_status(%struct.pt_insn_decoder*, i32) #1

declare dso_local i32 @handle_erratum_skd022(%struct.pt_insn_decoder*) #1

declare dso_local i32 @pt_insn_postpone_tsx(%struct.pt_insn_decoder*, %struct.pt_insn*, %struct.pt_insn_ext*, %struct.pt_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
