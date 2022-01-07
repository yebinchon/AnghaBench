; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_ecb_action_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_ecb_action_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_17__* }
%struct.TYPE_21__ = type { i32, i64, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i8*, i8*, i32 }
%struct.TYPE_17__ = type { i32*, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, %struct.TYPE_20__* }

@dtrace_lock = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DIF_TYPE_STRING = common dso_local global i32 0, align 4
@DIF_TF_BYREF = common dso_local global i32 0, align 4
@DTRACEOPT_STRSIZE = common dso_local global i64 0, align 8
@DTRACEOPT_STACKFRAMES = common dso_local global i64 0, align 8
@DTRACEOPT_JSTACKSTRSIZE = common dso_local global i64 0, align 8
@DTRACEOPT_JSTACKFRAMES = common dso_local global i64 0, align 8
@DTRACEOPT_USTACKFRAMES = common dso_local global i64 0, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@KERNELBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_22__*)* @dtrace_ecb_action_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_ecb_action_add(%struct.TYPE_19__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_21__*, align 8
  %20 = alloca %struct.TYPE_21__*, align 8
  %21 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 4, i32* %10, align 4
  store i8* null, i8** %12, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %14, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %18, align 4
  %34 = call i32 @MUTEX_HELD(i32* @dtrace_lock)
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  %39 = icmp eq %struct.TYPE_21__* %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %2
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 1
  br label %47

47:                                               ; preds = %40, %2
  %48 = phi i1 [ true, %2 ], [ %46, %40 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @ASSERT(i32 %49)
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @DTRACEACT_ISAGG(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %47
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %58, align 8
  store %struct.TYPE_21__* %59, %struct.TYPE_21__** %19, align 8
  br label %60

60:                                               ; preds = %78, %56
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %62 = icmp ne %struct.TYPE_21__* %61, null
  br i1 %62, label %63, label %82

63:                                               ; preds = %60
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 151
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @EINVAL, align 4
  store i32 %69, i32* %3, align 4
  br label %504

70:                                               ; preds = %63
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 138
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @EINVAL, align 4
  store i32 %76, i32* %3, align 4
  br label %504

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %80, align 8
  store %struct.TYPE_21__* %81, %struct.TYPE_21__** %19, align 8
  br label %60

82:                                               ; preds = %60
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %85 = call %struct.TYPE_21__* @dtrace_ecb_aggregation_create(%struct.TYPE_19__* %83, %struct.TYPE_22__* %84)
  store %struct.TYPE_21__* %85, %struct.TYPE_21__** %6, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %87 = icmp eq %struct.TYPE_21__* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* @EINVAL, align 4
  store i32 %89, i32* %3, align 4
  br label %504

90:                                               ; preds = %82
  br label %408

91:                                               ; preds = %47
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @DTRACEACT_ISDESTRUCTIVE(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %110, label %97

97:                                               ; preds = %91
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 150
  br i1 %101, label %102, label %113

102:                                              ; preds = %97
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %104 = icmp ne %struct.TYPE_20__* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105, %91
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 1
  store i32 1, i32* %112, align 8
  br label %113

113:                                              ; preds = %110, %105, %102, %97
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  switch i32 %116, label %371 [
    i32 141, label %117
    i32 142, label %117
    i32 134, label %117
    i32 147, label %117
    i32 150, label %117
    i32 145, label %145
    i32 133, label %145
    i32 132, label %145
    i32 137, label %180
    i32 146, label %198
    i32 129, label %220
    i32 135, label %255
    i32 144, label %255
    i32 128, label %276
    i32 130, label %276
    i32 131, label %276
    i32 136, label %297
    i32 153, label %297
    i32 143, label %297
    i32 152, label %298
    i32 149, label %298
    i32 139, label %298
    i32 148, label %304
    i32 138, label %325
    i32 140, label %341
    i32 151, label %346
  ]

117:                                              ; preds = %113, %113, %113, %113, %113
  %118 = load i32, i32* %18, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %117
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 142
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 150
  br label %130

130:                                              ; preds = %125, %120
  %131 = phi i1 [ true, %120 ], [ %129, %125 ]
  %132 = zext i1 %131 to i32
  %133 = call i32 @ASSERT(i32 %132)
  store i8* null, i8** %12, align 8
  br label %144

134:                                              ; preds = %117
  %135 = load i32, i32* %18, align 4
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i32
  %138 = call i32 @ASSERT(i32 %137)
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %140 = load i32, i32* %18, align 4
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to i8*
  %143 = call i8* @dtrace_format_add(%struct.TYPE_17__* %139, i8* %142)
  store i8* %143, i8** %12, align 8
  br label %144

144:                                              ; preds = %134, %130
  br label %145

145:                                              ; preds = %113, %113, %113, %144
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %147 = icmp eq %struct.TYPE_20__* %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i32, i32* @EINVAL, align 4
  store i32 %149, i32* %3, align 4
  br label %504

150:                                              ; preds = %145
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  store i32 %154, i32* %9, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %373

157:                                              ; preds = %150
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @DIF_TYPE_STRING, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %179

164:                                              ; preds = %157
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @DIF_TF_BYREF, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %164
  %173 = load i32, i32* @EINVAL, align 4
  store i32 %173, i32* %3, align 4
  br label %504

174:                                              ; preds = %164
  %175 = load i32*, i32** %15, align 8
  %176 = load i64, i64* @DTRACEOPT_STRSIZE, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %9, align 4
  br label %179

179:                                              ; preds = %174, %157
  br label %373

180:                                              ; preds = %113
  %181 = load i32, i32* %18, align 4
  store i32 %181, i32* %16, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %180
  %184 = load i32*, i32** %15, align 8
  %185 = load i64, i64* @DTRACEOPT_STACKFRAMES, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %16, align 4
  %188 = load i32, i32* %16, align 4
  %189 = icmp sgt i32 %188, 0
  %190 = zext i1 %189 to i32
  %191 = call i32 @ASSERT(i32 %190)
  %192 = load i32, i32* %16, align 4
  store i32 %192, i32* %18, align 4
  br label %193

193:                                              ; preds = %183, %180
  %194 = load i32, i32* %16, align 4
  %195 = sext i32 %194 to i64
  %196 = mul i64 %195, 4
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %9, align 4
  br label %373

198:                                              ; preds = %113
  %199 = load i32, i32* %18, align 4
  %200 = call i32 @DTRACE_USTACK_STRSIZE(i32 %199)
  store i32 %200, i32* %17, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %198
  %203 = load i32*, i32** %15, align 8
  %204 = load i64, i64* @DTRACEOPT_JSTACKSTRSIZE, align 8
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %17, align 4
  br label %207

207:                                              ; preds = %202, %198
  %208 = load i32, i32* %18, align 4
  %209 = call i32 @DTRACE_USTACK_NFRAMES(i32 %208)
  store i32 %209, i32* %16, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %207
  %212 = load i32*, i32** %15, align 8
  %213 = load i64, i64* @DTRACEOPT_JSTACKFRAMES, align 8
  %214 = getelementptr inbounds i32, i32* %212, i64 %213
  %215 = load i32, i32* %214, align 4
  store i32 %215, i32* %16, align 4
  br label %216

216:                                              ; preds = %211, %207
  %217 = load i32, i32* %16, align 4
  %218 = load i32, i32* %17, align 4
  %219 = call i32 @DTRACE_USTACK_ARG(i32 %217, i32 %218)
  store i32 %219, i32* %18, align 4
  br label %220

220:                                              ; preds = %113, %216
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 146
  br i1 %224, label %225, label %243

225:                                              ; preds = %220
  %226 = load i32, i32* %18, align 4
  %227 = call i32 @DTRACE_USTACK_NFRAMES(i32 %226)
  store i32 %227, i32* %16, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %243

229:                                              ; preds = %225
  %230 = load i32, i32* %18, align 4
  %231 = call i32 @DTRACE_USTACK_STRSIZE(i32 %230)
  store i32 %231, i32* %17, align 4
  %232 = load i32*, i32** %15, align 8
  %233 = load i64, i64* @DTRACEOPT_USTACKFRAMES, align 8
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* %16, align 4
  %236 = load i32, i32* %16, align 4
  %237 = icmp sgt i32 %236, 0
  %238 = zext i1 %237 to i32
  %239 = call i32 @ASSERT(i32 %238)
  %240 = load i32, i32* %16, align 4
  %241 = load i32, i32* %17, align 4
  %242 = call i32 @DTRACE_USTACK_ARG(i32 %240, i32 %241)
  store i32 %242, i32* %18, align 4
  br label %243

243:                                              ; preds = %229, %225, %220
  %244 = load i32, i32* %16, align 4
  %245 = add nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = mul i64 %246, 4
  %248 = trunc i64 %247 to i32
  store i32 %248, i32* %9, align 4
  %249 = load i32, i32* %18, align 4
  %250 = call i32 @DTRACE_USTACK_STRSIZE(i32 %249)
  %251 = load i32, i32* %9, align 4
  %252 = add nsw i32 %251, %250
  store i32 %252, i32* %9, align 4
  %253 = load i32, i32* %9, align 4
  %254 = call i32 @P2ROUNDUP(i32 %253, i32 8)
  store i32 %254, i32* %9, align 4
  br label %373

255:                                              ; preds = %113, %113
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %257 = icmp eq %struct.TYPE_20__* %256, null
  br i1 %257, label %273, label %258

258:                                              ; preds = %255
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  store i32 %262, i32* %9, align 4
  %263 = sext i32 %262 to i64
  %264 = icmp ne i64 %263, 4
  br i1 %264, label %273, label %265

265:                                              ; preds = %258
  %266 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @DIF_TF_BYREF, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %265, %258, %255
  %274 = load i32, i32* @EINVAL, align 4
  store i32 %274, i32* %3, align 4
  br label %504

275:                                              ; preds = %265
  br label %373

276:                                              ; preds = %113, %113, %113
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %278 = icmp eq %struct.TYPE_20__* %277, null
  br i1 %278, label %294, label %279

279:                                              ; preds = %276
  %280 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = sext i32 %283 to i64
  %285 = icmp ne i64 %284, 4
  br i1 %285, label %294, label %286

286:                                              ; preds = %279
  %287 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @DIF_TF_BYREF, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %286, %279, %276
  %295 = load i32, i32* @EINVAL, align 4
  store i32 %295, i32* %3, align 4
  br label %504

296:                                              ; preds = %286
  store i32 8, i32* %9, align 4
  br label %373

297:                                              ; preds = %113, %113, %113
  br label %373

298:                                              ; preds = %113, %113, %113
  %299 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %300 = icmp eq %struct.TYPE_20__* %299, null
  br i1 %300, label %301, label %303

301:                                              ; preds = %298
  %302 = load i32, i32* @EINVAL, align 4
  store i32 %302, i32* %3, align 4
  br label %504

303:                                              ; preds = %298
  br label %373

304:                                              ; preds = %113
  %305 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %306 = icmp eq %struct.TYPE_20__* %305, null
  br i1 %306, label %322, label %307

307:                                              ; preds = %304
  %308 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  store i32 %311, i32* %9, align 4
  %312 = sext i32 %311 to i64
  %313 = icmp ne i64 %312, 4
  br i1 %313, label %322, label %314

314:                                              ; preds = %307
  %315 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %316 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @DIF_TF_BYREF, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %314, %307, %304
  %323 = load i32, i32* @EINVAL, align 4
  store i32 %323, i32* %3, align 4
  br label %504

324:                                              ; preds = %314
  br label %373

325:                                              ; preds = %113
  %326 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = sext i32 %328 to i64
  %330 = icmp ugt i64 %329, 4
  br i1 %330, label %331, label %333

331:                                              ; preds = %325
  %332 = load i32, i32* @EINVAL, align 4
  store i32 %332, i32* %3, align 4
  br label %504

333:                                              ; preds = %325
  %334 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %335 = icmp eq %struct.TYPE_20__* %334, null
  br i1 %335, label %336, label %338

336:                                              ; preds = %333
  %337 = load i32, i32* @EINVAL, align 4
  store i32 %337, i32* %3, align 4
  br label %504

338:                                              ; preds = %333
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %340 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %339, i32 0, i32 2
  store i32 1, i32* %340, align 4
  br label %373

341:                                              ; preds = %113
  %342 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %343 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  store i32 %345, i32* %9, align 4
  br label %373

346:                                              ; preds = %113
  %347 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %347, i32 0, i32 2
  %349 = load %struct.TYPE_21__*, %struct.TYPE_21__** %348, align 8
  store %struct.TYPE_21__* %349, %struct.TYPE_21__** %20, align 8
  br label %350

350:                                              ; preds = %361, %346
  %351 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %352 = icmp ne %struct.TYPE_21__* %351, null
  br i1 %352, label %353, label %365

353:                                              ; preds = %350
  %354 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %355 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = icmp eq i64 %356, 151
  br i1 %357, label %358, label %360

358:                                              ; preds = %353
  %359 = load i32, i32* @EINVAL, align 4
  store i32 %359, i32* %3, align 4
  br label %504

360:                                              ; preds = %353
  br label %361

361:                                              ; preds = %360
  %362 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %363 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %362, i32 0, i32 2
  %364 = load %struct.TYPE_21__*, %struct.TYPE_21__** %363, align 8
  store %struct.TYPE_21__* %364, %struct.TYPE_21__** %20, align 8
  br label %350

365:                                              ; preds = %350
  %366 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %367 = icmp eq %struct.TYPE_20__* %366, null
  br i1 %367, label %368, label %370

368:                                              ; preds = %365
  %369 = load i32, i32* @EINVAL, align 4
  store i32 %369, i32* %3, align 4
  br label %504

370:                                              ; preds = %365
  br label %373

371:                                              ; preds = %113
  %372 = load i32, i32* @EINVAL, align 4
  store i32 %372, i32* %3, align 4
  br label %504

373:                                              ; preds = %370, %341, %338, %324, %303, %297, %296, %275, %243, %193, %179, %156
  %374 = load i32, i32* %9, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %381, label %376

376:                                              ; preds = %373
  %377 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = icmp eq i32 %379, 138
  br i1 %380, label %381, label %401

381:                                              ; preds = %376, %373
  %382 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %383 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %382, i32 0, i32 2
  %384 = load %struct.TYPE_21__*, %struct.TYPE_21__** %383, align 8
  store %struct.TYPE_21__* %384, %struct.TYPE_21__** %21, align 8
  br label %385

385:                                              ; preds = %396, %381
  %386 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %387 = icmp ne %struct.TYPE_21__* %386, null
  br i1 %387, label %388, label %400

388:                                              ; preds = %385
  %389 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %390 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %389, i32 0, i32 1
  %391 = load i64, i64* %390, align 8
  %392 = icmp eq i64 %391, 151
  br i1 %392, label %393, label %395

393:                                              ; preds = %388
  %394 = load i32, i32* @EINVAL, align 4
  store i32 %394, i32* %3, align 4
  br label %504

395:                                              ; preds = %388
  br label %396

396:                                              ; preds = %395
  %397 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %398 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %397, i32 0, i32 2
  %399 = load %struct.TYPE_21__*, %struct.TYPE_21__** %398, align 8
  store %struct.TYPE_21__* %399, %struct.TYPE_21__** %21, align 8
  br label %385

400:                                              ; preds = %385
  br label %401

401:                                              ; preds = %400, %376
  %402 = load i32, i32* @KM_SLEEP, align 4
  %403 = call %struct.TYPE_21__* @kmem_zalloc(i32 80, i32 %402)
  store %struct.TYPE_21__* %403, %struct.TYPE_21__** %6, align 8
  %404 = load i32, i32* %9, align 4
  %405 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %406 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %405, i32 0, i32 5
  %407 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %406, i32 0, i32 0
  store i32 %404, i32* %407, align 8
  br label %408

408:                                              ; preds = %401, %90
  %409 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %410 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %409, i32 0, i32 0
  store i32 1, i32* %410, align 8
  %411 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %412 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %411, i32 0, i32 5
  store %struct.TYPE_18__* %412, %struct.TYPE_18__** %13, align 8
  %413 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %414 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  store i32 %415, i32* %9, align 4
  store i32 3, i32* %11, align 4
  br label %416

416:                                              ; preds = %433, %408
  %417 = load i32, i32* %9, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %422

419:                                              ; preds = %416
  %420 = load i32, i32* %11, align 4
  %421 = icmp sgt i32 %420, 0
  br label %422

422:                                              ; preds = %419, %416
  %423 = phi i1 [ false, %416 ], [ %421, %419 ]
  br i1 %423, label %424, label %436

424:                                              ; preds = %422
  %425 = load i32, i32* %9, align 4
  %426 = load i32, i32* %11, align 4
  %427 = and i32 %425, %426
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %432, label %429

429:                                              ; preds = %424
  %430 = load i32, i32* %11, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %10, align 4
  br label %436

432:                                              ; preds = %424
  br label %433

433:                                              ; preds = %432
  %434 = load i32, i32* %11, align 4
  %435 = ashr i32 %434, 1
  store i32 %435, i32* %11, align 4
  br label %416

436:                                              ; preds = %429, %422
  %437 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 4
  %440 = sext i32 %439 to i64
  %441 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %442 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %441, i32 0, i32 1
  store i64 %440, i64* %442, align 8
  %443 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %444 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %445 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %444, i32 0, i32 4
  store %struct.TYPE_20__* %443, %struct.TYPE_20__** %445, align 8
  %446 = icmp ne %struct.TYPE_20__* %443, null
  br i1 %446, label %447, label %450

447:                                              ; preds = %436
  %448 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %449 = call i32 @dtrace_difo_hold(%struct.TYPE_20__* %448)
  br label %450

450:                                              ; preds = %447, %436
  %451 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %452 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %451, i32 0, i32 1
  %453 = load i64, i64* %452, align 8
  %454 = trunc i64 %453 to i32
  %455 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %456 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %455, i32 0, i32 1
  store i32 %454, i32* %456, align 4
  %457 = load i32, i32* %18, align 4
  %458 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %459 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %458, i32 0, i32 2
  store i32 %457, i32* %459, align 8
  %460 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %461 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %460, i32 0, i32 2
  %462 = load i32, i32* %461, align 8
  %463 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %464 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %463, i32 0, i32 5
  store i32 %462, i32* %464, align 8
  %465 = load i32, i32* %10, align 4
  %466 = sext i32 %465 to i64
  %467 = inttoptr i64 %466 to i8*
  %468 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %469 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %468, i32 0, i32 4
  store i8* %467, i8** %469, align 8
  %470 = load i8*, i8** %12, align 8
  %471 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %472 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %471, i32 0, i32 3
  store i8* %470, i8** %472, align 8
  %473 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %474 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %473, i32 0, i32 1
  %475 = load %struct.TYPE_21__*, %struct.TYPE_21__** %474, align 8
  store %struct.TYPE_21__* %475, %struct.TYPE_21__** %7, align 8
  %476 = icmp ne %struct.TYPE_21__* %475, null
  br i1 %476, label %477, label %490

477:                                              ; preds = %450
  %478 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %479 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %478, i32 0, i32 2
  %480 = load %struct.TYPE_21__*, %struct.TYPE_21__** %479, align 8
  %481 = icmp ne %struct.TYPE_21__* %480, null
  %482 = zext i1 %481 to i32
  %483 = call i32 @ASSERT(i32 %482)
  %484 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %485 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %486 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %485, i32 0, i32 3
  store %struct.TYPE_21__* %484, %struct.TYPE_21__** %486, align 8
  %487 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %488 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %489 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %488, i32 0, i32 2
  store %struct.TYPE_21__* %487, %struct.TYPE_21__** %489, align 8
  br label %500

490:                                              ; preds = %450
  %491 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %492 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %491, i32 0, i32 2
  %493 = load %struct.TYPE_21__*, %struct.TYPE_21__** %492, align 8
  %494 = icmp eq %struct.TYPE_21__* %493, null
  %495 = zext i1 %494 to i32
  %496 = call i32 @ASSERT(i32 %495)
  %497 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %498 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %499 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %498, i32 0, i32 2
  store %struct.TYPE_21__* %497, %struct.TYPE_21__** %499, align 8
  br label %500

500:                                              ; preds = %490, %477
  %501 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %502 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %503 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %502, i32 0, i32 1
  store %struct.TYPE_21__* %501, %struct.TYPE_21__** %503, align 8
  store i32 0, i32* %3, align 4
  br label %504

504:                                              ; preds = %500, %393, %371, %368, %358, %336, %331, %322, %301, %294, %273, %172, %148, %88, %75, %68
  %505 = load i32, i32* %3, align 4
  ret i32 %505
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i64 @DTRACEACT_ISAGG(i32) #1

declare dso_local %struct.TYPE_21__* @dtrace_ecb_aggregation_create(%struct.TYPE_19__*, %struct.TYPE_22__*) #1

declare dso_local i64 @DTRACEACT_ISDESTRUCTIVE(i32) #1

declare dso_local i8* @dtrace_format_add(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @DTRACE_USTACK_STRSIZE(i32) #1

declare dso_local i32 @DTRACE_USTACK_NFRAMES(i32) #1

declare dso_local i32 @DTRACE_USTACK_ARG(i32, i32) #1

declare dso_local i32 @P2ROUNDUP(i32, i32) #1

declare dso_local %struct.TYPE_21__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @dtrace_difo_hold(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
