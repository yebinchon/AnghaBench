; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"!),.:;?]\00", align 1
@outflags = common dso_local global i32 0, align 4
@MD_spc_force = common dso_local global i32 0, align 4
@MD_spc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@code_blocks = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"nbsp\00", align 1
@escflags = common dso_local global i32 0, align 4
@ESC_BOL = common dso_local global i32 0, align 4
@ESC_HYP = common dso_local global i32 0, align 4
@ESC_NUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"equals\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"markdown\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"**\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"***\00", align 1
@stdout = common dso_local global i32 0, align 4
@outcount = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"&#%d;\00", align 1
@ESC_FON = common dso_local global i32 0, align 4
@ESC_SQU = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"  \0A\00", align 1
@ESC_EOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @md_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @md_word(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %1
  %18 = load i8*, i8** %2, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load i8*, i8** %2, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = call i32* @strchr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8 signext %26)
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load i32, i32* @outflags, align 4
  %31 = load i32, i32* @MD_spc_force, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, i32* @MD_spc, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* @outflags, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* @outflags, align 4
  br label %39

39:                                               ; preds = %34, %29, %23, %17, %1
  %40 = call i32 (...) @md_preword()
  %41 = load i8*, i8** %2, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %367

46:                                               ; preds = %39
  %47 = load i8*, i8** %2, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 40
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load i8*, i8** %2, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 91
  br i1 %57, label %58, label %69

58:                                               ; preds = %52, %46
  %59 = load i8*, i8** %2, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i32, i32* @MD_spc, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* @outflags, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* @outflags, align 4
  br label %69

69:                                               ; preds = %64, %58, %52
  store i32 0, i32* %11, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %70

70:                                               ; preds = %338, %195, %98, %69
  %71 = load i8*, i8** %2, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %2, align 8
  %73 = load i8, i8* %71, align 1
  store i8 %73, i8* %7, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %339

76:                                               ; preds = %70
  store i32 0, i32* %8, align 4
  %77 = load i8, i8* %7, align 1
  %78 = sext i8 %77 to i32
  switch i32 %78, label %294 [
    i32 145, label %79
    i32 146, label %86
    i32 147, label %98
    i32 35, label %99
    i32 43, label %99
    i32 45, label %99
    i32 40, label %111
    i32 41, label %123
    i32 42, label %135
    i32 91, label %135
    i32 95, label %135
    i32 96, label %135
    i32 46, label %140
    i32 60, label %152
    i32 61, label %158
    i32 62, label %169
    i32 92, label %175
    i32 93, label %279
  ]

79:                                               ; preds = %76
  %80 = load i32, i32* @code_blocks, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i8 32, i8* %7, align 1
  br label %85

