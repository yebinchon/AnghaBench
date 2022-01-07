; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi32/extr_cloudabi32_systrace_args.c_systrace_return_setargdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi32/extr_cloudabi32_systrace_args.c_systrace_return_setargdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"cloudabi_timestamp_t\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"cloudabi_fd_t\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"size_t\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"cloudabi_filesize_t\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"cloudabi_tid_t\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i64)* @systrace_return_setargdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @systrace_return_setargdesc(i32 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i8* null, i8** %9, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %388 [
    i32 0, label %11
    i32 1, label %19
    i32 2, label %27
    i32 3, label %35
    i32 4, label %43
    i32 5, label %51
    i32 6, label %59
    i32 7, label %67
    i32 8, label %75
    i32 9, label %83
    i32 10, label %91
    i32 11, label %99
    i32 12, label %107
    i32 13, label %115
    i32 14, label %123
    i32 15, label %131
    i32 16, label %139
    i32 17, label %147
    i32 18, label %155
    i32 19, label %163
    i32 20, label %171
    i32 21, label %179
    i32 22, label %187
    i32 23, label %195
    i32 24, label %203
    i32 25, label %211
    i32 26, label %219
    i32 27, label %227
    i32 28, label %235
    i32 29, label %243
    i32 30, label %251
    i32 31, label %259
    i32 32, label %267
    i32 33, label %275
    i32 34, label %283
    i32 35, label %291
    i32 36, label %299
    i32 37, label %307
    i32 38, label %315
    i32 39, label %323
    i32 40, label %331
    i32 41, label %331
    i32 42, label %339
    i32 43, label %347
    i32 44, label %355
    i32 45, label %363
    i32 46, label %371
    i32 47, label %379
    i32 48, label %387
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %11
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %18

18:                                               ; preds = %17, %14
  br label %389

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %26

26:                                               ; preds = %25, %22
  br label %389

27:                                               ; preds = %4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %27
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %34

34:                                               ; preds = %33, %30
  br label %389

35:                                               ; preds = %4
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %35
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %42

42:                                               ; preds = %41, %38
  br label %389

43:                                               ; preds = %4
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %43
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %50

50:                                               ; preds = %49, %46
  br label %389

51:                                               ; preds = %4
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %51
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %58

58:                                               ; preds = %57, %54
  br label %389

59:                                               ; preds = %4
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %62, %59
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %66

66:                                               ; preds = %65, %62
  br label %389

67:                                               ; preds = %4
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %74

73:                                               ; preds = %70, %67
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %74

74:                                               ; preds = %73, %70
  br label %389

75:                                               ; preds = %4
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %78, %75
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %82

82:                                               ; preds = %81, %78
  br label %389

83:                                               ; preds = %4
  %84 = load i32, i32* %6, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %90

89:                                               ; preds = %86, %83
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %90

90:                                               ; preds = %89, %86
  br label %389

91:                                               ; preds = %4
  %92 = load i32, i32* %6, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %6, align 4
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %98

97:                                               ; preds = %94, %91
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %98

98:                                               ; preds = %97, %94
  br label %389

99:                                               ; preds = %4
  %100 = load i32, i32* %6, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %6, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %106

105:                                              ; preds = %102, %99
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %106

106:                                              ; preds = %105, %102
  br label %389

107:                                              ; preds = %4
  %108 = load i32, i32* %6, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %6, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %114

113:                                              ; preds = %110, %107
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %114

114:                                              ; preds = %113, %110
  br label %389

115:                                              ; preds = %4
  %116 = load i32, i32* %6, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %6, align 4
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %122

121:                                              ; preds = %118, %115
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %122

122:                                              ; preds = %121, %118
  br label %389

123:                                              ; preds = %4
  %124 = load i32, i32* %6, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %6, align 4
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %130

129:                                              ; preds = %126, %123
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %130

130:                                              ; preds = %129, %126
  br label %389

131:                                              ; preds = %4
  %132 = load i32, i32* %6, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %6, align 4
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %138

137:                                              ; preds = %134, %131
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %138

138:                                              ; preds = %137, %134
  br label %389

139:                                              ; preds = %4
  %140 = load i32, i32* %6, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %6, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %146

145:                                              ; preds = %142, %139
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %146

146:                                              ; preds = %145, %142
  br label %389

147:                                              ; preds = %4
  %148 = load i32, i32* %6, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %147
  %151 = load i32, i32* %6, align 4
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %153, label %154

153:                                              ; preds = %150, %147
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %154

154:                                              ; preds = %153, %150
  br label %389

155:                                              ; preds = %4
  %156 = load i32, i32* %6, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %155
  %159 = load i32, i32* %6, align 4
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %161, label %162

161:                                              ; preds = %158, %155
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %162

162:                                              ; preds = %161, %158
  br label %389

163:                                              ; preds = %4
  %164 = load i32, i32* %6, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %6, align 4
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %170

169:                                              ; preds = %166, %163
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %170

170:                                              ; preds = %169, %166
  br label %389

171:                                              ; preds = %4
  %172 = load i32, i32* %6, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %171
  %175 = load i32, i32* %6, align 4
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %178

