; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_key.c_v_event_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_key.c_v_event_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64, i64, %struct.TYPE_28__*, i64 (%struct.TYPE_26__*, %struct.TYPE_28__*, i32, i32)*, i32 }
%struct.TYPE_28__ = type { i32, i32, i64, %struct.TYPE_27__ }
%struct.TYPE_25__ = type { i32*, i32, i32 }

@EC_TIMEOUT = common dso_local global i32 0, align 4
@EC_INTERRUPT = common dso_local global i32 0, align 4
@G_SCRWIN = common dso_local global i32 0, align 4
@EC_QUOTED = common dso_local global i32 0, align 4
@EC_RAW = common dso_local global i32 0, align 4
@RCV_ENDSESSION = common dso_local global i32 0, align 4
@RCV_PRESERVE = common dso_local global i32 0, align 4
@RCV_EMAIL = common dso_local global i32 0, align 4
@G_INTERRUPTED = common dso_local global i32 0, align 4
@E_CHARACTER = common dso_local global i32 0, align 4
@CH_NOMAP = common dso_local global i32 0, align 4
@EC_MAPCOMMAND = common dso_local global i32 0, align 4
@EC_MAPINPUT = common dso_local global i32 0, align 4
@MAX_BIT_SEQ = common dso_local global i32 0, align 4
@SEQ_COMMAND = common dso_local global i32 0, align 4
@SEQ_INPUT = common dso_local global i32 0, align 4
@O_TIMEOUT = common dso_local global i32 0, align 4
@K_ESCAPE = common dso_local global i64 0, align 8
@O_ESCAPETIME = common dso_local global i32 0, align 4
@O_KEYTIME = common dso_local global i32 0, align 4
@EC_MAPNODIGIT = common dso_local global i32 0, align 4
@CH_NOT_DIGIT = common dso_local global i32 0, align 4
@K_NOTUSED = common dso_local global i64 0, align 8
@O_REMAP = common dso_local global i32 0, align 4
@CH_MAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_event_get(%struct.TYPE_26__* %0, %struct.TYPE_28__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.TYPE_28__, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  store %struct.TYPE_27__* %20, %struct.TYPE_27__** %12, align 8
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %22 = icmp eq %struct.TYPE_28__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store %struct.TYPE_28__* %11, %struct.TYPE_28__** %7, align 8
  br label %24

24:                                               ; preds = %23, %4
  br label %25

25:                                               ; preds = %294, %24
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* @EC_TIMEOUT, align 4
  %32 = call i32 @LF_ISSET(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %402

35:                                               ; preds = %30, %25
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @EC_INTERRUPT, align 4
  %42 = load i32, i32* @EC_TIMEOUT, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @LF_ISSET(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %114

46:                                               ; preds = %40, %35
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %48 = load i32, i32* @G_SCRWIN, align 4
  %49 = call i64 @F_ISSET(%struct.TYPE_27__* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %53 = call i64 @sscr_input(%struct.TYPE_26__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 1, i32* %5, align 4
  br label %402

56:                                               ; preds = %51, %46
  br label %57

57:                                               ; preds = %215, %56
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 3
  %60 = load i64 (%struct.TYPE_26__*, %struct.TYPE_28__*, i32, i32)*, i64 (%struct.TYPE_26__*, %struct.TYPE_28__*, i32, i32)** %59, align 8
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %63 = load i32, i32* @EC_INTERRUPT, align 4
  %64 = load i32, i32* @EC_QUOTED, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @EC_RAW, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @LF_ISSET(i32 %67)
  %69 = load i32, i32* %8, align 4
  %70 = call i64 %60(%struct.TYPE_26__* %61, %struct.TYPE_28__* %62, i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %57
  store i32 1, i32* %5, align 4
  br label %402

73:                                               ; preds = %57
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  switch i32 %76, label %105 [
    i32 132, label %77
    i32 130, label %77
    i32 129, label %77
    i32 128, label %93
    i32 131, label %94
  ]

77:                                               ; preds = %73, %73, %73
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %79 = load i32, i32* @RCV_ENDSESSION, align 4
  %80 = load i32, i32* @RCV_PRESERVE, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 129
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %89

87:                                               ; preds = %77
  %88 = load i32, i32* @RCV_EMAIL, align 4
  br label %89

89:                                               ; preds = %87, %86
  %90 = phi i32 [ 0, %86 ], [ %88, %87 ]
  %91 = or i32 %81, %90
  %92 = call i32 @v_sync(%struct.TYPE_26__* %78, i32 %91)
  store i32 1, i32* %5, align 4
  br label %402

93:                                               ; preds = %73
  store i32 1, i32* %16, align 4
  br label %113

94:                                               ; preds = %73
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %96, align 8
  %98 = load i32, i32* @G_INTERRUPTED, align 4
  %99 = call i32 @F_SET(%struct.TYPE_27__* %97, i32 %98)
  %100 = load i32, i32* @EC_INTERRUPT, align 4
  %101 = call i32 @LF_ISSET(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  store i32 0, i32* %5, align 4
  br label %402

104:                                              ; preds = %94
  br label %106

105:                                              ; preds = %73
  br label %106

106:                                              ; preds = %105, %104
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %109 = call i32 @v_event_append(%struct.TYPE_26__* %107, %struct.TYPE_28__* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i32 1, i32* %5, align 4
  br label %402

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112, %93
  br label %114

114:                                              ; preds = %113, %40
  %115 = load i32, i32* @EC_INTERRUPT, align 4
  %116 = load i32, i32* @EC_TIMEOUT, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @LF_ISSET(i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  store i32 0, i32* %5, align 4
  br label %402

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %386, %121
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %124, align 8
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %125, i64 %128
  store %struct.TYPE_28__* %129, %struct.TYPE_28__** %10, align 8
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @E_CHARACTER, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %122
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %138 = bitcast %struct.TYPE_28__* %136 to i8*
  %139 = bitcast %struct.TYPE_28__* %137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %138, i8* align 8 %139, i64 56, i1 false)
  %140 = call i32 @QREM(i32 1)
  store i32 0, i32* %5, align 4
  br label %402

141:                                              ; preds = %122
  %142 = load i32, i32* %16, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %173, label %144

144:                                              ; preds = %141
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %145, i32 0, i32 3
  %147 = load i32, i32* @CH_NOMAP, align 4
  %148 = call i64 @F_ISSET(%struct.TYPE_27__* %146, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %173, label %150

150:                                              ; preds = %144
  %151 = load i32, i32* @EC_MAPCOMMAND, align 4
  %152 = load i32, i32* @EC_MAPINPUT, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @LF_ISSET(i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %173

156:                                              ; preds = %150
  %157 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @MAX_BIT_SEQ, align 4
  %161 = xor i32 %160, -1
  %162 = and i32 %159, %161
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %156
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @bit_test(i32 %167, i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %164, %150, %144, %141
  br label %220

174:                                              ; preds = %164, %156
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* @EC_MAPCOMMAND, align 4
  %181 = call i32 @LF_ISSET(i32 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %174
  %184 = load i32, i32* @SEQ_COMMAND, align 4
  br label %187

185:                                              ; preds = %174
  %186 = load i32, i32* @SEQ_INPUT, align 4
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi i32 [ %184, %183 ], [ %186, %185 ]
  %189 = call %struct.TYPE_25__* @seq_find(%struct.TYPE_26__* %175, i32* null, %struct.TYPE_28__* %176, i32* null, i64 %179, i32 %188, i32* %15)
  store %struct.TYPE_25__* %189, %struct.TYPE_25__** %13, align 8
  %190 = load i32, i32* %15, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %216

192:                                              ; preds = %187
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %194 = load i32, i32* @O_TIMEOUT, align 4
  %195 = call i64 @O_ISSET(%struct.TYPE_26__* %193, i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %214

197:                                              ; preds = %192
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @K_ESCAPE, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %197
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %205 = load i32, i32* @O_ESCAPETIME, align 4
  %206 = call i32 @O_VAL(%struct.TYPE_26__* %204, i32 %205)
  br label %211

207:                                              ; preds = %197
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %209 = load i32, i32* @O_KEYTIME, align 4
  %210 = call i32 @O_VAL(%struct.TYPE_26__* %208, i32 %209)
  br label %211

211:                                              ; preds = %207, %203
  %212 = phi i32 [ %206, %203 ], [ %210, %207 ]
  %213 = mul nsw i32 %212, 100
  store i32 %213, i32* %8, align 4
  br label %215

214:                                              ; preds = %192
  store i32 0, i32* %8, align 4
  br label %215

215:                                              ; preds = %214, %211
  br label %57

216:                                              ; preds = %187
  %217 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %218 = icmp eq %struct.TYPE_25__* %217, null
  br i1 %218, label %219, label %237

219:                                              ; preds = %216
  br label %220

220:                                              ; preds = %401, %366, %219, %173
  %221 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @ISDIGIT(i32 %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %231, label %226

226:                                              ; preds = %220
  %227 = load i32, i32* @EC_MAPNODIGIT, align 4
  %228 = call i32 @LF_ISSET(i32 %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %226
  br label %255

231:                                              ; preds = %226, %220
  %232 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %233 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %234 = bitcast %struct.TYPE_28__* %232 to i8*
  %235 = bitcast %struct.TYPE_28__* %233 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %234, i8* align 8 %235, i64 56, i1 false)
  %236 = call i32 @QREM(i32 1)
  store i32 0, i32* %5, align 4
  br label %402

237:                                              ; preds = %216
  %238 = load i32, i32* @EC_MAPNODIGIT, align 4
  %239 = call i32 @LF_ISSET(i32 %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %268

241:                                              ; preds = %237
  %242 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %243 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = icmp ne i32* %244, null
  br i1 %245, label %246, label %268

246:                                              ; preds = %241
  %247 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %248 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 0
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @ISDIGIT(i32 %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %268, label %254

254:                                              ; preds = %246
  br label %255

255:                                              ; preds = %254, %230
  %256 = load i32, i32* @CH_NOT_DIGIT, align 4
  %257 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %257, i32 0, i32 1
  store i32 %256, i32* %258, align 4
  %259 = load i64, i64* @K_NOTUSED, align 8
  %260 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %260, i32 0, i32 2
  store i64 %259, i64* %261, align 8
  %262 = load i32, i32* @E_CHARACTER, align 4
  %263 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %263, i32 0, i32 0
  store i32 %262, i32* %264, align 8
  %265 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %265, i32 0, i32 3
  %267 = call i32 @F_INIT(%struct.TYPE_27__* %266, i32 0)
  store i32 0, i32* %5, align 4
  br label %402

268:                                              ; preds = %246, %241, %237
  %269 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %270 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %269, i32 0, i32 0
  %271 = load i32*, i32** %270, align 8
  %272 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %273 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %272, i32 0, i32 2
  %274 = load %struct.TYPE_28__*, %struct.TYPE_28__** %273, align 8
  %275 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %276 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %274, i64 %277
  %279 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %280 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @e_memcmp(i32* %271, %struct.TYPE_28__* %278, i32 %281)
  %283 = icmp ne i32 %282, 0
  %284 = xor i1 %283, true
  %285 = zext i1 %284 to i32
  store i32 %285, i32* %14, align 4
  %286 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %287 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @QREM(i32 %288)
  %290 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %291 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %290, i32 0, i32 0
  %292 = load i32*, i32** %291, align 8
  %293 = icmp eq i32* %292, null
  br i1 %293, label %294, label %295

294:                                              ; preds = %268
  br label %25

295:                                              ; preds = %268
  %296 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %297 = load i32, i32* @O_REMAP, align 4
  %298 = call i64 @O_ISSET(%struct.TYPE_26__* %296, i32 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %387

300:                                              ; preds = %295
  %301 = load i32, i32* %17, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %17, align 4
  %303 = icmp eq i32 %302, 1
  br i1 %303, label %308, label %304

304:                                              ; preds = %300
  %305 = load i32, i32* %17, align 4
  %306 = srem i32 %305, 10
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %328

308:                                              ; preds = %304, %300
  %309 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %310 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %309, i32 0, i32 3
  %311 = load i64 (%struct.TYPE_26__*, %struct.TYPE_28__*, i32, i32)*, i64 (%struct.TYPE_26__*, %struct.TYPE_28__*, i32, i32)** %310, align 8
  %312 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %313 = load i32, i32* @EC_INTERRUPT, align 4
  %314 = call i64 %311(%struct.TYPE_26__* %312, %struct.TYPE_28__* %11, i32 %313, i32 0)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %320, label %316

316:                                              ; preds = %308
  %317 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %11, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = icmp eq i32 %318, 131
  br i1 %319, label %320, label %328

320:                                              ; preds = %316, %308
  %321 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %321, i32 0, i32 0
  %323 = load %struct.TYPE_27__*, %struct.TYPE_27__** %322, align 8
  %324 = load i32, i32* @G_INTERRUPTED, align 4
  %325 = call i32 @F_SET(%struct.TYPE_27__* %323, i32 %324)
  %326 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %326, i32 0, i32 0
  store i32 131, i32* %327, align 8
  store i32 0, i32* %5, align 4
  br label %402

328:                                              ; preds = %316, %304
  %329 = load i32, i32* %14, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %374

331:                                              ; preds = %328
  %332 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %333 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %334 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %333, i32 0, i32 0
  %335 = load i32*, i32** %334, align 8
  %336 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %337 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 8
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %335, i64 %339
  %341 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %342 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %345 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 8
  %347 = sub nsw i32 %343, %346
  %348 = load i32, i32* @CH_MAPPED, align 4
  %349 = call i64 @v_event_push(%struct.TYPE_26__* %332, i32* null, i32* %340, i32 %347, i32 %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %331
  store i32 1, i32* %5, align 4
  br label %402

352:                                              ; preds = %331
  %353 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %354 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %355 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %354, i32 0, i32 0
  %356 = load i32*, i32** %355, align 8
  %357 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %358 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 8
  %360 = load i32, i32* @CH_NOMAP, align 4
  %361 = load i32, i32* @CH_MAPPED, align 4
  %362 = or i32 %360, %361
  %363 = call i64 @v_event_push(%struct.TYPE_26__* %353, i32* null, i32* %356, i32 %359, i32 %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %352
  store i32 1, i32* %5, align 4
  br label %402

366:                                              ; preds = %352
  %367 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %368 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %367, i32 0, i32 2
  %369 = load %struct.TYPE_28__*, %struct.TYPE_28__** %368, align 8
  %370 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %371 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %370, i32 0, i32 1
  %372 = load i64, i64* %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %369, i64 %372
  store %struct.TYPE_28__* %373, %struct.TYPE_28__** %10, align 8
  br label %220

374:                                              ; preds = %328
  %375 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %376 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %377 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %376, i32 0, i32 0
  %378 = load i32*, i32** %377, align 8
  %379 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %380 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* @CH_MAPPED, align 4
  %383 = call i64 @v_event_push(%struct.TYPE_26__* %375, i32* null, i32* %378, i32 %381, i32 %382)
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %386

385:                                              ; preds = %374
  store i32 1, i32* %5, align 4
  br label %402

386:                                              ; preds = %374
  br label %122

387:                                              ; preds = %295
  %388 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %389 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %390 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %389, i32 0, i32 0
  %391 = load i32*, i32** %390, align 8
  %392 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %393 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %392, i32 0, i32 2
  %394 = load i32, i32* %393, align 4
  %395 = load i32, i32* @CH_MAPPED, align 4
  %396 = load i32, i32* @CH_NOMAP, align 4
  %397 = or i32 %395, %396
  %398 = call i64 @v_event_push(%struct.TYPE_26__* %388, i32* null, i32* %391, i32 %394, i32 %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %401

400:                                              ; preds = %387
  store i32 1, i32* %5, align 4
  br label %402

401:                                              ; preds = %387
  br label %220

402:                                              ; preds = %400, %385, %365, %351, %320, %255, %231, %135, %120, %111, %103, %89, %72, %55, %34
  %403 = load i32, i32* %5, align 4
  ret i32 %403
}

declare dso_local i32 @LF_ISSET(i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_27__*, i32) #1

declare dso_local i64 @sscr_input(%struct.TYPE_26__*) #1

declare dso_local i32 @v_sync(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @F_SET(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @v_event_append(%struct.TYPE_26__*, %struct.TYPE_28__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @QREM(i32) #1

declare dso_local i32 @bit_test(i32, i32) #1

declare dso_local %struct.TYPE_25__* @seq_find(%struct.TYPE_26__*, i32*, %struct.TYPE_28__*, i32*, i64, i32, i32*) #1

declare dso_local i64 @O_ISSET(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @O_VAL(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @ISDIGIT(i32) #1

declare dso_local i32 @F_INIT(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @e_memcmp(i32*, %struct.TYPE_28__*, i32) #1

declare dso_local i64 @v_event_push(%struct.TYPE_26__*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
