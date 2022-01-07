; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_difo_chunksize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_difo_chunksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64*, i64, %struct.TYPE_13__*, i32* }
%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i64 }

@DIF_DTR_NREGS = common dso_local global i64 0, align 8
@DIFV_SCOPE_THREAD = common dso_local global i64 0, align 8
@DIFV_SCOPE_GLOBAL = common dso_local global i64 0, align 8
@DIF_TYPE_STRING = common dso_local global i64 0, align 8
@dtrace_strsize_default = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_11__*)* @dtrace_difo_chunksize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_difo_chunksize(%struct.TYPE_14__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_12__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  store i64 0, i64* %5, align 8
  %25 = load i64, i64* @DIF_DTR_NREGS, align 8
  %26 = add i64 %25, 2
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %6, align 8
  %28 = alloca %struct.TYPE_12__, i64 %26, align 16
  store i64 %26, i64* %7, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %8, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %9, align 8
  br label %32

32:                                               ; preds = %250, %2
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %253

38:                                               ; preds = %32
  %39 = load i32*, i32** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = call i32 @DIF_INSTR_OP(i32 %43)
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %17, align 8
  %46 = load i32, i32* %16, align 4
  %47 = call i64 @DIF_INSTR_RD(i32 %46)
  store i64 %47, i64* %18, align 8
  %48 = load i32, i32* %16, align 4
  %49 = call i64 @DIF_INSTR_R1(i32 %48)
  store i64 %49, i64* %19, align 8
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %22, align 8
  %50 = load i64, i64* %17, align 8
  switch i64 %50, label %149 [
    i64 131, label %51
    i64 128, label %60
    i64 130, label %70
    i64 129, label %70
    i64 133, label %94
    i64 132, label %131
    i64 135, label %141
    i64 134, label %142
  ]

51:                                               ; preds = %38
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %16, align 4
  %56 = call i64 @DIF_INSTR_INTEGER(i32 %55)
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %5, align 8
  %59 = load i64, i64* %18, align 8
  store i64 %59, i64* %10, align 8
  br label %250

60:                                               ; preds = %38
  %61 = load i64, i64* @DIF_DTR_NREGS, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i64 %61
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %22, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i64 1
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  store i64 2, i64* %20, align 8
  %69 = load i64, i64* @DIFV_SCOPE_THREAD, align 8
  store i64 %69, i64* %21, align 8
  br label %149

70:                                               ; preds = %38, %38
  %71 = load i64, i64* %11, align 8
  store i64 %71, i64* %20, align 8
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @DIF_INSTR_OP(i32 %72)
  %74 = icmp eq i32 %73, 129
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %77 = load i64, i64* %20, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %20, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i64 %77
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %75, %70
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %83 = load i64, i64* %20, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %20, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i64 %83
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  %87 = load i64, i64* %17, align 8
  %88 = icmp eq i64 %87, 129
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i64, i64* @DIFV_SCOPE_THREAD, align 8
  store i64 %90, i64* %21, align 8
  br label %93

91:                                               ; preds = %81
  %92 = load i64, i64* @DIFV_SCOPE_GLOBAL, align 8
  store i64 %92, i64* %21, align 8
  br label %93

93:                                               ; preds = %91, %89
  br label %149

94:                                               ; preds = %38
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* @DIF_DTR_NREGS, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 1, i32* %23, align 4
  br label %254

99:                                               ; preds = %94
  %100 = load i64, i64* %10, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i64, i64* %5, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %102, %99
  %106 = load i64, i64* %19, align 8
  %107 = load i64, i64* @DIF_TYPE_STRING, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load i64, i64* @dtrace_strsize_default, align 8
  %111 = load i64, i64* %11, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i64 %111
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  store i64 %110, i64* %114, align 8
  br label %130

115:                                              ; preds = %105, %102
  %116 = load i64, i64* %10, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i32 1, i32* %23, align 4
  br label %254

119:                                              ; preds = %115
  %120 = load i64, i64* %5, align 8
  %121 = load i64, i64* @LONG_MAX, align 8
  %122 = icmp sgt i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  store i32 1, i32* %23, align 4
  br label %254

124:                                              ; preds = %119
  %125 = load i64, i64* %5, align 8
  %126 = load i64, i64* %11, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i64 %126
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  store i64 %125, i64* %129, align 8
  br label %130

130:                                              ; preds = %124, %109
  br label %149

131:                                              ; preds = %38
  %132 = load i64, i64* %11, align 8
  %133 = load i64, i64* @DIF_DTR_NREGS, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i32 1, i32* %23, align 4
  br label %254

136:                                              ; preds = %131
  %137 = load i64, i64* %11, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i64 %137
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  store i64 0, i64* %140, align 8
  br label %149

141:                                              ; preds = %38
  store i64 0, i64* %11, align 8
  br label %149

142:                                              ; preds = %38
  %143 = load i64, i64* %11, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i64, i64* %11, align 8
  %147 = add i64 %146, -1
  store i64 %147, i64* %11, align 8
  br label %148

148:                                              ; preds = %145, %142
  br label %149

149:                                              ; preds = %38, %148, %141, %136, %130, %93, %60
  store i64 0, i64* %5, align 8
  store i64 0, i64* %10, align 8
  %150 = load i64, i64* %20, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  br label %250

153:                                              ; preds = %149
  store i64 0, i64* %13, align 8
  store i64 0, i64* %15, align 8
  br label %154

154:                                              ; preds = %167, %153
  %155 = load i64, i64* %15, align 8
  %156 = load i64, i64* %20, align 8
  %157 = icmp ult i64 %155, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %154
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %160 = load i64, i64* %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i64 @P2ROUNDUP(i64 %163, i32 8)
  %165 = load i64, i64* %13, align 8
  %166 = add i64 %165, %164
  store i64 %166, i64* %13, align 8
  br label %167

167:                                              ; preds = %158
  %168 = load i64, i64* %15, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %15, align 8
  br label %154

170:                                              ; preds = %154
  store i64 4, i64* %12, align 8
  %171 = load i64, i64* %20, align 8
  %172 = sub i64 %171, 1
  %173 = mul i64 8, %172
  %174 = load i64, i64* %12, align 8
  %175 = add i64 %174, %173
  store i64 %175, i64* %12, align 8
  %176 = load i64, i64* %13, align 8
  %177 = load i64, i64* %12, align 8
  %178 = add i64 %177, %176
  store i64 %178, i64* %12, align 8
  %179 = load i32, i32* %16, align 4
  %180 = call i64 @DIF_INSTR_VAR(i32 %179)
  store i64 %180, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %181

181:                                              ; preds = %212, %170
  %182 = load i64, i64* %15, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp ult i64 %182, %185
  br i1 %186, label %187, label %215

187:                                              ; preds = %181
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 3
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %189, align 8
  %191 = load i64, i64* %15, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i64 %191
  store %struct.TYPE_13__* %192, %struct.TYPE_13__** %24, align 8
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* %14, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %211

198:                                              ; preds = %187
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* %21, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %211

204:                                              ; preds = %198
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* %12, align 8
  %210 = add i64 %209, %208
  store i64 %210, i64* %12, align 8
  br label %215

211:                                              ; preds = %198, %187
  br label %212

212:                                              ; preds = %211
  %213 = load i64, i64* %15, align 8
  %214 = add i64 %213, 1
  store i64 %214, i64* %15, align 8
  br label %181

215:                                              ; preds = %204, %181
  %216 = load i64, i64* %15, align 8
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = icmp eq i64 %216, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %215
  store i32 1, i32* %23, align 4
  br label %254

222:                                              ; preds = %215
  %223 = load i64, i64* %12, align 8
  %224 = call i64 @P2ROUNDUP(i64 %223, i32 8)
  store i64 %224, i64* %12, align 8
  %225 = load i64, i64* %12, align 8
  %226 = load i64, i64* @LONG_MAX, align 8
  %227 = icmp ugt i64 %225, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %222
  store i32 1, i32* %23, align 4
  br label %254

229:                                              ; preds = %222
  %230 = load i64, i64* %12, align 8
  %231 = load i64, i64* %13, align 8
  %232 = icmp ult i64 %230, %231
  br i1 %232, label %236, label %233

233:                                              ; preds = %229
  %234 = load i64, i64* %12, align 8
  %235 = icmp ult i64 %234, 4
  br i1 %235, label %236, label %237

236:                                              ; preds = %233, %229
  store i32 1, i32* %23, align 4
  br label %254

237:                                              ; preds = %233
  %238 = load i64, i64* %12, align 8
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp ugt i64 %238, %242
  br i1 %243, label %244, label %249

244:                                              ; preds = %237
  %245 = load i64, i64* %12, align 8
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 0
  store i64 %245, i64* %248, align 8
  br label %249

249:                                              ; preds = %244, %237
  br label %250

250:                                              ; preds = %249, %152, %51
  %251 = load i64, i64* %9, align 8
  %252 = add i64 %251, 1
  store i64 %252, i64* %9, align 8
  br label %32

253:                                              ; preds = %32
  store i32 0, i32* %23, align 4
  br label %254

254:                                              ; preds = %253, %236, %228, %221, %135, %123, %118, %98
  %255 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %255)
  %256 = load i32, i32* %23, align 4
  switch i32 %256, label %258 [
    i32 0, label %257
    i32 1, label %257
  ]

257:                                              ; preds = %254, %254
  ret void

258:                                              ; preds = %254
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DIF_INSTR_OP(i32) #2

declare dso_local i64 @DIF_INSTR_RD(i32) #2

declare dso_local i64 @DIF_INSTR_R1(i32) #2

declare dso_local i64 @DIF_INSTR_INTEGER(i32) #2

declare dso_local i64 @P2ROUNDUP(i64, i32) #2

declare dso_local i64 @DIF_INSTR_VAR(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