177:                                              ; preds = %174, %171
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %178

178:                                              ; preds = %177, %174
  br label %389

179:                                              ; preds = %4
  %180 = load i32, i32* %6, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %179
  %183 = load i32, i32* %6, align 4
  %184 = icmp eq i32 %183, 1
  br i1 %184, label %185, label %186

185:                                              ; preds = %182, %179
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %186

186:                                              ; preds = %185, %182
  br label %389

187:                                              ; preds = %4
  %188 = load i32, i32* %6, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %187
  %191 = load i32, i32* %6, align 4
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %193, label %194

193:                                              ; preds = %190, %187
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %194

194:                                              ; preds = %193, %190
  br label %389

195:                                              ; preds = %4
  %196 = load i32, i32* %6, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %195
  %199 = load i32, i32* %6, align 4
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %201, label %202

201:                                              ; preds = %198, %195
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %202

202:                                              ; preds = %201, %198
  br label %389

203:                                              ; preds = %4
  %204 = load i32, i32* %6, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %203
  %207 = load i32, i32* %6, align 4
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %209, label %210

209:                                              ; preds = %206, %203
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %210

210:                                              ; preds = %209, %206
  br label %389

211:                                              ; preds = %4
  %212 = load i32, i32* %6, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %211
  %215 = load i32, i32* %6, align 4
  %216 = icmp eq i32 %215, 1
  br i1 %216, label %217, label %218

217:                                              ; preds = %214, %211
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %218

218:                                              ; preds = %217, %214
  br label %389

219:                                              ; preds = %4
  %220 = load i32, i32* %6, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %219
  %223 = load i32, i32* %6, align 4
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %225, label %226

225:                                              ; preds = %222, %219
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %226

226:                                              ; preds = %225, %222
  br label %389

227:                                              ; preds = %4
  %228 = load i32, i32* %6, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %233, label %230

230:                                              ; preds = %227
  %231 = load i32, i32* %6, align 4
  %232 = icmp eq i32 %231, 1
  br i1 %232, label %233, label %234

233:                                              ; preds = %230, %227
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %234

234:                                              ; preds = %233, %230
  br label %389

235:                                              ; preds = %4
  %236 = load i32, i32* %6, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %235
  %239 = load i32, i32* %6, align 4
  %240 = icmp eq i32 %239, 1
  br i1 %240, label %241, label %242

241:                                              ; preds = %238, %235
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %242

242:                                              ; preds = %241, %238
  br label %389

243:                                              ; preds = %4
  %244 = load i32, i32* %6, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %243
  %247 = load i32, i32* %6, align 4
  %248 = icmp eq i32 %247, 1
  br i1 %248, label %249, label %250

249:                                              ; preds = %246, %243
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %250

250:                                              ; preds = %249, %246
  br label %389

251:                                              ; preds = %4
  %252 = load i32, i32* %6, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %257, label %254

254:                                              ; preds = %251
  %255 = load i32, i32* %6, align 4
  %256 = icmp eq i32 %255, 1
  br i1 %256, label %257, label %258

257:                                              ; preds = %254, %251
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %258

258:                                              ; preds = %257, %254
  br label %389

259:                                              ; preds = %4
  %260 = load i32, i32* %6, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %265, label %262

262:                                              ; preds = %259
  %263 = load i32, i32* %6, align 4
  %264 = icmp eq i32 %263, 1
  br i1 %264, label %265, label %266

265:                                              ; preds = %262, %259
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %266

266:                                              ; preds = %265, %262
  br label %389

267:                                              ; preds = %4
  %268 = load i32, i32* %6, align 4
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %273, label %270

270:                                              ; preds = %267
  %271 = load i32, i32* %6, align 4
  %272 = icmp eq i32 %271, 1
  br i1 %272, label %273, label %274

273:                                              ; preds = %270, %267
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %274

274:                                              ; preds = %273, %270
  br label %389

275:                                              ; preds = %4
  %276 = load i32, i32* %6, align 4
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %281, label %278

278:                                              ; preds = %275
  %279 = load i32, i32* %6, align 4
  %280 = icmp eq i32 %279, 1
  br i1 %280, label %281, label %282

281:                                              ; preds = %278, %275
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %282

282:                                              ; preds = %281, %278
  br label %389

283:                                              ; preds = %4
  %284 = load i32, i32* %6, align 4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %289, label %286

286:                                              ; preds = %283
  %287 = load i32, i32* %6, align 4
  %288 = icmp eq i32 %287, 1
  br i1 %288, label %289, label %290

289:                                              ; preds = %286, %283
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %290

290:                                              ; preds = %289, %286
  br label %389

291:                                              ; preds = %4
  %292 = load i32, i32* %6, align 4
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %297, label %294

294:                                              ; preds = %291
  %295 = load i32, i32* %6, align 4
  %296 = icmp eq i32 %295, 1
  br i1 %296, label %297, label %298

297:                                              ; preds = %294, %291
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %298

298:                                              ; preds = %297, %294
  br label %389

