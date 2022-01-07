; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/intel/dtrace/extr_fasttrap_isa.c_fasttrap_tracepoint_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/intel/dtrace/extr_fasttrap_isa.c_fasttrap_tracepoint_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i64, i32, i32, i32*, i32, i8*, i8*, i8*, i32 }

@FASTTRAP_MAX_INSTR_SIZE = common dso_local global i32 0, align 4
@PAGESIZE = common dso_local global i64 0, align 8
@PAGEOFFSET = common dso_local global i64 0, align 8
@FASTTRAP_SEG_NONE = common dso_local global i32 0, align 4
@DATAMODEL_LP64 = common dso_local global i32 0, align 4
@FASTTRAP_T_COMMON = common dso_local global i64 0, align 8
@FASTTRAP_2_BYTE_OP = common dso_local global i32 0, align 4
@FASTTRAP_T_JCC = common dso_local global i8* null, align 8
@FASTTRAP_GROUP5_OP = common dso_local global i32 0, align 4
@FASTTRAP_T_CALL = common dso_local global i8* null, align 8
@FASTTRAP_T_JMP = common dso_local global i8* null, align 8
@FASTTRAP_NOREG = common dso_local global i8* null, align 8
@regmap = common dso_local global i8** null, align 8
@REG_RIP = common dso_local global i8* null, align 8
@FASTTRAP_T_RET = common dso_local global i64 0, align 8
@FASTTRAP_T_RET16 = common dso_local global i64 0, align 8
@FASTTRAP_T_LOOP = common dso_local global i64 0, align 8
@FASTTRAP_T_JCXZ = common dso_local global i64 0, align 8
@FASTTRAP_T_PUSHL_EBP = common dso_local global i64 0, align 8
@FASTTRAP_T_NOP = common dso_local global i64 0, align 8
@FASTTRAP_INSTR = common dso_local global i32 0, align 4
@FASTTRAP_RIP_1 = common dso_local global i32 0, align 4
@FASTTRAP_RIP_X = common dso_local global i32 0, align 4
@FASTTRAP_RIP_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fasttrap_tracepoint_init(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %32 = load i32, i32* @FASTTRAP_MAX_INSTR_SIZE, align 4
  %33 = add nsw i32 %32, 10
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %10, align 8
  %36 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %11, align 8
  %37 = load i32, i32* @FASTTRAP_MAX_INSTR_SIZE, align 4
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @PAGESIZE, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @PAGEOFFSET, align 8
  %43 = and i64 %41, %42
  %44 = sub i64 %40, %43
  %45 = call i64 @MIN(i64 %39, i64 %44)
  store i64 %45, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %18, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds i32, i32* %36, i64 0
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i64 @uread(%struct.TYPE_6__* %46, i32* %47, i64 %48, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %688

53:                                               ; preds = %4
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %13, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %53
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = load i64, i64* %13, align 8
  %60 = getelementptr inbounds i32, i32* %36, i64 %59
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %13, align 8
  %63 = sub i64 %61, %62
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %13, align 8
  %66 = add i64 %64, %65
  %67 = call i64 @uread(%struct.TYPE_6__* %58, i32* %60, i64 %63, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %57
  %70 = load i64, i64* %13, align 8
  %71 = getelementptr inbounds i32, i32* %36, i64 %70
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* %13, align 8
  %74 = sub i64 %72, %73
  %75 = call i32 @bzero(i32* %71, i64 %74)
  %76 = load i64, i64* %13, align 8
  store i64 %76, i64* %12, align 8
  br label %77

77:                                               ; preds = %69, %57, %53
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dtrace_instr_size_isa(i32* %36, i32 %80, i32* %15)
  store i32 %81, i32* %16, align 4
  %82 = icmp sle i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %688

84:                                               ; preds = %77
  %85 = load i32, i32* %15, align 4
  %86 = icmp sle i32 -1, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %16, align 4
  %90 = icmp slt i32 %88, %89
  br label %91

91:                                               ; preds = %87, %84
  %92 = phi i1 [ false, %84 ], [ %90, %87 ]
  %93 = zext i1 %92 to i32
  %94 = call i32 @ASSERT(i32 %93)
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %12, align 8
  %98 = icmp ugt i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %688

100:                                              ; preds = %91
  %101 = load i32, i32* %16, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* @FASTTRAP_SEG_NONE, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %143, %100
  store i32 0, i32* %17, align 4
  %108 = load i64, i64* %14, align 8
  %109 = getelementptr inbounds i32, i32* %36, i64 %108
  %110 = load i32, i32* %109, align 4
  switch i32 %110, label %146 [
    i32 131, label %111
    i32 136, label %114
    i32 137, label %117
    i32 138, label %120
    i32 139, label %123
    i32 140, label %126
    i32 134, label %129
    i32 141, label %129
    i32 135, label %129
    i32 133, label %129
    i32 132, label %129
  ]

111:                                              ; preds = %107
  %112 = load i32, i32* %17, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %17, align 4
  br label %114

114:                                              ; preds = %107, %111
  %115 = load i32, i32* %17, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %17, align 4
  br label %117

117:                                              ; preds = %107, %114
  %118 = load i32, i32* %17, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %17, align 4
  br label %120

120:                                              ; preds = %107, %117
  %121 = load i32, i32* %17, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %17, align 4
  br label %123

123:                                              ; preds = %107, %120
  %124 = load i32, i32* %17, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %17, align 4
  br label %126

126:                                              ; preds = %107, %123
  %127 = load i32, i32* %17, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %17, align 4
  br label %129

129:                                              ; preds = %107, %107, %107, %107, %107, %126
  %130 = load i32, i32* %17, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %129
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @FASTTRAP_SEG_NONE, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %688

139:                                              ; preds = %132
  %140 = load i32, i32* %17, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %139, %129
  %144 = load i64, i64* %14, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %14, align 8
  br label %107

146:                                              ; preds = %107
  br label %147

147:                                              ; preds = %146
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @DATAMODEL_LP64, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %147
  %154 = load i64, i64* %14, align 8
  %155 = getelementptr inbounds i32, i32* %36, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, 240
  %158 = icmp eq i32 %157, 64
  br i1 %158, label %159, label %164

159:                                              ; preds = %153
  %160 = load i64, i64* %14, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %14, align 8
  %162 = getelementptr inbounds i32, i32* %36, i64 %160
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %18, align 4
  br label %164

164:                                              ; preds = %159, %153, %147
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 5
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* @FASTTRAP_MAX_INSTR_SIZE, align 4
  %169 = call i32 @bcopy(i32* %36, i32* %167, i32 %168)
  %170 = load i64, i64* @FASTTRAP_T_COMMON, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 2
  store i64 %170, i64* %172, align 8
  %173 = load i64, i64* %14, align 8
  %174 = getelementptr inbounds i32, i32* %36, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @FASTTRAP_2_BYTE_OP, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %211

178:                                              ; preds = %164
  %179 = load i64, i64* %14, align 8
  %180 = add i64 %179, 1
  %181 = getelementptr inbounds i32, i32* %36, i64 %180
  %182 = load i32, i32* %181, align 4
  switch i32 %182, label %210 [
    i32 170, label %183
    i32 173, label %183
    i32 181, label %183
    i32 182, label %183
    i32 179, label %183
    i32 174, label %183
    i32 180, label %183
    i32 183, label %183
    i32 168, label %183
    i32 171, label %183
    i32 169, label %183
    i32 172, label %183
    i32 176, label %183
    i32 177, label %183
    i32 175, label %183
    i32 178, label %183
  ]

183:                                              ; preds = %178, %178, %178, %178, %178, %178, %178, %178, %178, %178, %178, %178, %178, %178, %178, %178
  %184 = load i8*, i8** @FASTTRAP_T_JCC, align 8
  %185 = ptrtoint i8* %184 to i64
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 2
  store i64 %185, i64* %187, align 8
  %188 = load i64, i64* %14, align 8
  %189 = add i64 %188, 1
  %190 = getelementptr inbounds i32, i32* %36, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = and i32 %191, 15
  %193 = or i32 %192, 148
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 3
  store i32 %193, i32* %195, align 8
  %196 = load i64, i64* %8, align 8
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = sext i32 %199 to i64
  %201 = add i64 %196, %200
  %202 = load i64, i64* %14, align 8
  %203 = add i64 %202, 2
  %204 = getelementptr inbounds i32, i32* %36, i64 %203
  %205 = bitcast i32* %204 to i8**
  %206 = load i8*, i8** %205, align 4
  %207 = getelementptr i8, i8* %206, i64 %201
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 7
  store i8* %207, i8** %209, align 8
  br label %210

210:                                              ; preds = %178, %183
  br label %603

211:                                              ; preds = %164
  %212 = load i64, i64* %14, align 8
  %213 = getelementptr inbounds i32, i32* %36, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @FASTTRAP_GROUP5_OP, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %416

217:                                              ; preds = %211
  %218 = load i64, i64* %14, align 8
  %219 = add i64 %218, 1
  %220 = getelementptr inbounds i32, i32* %36, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = call i64 @FASTTRAP_MODRM_MOD(i32 %221)
  store i64 %222, i64* %20, align 8
  %223 = load i64, i64* %14, align 8
  %224 = add i64 %223, 1
  %225 = getelementptr inbounds i32, i32* %36, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = call i64 @FASTTRAP_MODRM_REG(i32 %226)
  store i64 %227, i64* %21, align 8
  %228 = load i64, i64* %14, align 8
  %229 = add i64 %228, 1
  %230 = getelementptr inbounds i32, i32* %36, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = call i64 @FASTTRAP_MODRM_RM(i32 %231)
  store i64 %232, i64* %22, align 8
  %233 = load i64, i64* %21, align 8
  %234 = icmp eq i64 %233, 2
  br i1 %234, label %238, label %235

235:                                              ; preds = %217
  %236 = load i64, i64* %21, align 8
  %237 = icmp eq i64 %236, 4
  br i1 %237, label %238, label %415

238:                                              ; preds = %235, %217
  %239 = load i64, i64* %21, align 8
  %240 = icmp eq i64 %239, 2
  br i1 %240, label %241, label %246

241:                                              ; preds = %238
  %242 = load i8*, i8** @FASTTRAP_T_CALL, align 8
  %243 = ptrtoint i8* %242 to i64
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 2
  store i64 %243, i64* %245, align 8
  br label %251

246:                                              ; preds = %238
  %247 = load i8*, i8** @FASTTRAP_T_JMP, align 8
  %248 = ptrtoint i8* %247 to i64
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 2
  store i64 %248, i64* %250, align 8
  br label %251

251:                                              ; preds = %246, %241
  %252 = load i64, i64* %20, align 8
  %253 = icmp eq i64 %252, 3
  br i1 %253, label %254, label %257

254:                                              ; preds = %251
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 3
  store i32 2, i32* %256, align 8
  br label %260

257:                                              ; preds = %251
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 3
  store i32 1, i32* %259, align 8
  br label %260

260:                                              ; preds = %257, %254
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @DATAMODEL_LP64, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %269, label %266

266:                                              ; preds = %260
  %267 = load i32, i32* %18, align 4
  %268 = icmp eq i32 %267, 0
  br label %269

269:                                              ; preds = %266, %260
  %270 = phi i1 [ true, %260 ], [ %268, %266 ]
  %271 = zext i1 %270 to i32
  %272 = call i32 @ASSERT(i32 %271)
  %273 = load i64, i64* %20, align 8
  %274 = icmp ne i64 %273, 3
  br i1 %274, label %275, label %335

275:                                              ; preds = %269
  %276 = load i64, i64* %22, align 8
  %277 = icmp eq i64 %276, 4
  br i1 %277, label %278, label %335

278:                                              ; preds = %275
  %279 = load i64, i64* %14, align 8
  %280 = add i64 %279, 2
  %281 = getelementptr inbounds i32, i32* %36, i64 %280
  %282 = load i32, i32* %281, align 4
  store i32 %282, i32* %25, align 4
  %283 = load i32, i32* %25, align 4
  %284 = call i64 @FASTTRAP_SIB_INDEX(i32 %283)
  store i64 %284, i64* %26, align 8
  %285 = load i32, i32* %25, align 4
  %286 = call i64 @FASTTRAP_SIB_BASE(i32 %285)
  store i64 %286, i64* %27, align 8
  %287 = load i32, i32* %25, align 4
  %288 = call i32 @FASTTRAP_SIB_SCALE(i32 %287)
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 10
  store i32 %288, i32* %290, align 8
  %291 = load i64, i64* %26, align 8
  %292 = icmp eq i64 %291, 4
  br i1 %292, label %293, label %295

293:                                              ; preds = %278
  %294 = load i8*, i8** @FASTTRAP_NOREG, align 8
  br label %305

295:                                              ; preds = %278
  %296 = load i8**, i8*** @regmap, align 8
  %297 = load i64, i64* %26, align 8
  %298 = load i32, i32* %18, align 4
  %299 = call i32 @FASTTRAP_REX_X(i32 %298)
  %300 = shl i32 %299, 3
  %301 = sext i32 %300 to i64
  %302 = or i64 %297, %301
  %303 = getelementptr inbounds i8*, i8** %296, i64 %302
  %304 = load i8*, i8** %303, align 8
  br label %305

305:                                              ; preds = %295, %293
  %306 = phi i8* [ %294, %293 ], [ %304, %295 ]
  %307 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 8
  store i8* %306, i8** %308, align 8
  %309 = load i64, i64* %20, align 8
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %305
  %312 = load i64, i64* %27, align 8
  %313 = icmp eq i64 %312, 5
  br i1 %313, label %314, label %316

314:                                              ; preds = %311
  %315 = load i8*, i8** @FASTTRAP_NOREG, align 8
  br label %326

316:                                              ; preds = %311, %305
  %317 = load i8**, i8*** @regmap, align 8
  %318 = load i64, i64* %27, align 8
  %319 = load i32, i32* %18, align 4
  %320 = call i32 @FASTTRAP_REX_B(i32 %319)
  %321 = shl i32 %320, 3
  %322 = sext i32 %321 to i64
  %323 = or i64 %318, %322
  %324 = getelementptr inbounds i8*, i8** %317, i64 %323
  %325 = load i8*, i8** %324, align 8
  br label %326

326:                                              ; preds = %316, %314
  %327 = phi i8* [ %315, %314 ], [ %325, %316 ]
  %328 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 9
  store i8* %327, i8** %329, align 8
  store i64 3, i64* %23, align 8
  %330 = load i64, i64* %20, align 8
  %331 = icmp eq i64 %330, 1
  %332 = zext i1 %331 to i64
  %333 = select i1 %331, i32 1, i32 4
  %334 = sext i32 %333 to i64
  store i64 %334, i64* %24, align 8
  br label %386

335:                                              ; preds = %275, %269
  %336 = load i64, i64* %20, align 8
  %337 = icmp eq i64 %336, 0
  br i1 %337, label %338, label %356

338:                                              ; preds = %335
  %339 = load i64, i64* %22, align 8
  %340 = icmp eq i64 %339, 5
  br i1 %340, label %341, label %356

341:                                              ; preds = %338
  %342 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* @DATAMODEL_LP64, align 4
  %346 = icmp eq i32 %344, %345
  br i1 %346, label %347, label %351

347:                                              ; preds = %341
  %348 = load i8*, i8** @REG_RIP, align 8
  %349 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 9
  store i8* %348, i8** %350, align 8
  br label %355

351:                                              ; preds = %341
  %352 = load i8*, i8** @FASTTRAP_NOREG, align 8
  %353 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i32 0, i32 9
  store i8* %352, i8** %354, align 8
  br label %355

355:                                              ; preds = %351, %347
  store i64 4, i64* %24, align 8
  br label %382

356:                                              ; preds = %338, %335
  %357 = load i64, i64* %22, align 8
  %358 = load i32, i32* %18, align 4
  %359 = call i32 @FASTTRAP_REX_B(i32 %358)
  %360 = shl i32 %359, 3
  %361 = sext i32 %360 to i64
  %362 = or i64 %357, %361
  %363 = trunc i64 %362 to i32
  store i32 %363, i32* %28, align 4
  %364 = load i8**, i8*** @regmap, align 8
  %365 = load i32, i32* %28, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i8*, i8** %364, i64 %366
  %368 = load i8*, i8** %367, align 8
  %369 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %370 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %369, i32 0, i32 9
  store i8* %368, i8** %370, align 8
  %371 = load i64, i64* %20, align 8
  %372 = icmp eq i64 %371, 1
  br i1 %372, label %373, label %374

373:                                              ; preds = %356
  br label %379

374:                                              ; preds = %356
  %375 = load i64, i64* %20, align 8
  %376 = icmp eq i64 %375, 2
  %377 = zext i1 %376 to i64
  %378 = select i1 %376, i32 4, i32 0
  br label %379

379:                                              ; preds = %374, %373
  %380 = phi i32 [ 1, %373 ], [ %378, %374 ]
  %381 = sext i32 %380 to i64
  store i64 %381, i64* %24, align 8
  br label %382

382:                                              ; preds = %379, %355
  %383 = load i8*, i8** @FASTTRAP_NOREG, align 8
  %384 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %385 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %384, i32 0, i32 8
  store i8* %383, i8** %385, align 8
  store i64 2, i64* %23, align 8
  br label %386

386:                                              ; preds = %382, %326
  %387 = load i64, i64* %24, align 8
  %388 = icmp eq i64 %387, 1
  br i1 %388, label %389, label %398

389:                                              ; preds = %386
  %390 = load i64, i64* %14, align 8
  %391 = load i64, i64* %23, align 8
  %392 = add i64 %390, %391
  %393 = getelementptr inbounds i32, i32* %36, i64 %392
  %394 = bitcast i32* %393 to i8**
  %395 = load i8*, i8** %394, align 4
  %396 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %397 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %396, i32 0, i32 7
  store i8* %395, i8** %397, align 8
  br label %414

398:                                              ; preds = %386
  %399 = load i64, i64* %24, align 8
  %400 = icmp eq i64 %399, 4
  br i1 %400, label %401, label %410

401:                                              ; preds = %398
  %402 = load i64, i64* %14, align 8
  %403 = load i64, i64* %23, align 8
  %404 = add i64 %402, %403
  %405 = getelementptr inbounds i32, i32* %36, i64 %404
  %406 = bitcast i32* %405 to i8**
  %407 = load i8*, i8** %406, align 4
  %408 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %409 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %408, i32 0, i32 7
  store i8* %407, i8** %409, align 8
  br label %413

410:                                              ; preds = %398
  %411 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %412 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %411, i32 0, i32 7
  store i8* null, i8** %412, align 8
  br label %413

413:                                              ; preds = %410, %401
  br label %414

414:                                              ; preds = %413, %389
  br label %415

415:                                              ; preds = %414, %235
  br label %602

416:                                              ; preds = %211
  %417 = load i64, i64* %14, align 8
  %418 = getelementptr inbounds i32, i32* %36, i64 %417
  %419 = load i32, i32* %418, align 4
  switch i32 %419, label %601 [
    i32 129, label %420
    i32 128, label %424
    i32 148, label %435
    i32 151, label %435
    i32 162, label %435
    i32 163, label %435
    i32 159, label %435
    i32 152, label %435
    i32 161, label %435
    i32 164, label %435
    i32 146, label %435
    i32 149, label %435
    i32 147, label %435
    i32 150, label %435
    i32 156, label %435
    i32 157, label %435
    i32 155, label %435
    i32 158, label %435
    i32 144, label %460
    i32 143, label %460
    i32 145, label %460
    i32 160, label %484
    i32 167, label %503
    i32 154, label %524
    i32 153, label %543
    i32 130, label %563
    i32 142, label %571
    i32 165, label %592
    i32 166, label %600
  ]

420:                                              ; preds = %416
  %421 = load i64, i64* @FASTTRAP_T_RET, align 8
  %422 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %423 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %422, i32 0, i32 2
  store i64 %421, i64* %423, align 8
  br label %601

424:                                              ; preds = %416
  %425 = load i64, i64* @FASTTRAP_T_RET16, align 8
  %426 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %427 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %426, i32 0, i32 2
  store i64 %425, i64* %427, align 8
  %428 = load i64, i64* %14, align 8
  %429 = add i64 %428, 1
  %430 = getelementptr inbounds i32, i32* %36, i64 %429
  %431 = bitcast i32* %430 to i8**
  %432 = load i8*, i8** %431, align 4
  %433 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %434 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %433, i32 0, i32 7
  store i8* %432, i8** %434, align 8
  br label %601

435:                                              ; preds = %416, %416, %416, %416, %416, %416, %416, %416, %416, %416, %416, %416, %416, %416, %416, %416
  %436 = load i8*, i8** @FASTTRAP_T_JCC, align 8
  %437 = ptrtoint i8* %436 to i64
  %438 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %439 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %438, i32 0, i32 2
  store i64 %437, i64* %439, align 8
  %440 = load i64, i64* %14, align 8
  %441 = getelementptr inbounds i32, i32* %36, i64 %440
  %442 = load i32, i32* %441, align 4
  %443 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %444 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %443, i32 0, i32 3
  store i32 %442, i32* %444, align 8
  %445 = load i64, i64* %8, align 8
  %446 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %447 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = sext i32 %448 to i64
  %450 = add i64 %445, %449
  %451 = load i64, i64* %14, align 8
  %452 = add i64 %451, 1
  %453 = getelementptr inbounds i32, i32* %36, i64 %452
  %454 = load i32, i32* %453, align 4
  %455 = sext i32 %454 to i64
  %456 = inttoptr i64 %455 to i8*
  %457 = getelementptr i8, i8* %456, i64 %450
  %458 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %459 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %458, i32 0, i32 7
  store i8* %457, i8** %459, align 8
  br label %601

460:                                              ; preds = %416, %416, %416
  %461 = load i64, i64* @FASTTRAP_T_LOOP, align 8
  %462 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %463 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %462, i32 0, i32 2
  store i64 %461, i64* %463, align 8
  %464 = load i64, i64* %14, align 8
  %465 = getelementptr inbounds i32, i32* %36, i64 %464
  %466 = load i32, i32* %465, align 4
  %467 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %468 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %467, i32 0, i32 3
  store i32 %466, i32* %468, align 8
  %469 = load i64, i64* %8, align 8
  %470 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %471 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = sext i32 %472 to i64
  %474 = add i64 %469, %473
  %475 = load i64, i64* %14, align 8
  %476 = add i64 %475, 1
  %477 = getelementptr inbounds i32, i32* %36, i64 %476
  %478 = load i32, i32* %477, align 4
  %479 = sext i32 %478 to i64
  %480 = inttoptr i64 %479 to i8*
  %481 = getelementptr i8, i8* %480, i64 %474
  %482 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %483 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %482, i32 0, i32 7
  store i8* %481, i8** %483, align 8
  br label %601

484:                                              ; preds = %416
  %485 = load i64, i64* @FASTTRAP_T_JCXZ, align 8
  %486 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %487 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %486, i32 0, i32 2
  store i64 %485, i64* %487, align 8
  %488 = load i64, i64* %8, align 8
  %489 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %490 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 8
  %492 = sext i32 %491 to i64
  %493 = add i64 %488, %492
  %494 = load i64, i64* %14, align 8
  %495 = add i64 %494, 1
  %496 = getelementptr inbounds i32, i32* %36, i64 %495
  %497 = load i32, i32* %496, align 4
  %498 = sext i32 %497 to i64
  %499 = inttoptr i64 %498 to i8*
  %500 = getelementptr i8, i8* %499, i64 %493
  %501 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %502 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %501, i32 0, i32 7
  store i8* %500, i8** %502, align 8
  br label %601

503:                                              ; preds = %416
  %504 = load i8*, i8** @FASTTRAP_T_CALL, align 8
  %505 = ptrtoint i8* %504 to i64
  %506 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %507 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %506, i32 0, i32 2
  store i64 %505, i64* %507, align 8
  %508 = load i64, i64* %8, align 8
  %509 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %510 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 8
  %512 = sext i32 %511 to i64
  %513 = add i64 %508, %512
  %514 = load i64, i64* %14, align 8
  %515 = add i64 %514, 1
  %516 = getelementptr inbounds i32, i32* %36, i64 %515
  %517 = bitcast i32* %516 to i8**
  %518 = load i8*, i8** %517, align 4
  %519 = getelementptr i8, i8* %518, i64 %513
  %520 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %521 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %520, i32 0, i32 7
  store i8* %519, i8** %521, align 8
  %522 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %523 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %522, i32 0, i32 3
  store i32 0, i32* %523, align 8
  br label %601

524:                                              ; preds = %416
  %525 = load i8*, i8** @FASTTRAP_T_JMP, align 8
  %526 = ptrtoint i8* %525 to i64
  %527 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %528 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %527, i32 0, i32 2
  store i64 %526, i64* %528, align 8
  %529 = load i64, i64* %8, align 8
  %530 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %531 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %530, i32 0, i32 0
  %532 = load i32, i32* %531, align 8
  %533 = sext i32 %532 to i64
  %534 = add i64 %529, %533
  %535 = load i64, i64* %14, align 8
  %536 = add i64 %535, 1
  %537 = getelementptr inbounds i32, i32* %36, i64 %536
  %538 = bitcast i32* %537 to i8**
  %539 = load i8*, i8** %538, align 4
  %540 = getelementptr i8, i8* %539, i64 %534
  %541 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %542 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %541, i32 0, i32 7
  store i8* %540, i8** %542, align 8
  br label %601

543:                                              ; preds = %416
  %544 = load i8*, i8** @FASTTRAP_T_JMP, align 8
  %545 = ptrtoint i8* %544 to i64
  %546 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %547 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %546, i32 0, i32 2
  store i64 %545, i64* %547, align 8
  %548 = load i64, i64* %8, align 8
  %549 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %550 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %549, i32 0, i32 0
  %551 = load i32, i32* %550, align 8
  %552 = sext i32 %551 to i64
  %553 = add i64 %548, %552
  %554 = load i64, i64* %14, align 8
  %555 = add i64 %554, 1
  %556 = getelementptr inbounds i32, i32* %36, i64 %555
  %557 = load i32, i32* %556, align 4
  %558 = sext i32 %557 to i64
  %559 = inttoptr i64 %558 to i8*
  %560 = getelementptr i8, i8* %559, i64 %553
  %561 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %562 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %561, i32 0, i32 7
  store i8* %560, i8** %562, align 8
  br label %601

563:                                              ; preds = %416
  %564 = load i64, i64* %14, align 8
  %565 = icmp eq i64 %564, 0
  br i1 %565, label %566, label %570

566:                                              ; preds = %563
  %567 = load i64, i64* @FASTTRAP_T_PUSHL_EBP, align 8
  %568 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %569 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %568, i32 0, i32 2
  store i64 %567, i64* %569, align 8
  br label %570

570:                                              ; preds = %566, %563
  br label %601

571:                                              ; preds = %416
  %572 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %573 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %572, i32 0, i32 0
  %574 = load i32, i32* %573, align 4
  %575 = load i32, i32* @DATAMODEL_LP64, align 4
  %576 = icmp eq i32 %574, %575
  br i1 %576, label %580, label %577

577:                                              ; preds = %571
  %578 = load i32, i32* %18, align 4
  %579 = icmp eq i32 %578, 0
  br label %580

580:                                              ; preds = %577, %571
  %581 = phi i1 [ true, %571 ], [ %579, %577 ]
  %582 = zext i1 %581 to i32
  %583 = call i32 @ASSERT(i32 %582)
  %584 = load i32, i32* %18, align 4
  %585 = call i32 @FASTTRAP_REX_B(i32 %584)
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %587, label %591

587:                                              ; preds = %580
  %588 = load i64, i64* @FASTTRAP_T_NOP, align 8
  %589 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %590 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %589, i32 0, i32 2
  store i64 %588, i64* %590, align 8
  br label %591

591:                                              ; preds = %587, %580
  br label %601

592:                                              ; preds = %416
  %593 = load i64, i64* %14, align 8
  %594 = getelementptr inbounds i32, i32* %36, i64 %593
  %595 = load i32, i32* %594, align 4
  %596 = load i32, i32* @FASTTRAP_INSTR, align 4
  %597 = icmp eq i32 %595, %596
  %598 = zext i1 %597 to i32
  %599 = call i32 @ASSERT(i32 %598)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %688

600:                                              ; preds = %416
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %688

601:                                              ; preds = %416, %591, %570, %543, %524, %503, %484, %460, %435, %424, %420
  br label %602

602:                                              ; preds = %601, %415
  br label %603

603:                                              ; preds = %602, %210
  %604 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %605 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %604, i32 0, i32 0
  %606 = load i32, i32* %605, align 4
  %607 = load i32, i32* @DATAMODEL_LP64, align 4
  %608 = icmp eq i32 %606, %607
  br i1 %608, label %609, label %687

609:                                              ; preds = %603
  %610 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %611 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %610, i32 0, i32 2
  %612 = load i64, i64* %611, align 8
  %613 = load i64, i64* @FASTTRAP_T_COMMON, align 8
  %614 = icmp eq i64 %612, %613
  br i1 %614, label %615, label %687

615:                                              ; preds = %609
  %616 = load i32, i32* %15, align 4
  %617 = icmp ne i32 %616, -1
  br i1 %617, label %618, label %686

618:                                              ; preds = %615
  %619 = load i32, i32* %15, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds i32, i32* %36, i64 %620
  %622 = load i32, i32* %621, align 4
  %623 = call i64 @FASTTRAP_MODRM_MOD(i32 %622)
  store i64 %623, i64* %29, align 8
  %624 = load i32, i32* %15, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds i32, i32* %36, i64 %625
  %627 = load i32, i32* %626, align 4
  %628 = call i64 @FASTTRAP_MODRM_REG(i32 %627)
  store i64 %628, i64* %30, align 8
  %629 = load i32, i32* %15, align 4
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds i32, i32* %36, i64 %630
  %632 = load i32, i32* %631, align 4
  %633 = call i64 @FASTTRAP_MODRM_RM(i32 %632)
  store i64 %633, i64* %31, align 8
  %634 = load i32, i32* %15, align 4
  %635 = sext i32 %634 to i64
  %636 = load i64, i64* %14, align 8
  %637 = icmp ugt i64 %635, %636
  %638 = zext i1 %637 to i32
  %639 = call i32 @ASSERT(i32 %638)
  %640 = load i64, i64* %29, align 8
  %641 = icmp eq i64 %640, 0
  br i1 %641, label %642, label %685

642:                                              ; preds = %618
  %643 = load i64, i64* %31, align 8
  %644 = icmp eq i64 %643, 5
  br i1 %644, label %645, label %685

645:                                              ; preds = %642
  %646 = load i64, i64* %30, align 8
  %647 = icmp ne i64 %646, 0
  br i1 %647, label %648, label %657

648:                                              ; preds = %645
  %649 = load i32, i32* @FASTTRAP_RIP_1, align 4
  %650 = load i32, i32* @FASTTRAP_RIP_X, align 4
  %651 = load i32, i32* %18, align 4
  %652 = call i32 @FASTTRAP_REX_B(i32 %651)
  %653 = mul nsw i32 %650, %652
  %654 = or i32 %649, %653
  %655 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %656 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %655, i32 0, i32 4
  store i32 %654, i32* %656, align 4
  store i64 0, i64* %31, align 8
  br label %666

657:                                              ; preds = %645
  %658 = load i32, i32* @FASTTRAP_RIP_2, align 4
  %659 = load i32, i32* @FASTTRAP_RIP_X, align 4
  %660 = load i32, i32* %18, align 4
  %661 = call i32 @FASTTRAP_REX_B(i32 %660)
  %662 = mul nsw i32 %659, %661
  %663 = or i32 %658, %662
  %664 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %665 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %664, i32 0, i32 4
  store i32 %663, i32* %665, align 4
  store i64 1, i64* %31, align 8
  br label %666

666:                                              ; preds = %657, %648
  %667 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %668 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %667, i32 0, i32 5
  %669 = load i32*, i32** %668, align 8
  %670 = load i32, i32* %15, align 4
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds i32, i32* %669, i64 %671
  %673 = load i32, i32* %672, align 4
  %674 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %675 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %674, i32 0, i32 6
  store i32 %673, i32* %675, align 8
  %676 = load i64, i64* %30, align 8
  %677 = load i64, i64* %31, align 8
  %678 = call i32 @FASTTRAP_MODRM(i32 2, i64 %676, i64 %677)
  %679 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %680 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %679, i32 0, i32 5
  %681 = load i32*, i32** %680, align 8
  %682 = load i32, i32* %15, align 4
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds i32, i32* %681, i64 %683
  store i32 %678, i32* %684, align 4
  br label %685

685:                                              ; preds = %666, %642, %618
  br label %686

686:                                              ; preds = %685, %615
  br label %687

687:                                              ; preds = %686, %609, %603
  store i32 0, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %688

688:                                              ; preds = %687, %600, %592, %138, %99, %83, %52
  %689 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %689)
  %690 = load i32, i32* %5, align 4
  ret i32 %690
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @MIN(i64, i64) #2

declare dso_local i64 @uread(%struct.TYPE_6__*, i32*, i64, i64) #2

declare dso_local i32 @bzero(i32*, i64) #2

declare dso_local i32 @dtrace_instr_size_isa(i32*, i32, i32*) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @bcopy(i32*, i32*, i32) #2

declare dso_local i64 @FASTTRAP_MODRM_MOD(i32) #2

declare dso_local i64 @FASTTRAP_MODRM_REG(i32) #2

declare dso_local i64 @FASTTRAP_MODRM_RM(i32) #2

declare dso_local i64 @FASTTRAP_SIB_INDEX(i32) #2

declare dso_local i64 @FASTTRAP_SIB_BASE(i32) #2

declare dso_local i32 @FASTTRAP_SIB_SCALE(i32) #2

declare dso_local i32 @FASTTRAP_REX_X(i32) #2

declare dso_local i32 @FASTTRAP_REX_B(i32) #2

declare dso_local i32 @FASTTRAP_MODRM(i32, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