83:                                               ; preds = %79
  %84 = call i32 @md_named(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8 0, i8* %7, align 1
  br label %85

85:                                               ; preds = %83, %82
  br label %295

86:                                               ; preds = %76
  %87 = load i32, i32* @escflags, align 4
  %88 = load i32, i32* @ESC_BOL, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i32, i32* @code_blocks, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  br label %95

95:                                               ; preds = %91, %86
  %96 = phi i1 [ false, %86 ], [ %94, %91 ]
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %8, align 4
  store i8 45, i8* %7, align 1
  br label %295

98:                                               ; preds = %76
  br label %70

99:                                               ; preds = %76, %76, %76
  %100 = load i32, i32* @escflags, align 4
  %101 = load i32, i32* @ESC_BOL, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* @code_blocks, align 4
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  br label %108

108:                                              ; preds = %104, %99
  %109 = phi i1 [ false, %99 ], [ %107, %104 ]
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %8, align 4
  br label %295

111:                                              ; preds = %76
  %112 = load i32, i32* @escflags, align 4
  %113 = load i32, i32* @ESC_HYP, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i32, i32* @code_blocks, align 4
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  br label %120

120:                                              ; preds = %116, %111
  %121 = phi i1 [ false, %111 ], [ %119, %116 ]
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %8, align 4
  br label %295

123:                                              ; preds = %76
  %124 = load i32, i32* @escflags, align 4
  %125 = load i32, i32* @ESC_NUM, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i32, i32* @code_blocks, align 4
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  br label %132

132:                                              ; preds = %128, %123
  %133 = phi i1 [ false, %123 ], [ %131, %128 ]
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %8, align 4
  br label %295

135:                                              ; preds = %76, %76, %76, %76
  %136 = load i32, i32* @code_blocks, align 4
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  store i32 %139, i32* %8, align 4
  br label %295

140:                                              ; preds = %76
  %141 = load i32, i32* @escflags, align 4
  %142 = load i32, i32* @ESC_NUM, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load i32, i32* @code_blocks, align 4
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  br label %149

149:                                              ; preds = %145, %140
  %150 = phi i1 [ false, %140 ], [ %148, %145 ]
  %151 = zext i1 %150 to i32
  store i32 %151, i32* %8, align 4
  br label %295

152:                                              ; preds = %76
  %153 = load i32, i32* @code_blocks, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = call i32 @md_named(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i8 0, i8* %7, align 1
  br label %157

157:                                              ; preds = %155, %152
  br label %295

158:                                              ; preds = %76
  %159 = load i32, i32* @escflags, align 4
  %160 = load i32, i32* @ESC_BOL, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %158
  %164 = load i32, i32* @code_blocks, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %163
  %167 = call i32 @md_named(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i8 0, i8* %7, align 1
  br label %168

168:                                              ; preds = %166, %163, %158
  br label %295

169:                                              ; preds = %76
  %170 = load i32, i32* @code_blocks, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = call i32 @md_named(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i8 0, i8* %7, align 1
  br label %174

174:                                              ; preds = %172, %169
  br label %295

175:                                              ; preds = %76
  store i32 0, i32* %10, align 4
  store i8* null, i8** %6, align 8
  %176 = call i32 @mandoc_escape(i8** %2, i8** %3, i32* %9)
  switch i32 %176, label %205 [
    i32 128, label %177
    i32 133, label %183
    i32 130, label %187
    i32 129, label %191
    i32 143, label %195
    i32 139, label %197
    i32 137, label %198
    i32 140, label %199
    i32 141, label %200
    i32 138, label %200
    i32 135, label %200
    i32 136, label %201
    i32 144, label %203
    i32 134, label %204
    i32 131, label %204
    i32 132, label %204
    i32 142, label %204
  ]

177:                                              ; preds = %175
  %178 = load i8*, i8** %3, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 1
  %180 = load i32, i32* %9, align 4
  %181 = sub nsw i32 %180, 1
  %182 = call i32 @mchars_num2uc(i8* %179, i32 %181)
  store i32 %182, i32* %10, align 4
  br label %206

183:                                              ; preds = %175
  %184 = load i8*, i8** %3, align 8
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @mchars_num2char(i8* %184, i32 %185)
  store i32 %186, i32* %10, align 4
  br label %206

187:                                              ; preds = %175
  %188 = load i8*, i8** %3, align 8
  %189 = load i32, i32* %9, align 4
  %190 = call i32 @mchars_spec2cp(i8* %188, i32 %189)
  store i32 %190, i32* %10, align 4
  br label %206

191:                                              ; preds = %175
  %192 = load i8*, i8** %3, align 8
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  store i32 %194, i32* %10, align 4
  br label %206

195:                                              ; preds = %175
  %196 = call i32 @md_rawword(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %70

197:                                              ; preds = %175
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %206

198:                                              ; preds = %175
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  br label %206

199:                                              ; preds = %175
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %6, align 8
  br label %206

200:                                              ; preds = %175, %175, %175
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %206

201:                                              ; preds = %175
  %202 = load i8*, i8** %4, align 8
  store i8* %202, i8** %6, align 8
  br label %206

203:                                              ; preds = %175
  store i32 1, i32* %11, align 4
  br label %206

204:                                              ; preds = %175, %175, %175, %175
  br label %205

205:                                              ; preds = %175, %204
  br label %206

206:                                              ; preds = %205, %203, %201, %200, %199, %198, %197, %191, %187, %183, %177
  %207 = load i8*, i8** %6, align 8
  %208 = icmp ne i8* %207, null
  br i1 %208, label %209, label %239

209:                                              ; preds = %206
  %210 = load i32, i32* @code_blocks, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %239, label %212

212:                                              ; preds = %209
  %213 = load i8*, i8** %5, align 8
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %212
  %218 = load i32, i32* @MD_spc, align 4
  %219 = xor i32 %218, -1
  %220 = load i32, i32* @outflags, align 4
  %221 = and i32 %220, %219
  store i32 %221, i32* @outflags, align 4
  %222 = load i8*, i8** %5, align 8
  %223 = call i32 @md_rawword(i8* %222)
  br label %224

224:                                              ; preds = %217, %212
  %225 = load i8*, i8** %5, align 8
  store i8* %225, i8** %4, align 8
  %226 = load i8*, i8** %6, align 8
  store i8* %226, i8** %5, align 8
  %227 = load i8*, i8** %5, align 8
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %224
  %232 = load i32, i32* @MD_spc, align 4
  %233 = xor i32 %232, -1
  %234 = load i32, i32* @outflags, align 4
  %235 = and i32 %234, %233
  store i32 %235, i32* @outflags, align 4
  %236 = load i8*, i8** %5, align 8
  %237 = call i32 @md_rawword(i8* %236)
  br label %238

238:                                              ; preds = %231, %224
  br label %239

239:                                              ; preds = %238, %209, %206
  %240 = load i32, i32* %10, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %278

242:                                              ; preds = %239
  %243 = load i32, i32* %10, align 4
  %244 = icmp slt i32 %243, 32
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  %246 = load i32, i32* %10, align 4
  %247 = icmp ne i32 %246, 9
  br i1 %247, label %254, label %248

248:                                              ; preds = %245, %242
  %249 = load i32, i32* %10, align 4
  %250 = icmp sgt i32 %249, 126
  br i1 %250, label %251, label %255

251:                                              ; preds = %248
  %252 = load i32, i32* %10, align 4
  %253 = icmp slt i32 %252, 160
  br i1 %253, label %254, label %255

254:                                              ; preds = %251, %245
  store i32 65533, i32* %10, align 4
  br label %255

255:                                              ; preds = %254, %251, %248
  %256 = load i32, i32* @code_blocks, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %268

258:                                              ; preds = %255
  %259 = load i32, i32* %10, align 4
  %260 = call i8* @mchars_uc2str(i32 %259)
  store i8* %260, i8** %3, align 8
  %261 = load i8*, i8** %3, align 8
  %262 = load i32, i32* @stdout, align 4
  %263 = call i32 @fputs(i8* %261, i32 %262)
  %264 = load i8*, i8** %3, align 8
  %265 = call i32 @strlen(i8* %264)
  %266 = load i32, i32* @outcount, align 4
  %267 = add nsw i32 %266, %265
  store i32 %267, i32* @outcount, align 4
  br label %273

268:                                              ; preds = %255
  %269 = load i32, i32* %10, align 4
  %270 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %269)
  %271 = load i32, i32* @outcount, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* @outcount, align 4
  br label %273

273:                                              ; preds = %268, %258
  %274 = load i32, i32* @ESC_FON, align 4
  %275 = xor i32 %274, -1
  %276 = load i32, i32* @escflags, align 4
  %277 = and i32 %276, %275
  store i32 %277, i32* @escflags, align 4
  br label %278

278:                                              ; preds = %273, %239
  store i8 0, i8* %7, align 1
  br label %295

279:                                              ; preds = %76
  %280 = load i32, i32* @escflags, align 4
  %281 = load i32, i32* @ESC_SQU, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %279
  %285 = load i32, i32* @code_blocks, align 4
  %286 = icmp ne i32 %285, 0
  %287 = xor i1 %286, true
  br label %288

288:                                              ; preds = %284, %279
  %289 = phi i1 [ false, %279 ], [ %287, %284 ]
  %290 = zext i1 %289 to i32
  store i32 %290, i32* %8, align 4
  %291 = load i32, i32* @ESC_HYP, align 4
  %292 = load i32, i32* @escflags, align 4
  %293 = or i32 %292, %291
  store i32 %293, i32* @escflags, align 4
  br label %295

294:                                              ; preds = %76
  br label %295

295:                                              ; preds = %294, %288, %278, %174, %168, %157, %149, %135, %132, %120, %108, %95, %85
  %296 = load i32, i32* %8, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %295
  %299 = call i32 @putchar(i8 signext 92)
  br label %300

300:                                              ; preds = %298, %295
  %301 = load i8, i8* %7, align 1
  %302 = call i32 @md_char(i8 signext %301)
  %303 = load i32, i32* %11, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %338

305:                                              ; preds = %300
  %306 = load i8*, i8** %2, align 8
  %307 = load i8, i8* %306, align 1
  %308 = sext i8 %307 to i32
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %320, label %310

310:                                              ; preds = %305
  %311 = load i8*, i8** %2, align 8
  %312 = load i8, i8* %311, align 1
  %313 = sext i8 %312 to i32
  %314 = icmp eq i32 %313, 32
  br i1 %314, label %320, label %315

315:                                              ; preds = %310
  %316 = load i8*, i8** %2, align 8
  %317 = load i8, i8* %316, align 1
  %318 = sext i8 %317 to i32
  %319 = icmp eq i32 %318, 145
  br i1 %319, label %320, label %338

320:                                              ; preds = %315, %310, %305
  %321 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %322

322:                                              ; preds = %334, %320
  %323 = load i8*, i8** %2, align 8
  %324 = load i8, i8* %323, align 1
  %325 = sext i8 %324 to i32
  %326 = icmp eq i32 %325, 32
  br i1 %326, label %332, label %327

327:                                              ; preds = %322
  %328 = load i8*, i8** %2, align 8
  %329 = load i8, i8* %328, align 1
  %330 = sext i8 %329 to i32
  %331 = icmp eq i32 %330, 145
  br label %332

332:                                              ; preds = %327, %322
  %333 = phi i1 [ true, %322 ], [ %331, %327 ]
  br i1 %333, label %334, label %337

334:                                              ; preds = %332
  %335 = load i8*, i8** %2, align 8
  %336 = getelementptr inbounds i8, i8* %335, i32 1
  store i8* %336, i8** %2, align 8
  br label %322

337:                                              ; preds = %332
  br label %338

338:                                              ; preds = %337, %315, %300
  br label %70

339:                                              ; preds = %70
  %340 = load i8*, i8** %5, align 8
  %341 = load i8, i8* %340, align 1
  %342 = sext i8 %341 to i32
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %351

344:                                              ; preds = %339
  %345 = load i32, i32* @MD_spc, align 4
  %346 = xor i32 %345, -1
  %347 = load i32, i32* @outflags, align 4
  %348 = and i32 %347, %346
  store i32 %348, i32* @outflags, align 4
  %349 = load i8*, i8** %5, align 8
  %350 = call i32 @md_rawword(i8* %349)
  br label %367

351:                                              ; preds = %339
  %352 = load i8*, i8** %2, align 8
  %353 = getelementptr inbounds i8, i8* %352, i64 -2
  %354 = load i8, i8* %353, align 1
  %355 = sext i8 %354 to i32
  %356 = icmp eq i32 %355, 32
  br i1 %356, label %357, label %361

357:                                              ; preds = %351
  %358 = load i32, i32* @ESC_EOL, align 4
  %359 = load i32, i32* @escflags, align 4
  %360 = or i32 %359, %358
  store i32 %360, i32* @escflags, align 4
  br label %366

361:                                              ; preds = %351
  %362 = load i32, i32* @ESC_EOL, align 4
  %363 = xor i32 %362, -1
  %364 = load i32, i32* @escflags, align 4
  %365 = and i32 %364, %363
  store i32 %365, i32* @escflags, align 4
  br label %366

366:                                              ; preds = %361, %357
  br label %367

367:                                              ; preds = %45, %366, %344
  ret void
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @md_preword(...) #1

declare dso_local i32 @md_named(i8*) #1

declare dso_local i32 @mandoc_escape(i8**, i8**, i32*) #1

declare dso_local i32 @mchars_num2uc(i8*, i32) #1

declare dso_local i32 @mchars_num2char(i8*, i32) #1

declare dso_local i32 @mchars_spec2cp(i8*, i32) #1

declare dso_local i32 @md_rawword(i8*) #1

declare dso_local i8* @mchars_uc2str(i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @md_char(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