299:                                              ; preds = %4
  %300 = load i32, i32* %6, align 4
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %305, label %302

302:                                              ; preds = %299
  %303 = load i32, i32* %6, align 4
  %304 = icmp eq i32 %303, 1
  br i1 %304, label %305, label %306

305:                                              ; preds = %302, %299
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %306

306:                                              ; preds = %305, %302
  br label %389

307:                                              ; preds = %4
  %308 = load i32, i32* %6, align 4
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %313, label %310

310:                                              ; preds = %307
  %311 = load i32, i32* %6, align 4
  %312 = icmp eq i32 %311, 1
  br i1 %312, label %313, label %314

313:                                              ; preds = %310, %307
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %314

314:                                              ; preds = %313, %310
  br label %389

315:                                              ; preds = %4
  %316 = load i32, i32* %6, align 4
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %321, label %318

318:                                              ; preds = %315
  %319 = load i32, i32* %6, align 4
  %320 = icmp eq i32 %319, 1
  br i1 %320, label %321, label %322

321:                                              ; preds = %318, %315
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %322

322:                                              ; preds = %321, %318
  br label %389

323:                                              ; preds = %4
  %324 = load i32, i32* %6, align 4
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %329, label %326

326:                                              ; preds = %323
  %327 = load i32, i32* %6, align 4
  %328 = icmp eq i32 %327, 1
  br i1 %328, label %329, label %330

329:                                              ; preds = %326, %323
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %330

330:                                              ; preds = %329, %326
  br label %389

331:                                              ; preds = %4, %4
  %332 = load i32, i32* %6, align 4
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %337, label %334

334:                                              ; preds = %331
  %335 = load i32, i32* %6, align 4
  %336 = icmp eq i32 %335, 1
  br i1 %336, label %337, label %338

337:                                              ; preds = %334, %331
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %338

338:                                              ; preds = %337, %334
  br label %389

339:                                              ; preds = %4
  %340 = load i32, i32* %6, align 4
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %345, label %342

342:                                              ; preds = %339
  %343 = load i32, i32* %6, align 4
  %344 = icmp eq i32 %343, 1
  br i1 %344, label %345, label %346

345:                                              ; preds = %342, %339
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %346

346:                                              ; preds = %345, %342
  br label %389

347:                                              ; preds = %4
  %348 = load i32, i32* %6, align 4
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %353, label %350

350:                                              ; preds = %347
  %351 = load i32, i32* %6, align 4
  %352 = icmp eq i32 %351, 1
  br i1 %352, label %353, label %354

353:                                              ; preds = %350, %347
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %354

354:                                              ; preds = %353, %350
  br label %389

355:                                              ; preds = %4
  %356 = load i32, i32* %6, align 4
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %361, label %358

358:                                              ; preds = %355
  %359 = load i32, i32* %6, align 4
  %360 = icmp eq i32 %359, 1
  br i1 %360, label %361, label %362

361:                                              ; preds = %358, %355
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %362

362:                                              ; preds = %361, %358
  br label %389

363:                                              ; preds = %4
  %364 = load i32, i32* %6, align 4
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %369, label %366

366:                                              ; preds = %363
  %367 = load i32, i32* %6, align 4
  %368 = icmp eq i32 %367, 1
  br i1 %368, label %369, label %370

369:                                              ; preds = %366, %363
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %370

370:                                              ; preds = %369, %366
  br label %389

371:                                              ; preds = %4
  %372 = load i32, i32* %6, align 4
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %377, label %374

374:                                              ; preds = %371
  %375 = load i32, i32* %6, align 4
  %376 = icmp eq i32 %375, 1
  br i1 %376, label %377, label %378

377:                                              ; preds = %374, %371
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %378

378:                                              ; preds = %377, %374
  br label %389

379:                                              ; preds = %4
  %380 = load i32, i32* %6, align 4
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %385, label %382

382:                                              ; preds = %379
  %383 = load i32, i32* %6, align 4
  %384 = icmp eq i32 %383, 1
  br i1 %384, label %385, label %386

385:                                              ; preds = %382, %379
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %386

386:                                              ; preds = %385, %382
  br label %389

387:                                              ; preds = %4
  br label %388

388:                                              ; preds = %4, %387
  br label %389

389:                                              ; preds = %388, %386, %378, %370, %362, %354, %346, %338, %330, %322, %314, %306, %298, %290, %282, %274, %266, %258, %250, %242, %234, %226, %218, %210, %202, %194, %186, %178, %170, %162, %154, %146, %138, %130, %122, %114, %106, %98, %90, %82, %74, %66, %58, %50, %42, %34, %26, %18
  %390 = load i8*, i8** %9, align 8
  %391 = icmp ne i8* %390, null
  br i1 %391, label %392, label %397

392:                                              ; preds = %389
  %393 = load i8*, i8** %7, align 8
  %394 = load i8*, i8** %9, align 8
  %395 = load i64, i64* %8, align 8
  %396 = call i32 @strlcpy(i8* %393, i8* %394, i64 %395)
  br label %397

397:                                              ; preds = %392, %389
  ret void
}

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
