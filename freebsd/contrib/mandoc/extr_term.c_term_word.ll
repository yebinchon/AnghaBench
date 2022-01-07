; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term.c_term_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term.c_term_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i32, i64, i32, i32, i64 (%struct.termp*, i32)*, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i64, i32, i32, i8* }
%struct.roffsu = type { i32 }

@ASCII_NBRSP = common dso_local global i8 0, align 1
@TERMP_NOBUF = common dso_local global i32 0, align 4
@TERMP_NOSPACE = common dso_local global i32 0, align 4
@TERMP_KEEP = common dso_local global i32 0, align 4
@TERMP_SENTENCE = common dso_local global i32 0, align 4
@TERMP_PREKEEP = common dso_local global i32 0, align 4
@TERMP_NONOSPACE = common dso_local global i32 0, align 4
@TERMP_NONEWLINE = common dso_local global i32 0, align 4
@TERMP_NBRWORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\\ \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@TERMENC_ASCII = common dso_local global i64 0, align 8
@TERMFONT_BOLD = common dso_local global i32 0, align 4
@TERMFONT_UNDER = common dso_local global i32 0, align 4
@TERMFONT_BI = common dso_local global i32 0, align 4
@TERMFONT_NONE = common dso_local global i32 0, align 4
@TERMP_BACKAFTER = common dso_local global i32 0, align 4
@TERMTYPE_PDF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"pdf\00", align 1
@TERMTYPE_PS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@SCALE_EM = common dso_local global i32 0, align 4
@TERMP_BACKBEFORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @term_word(%struct.termp* %0, i8* %1) #0 {
  %3 = alloca %struct.termp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.roffsu, align 4
  %6 = alloca [2 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.termp* %0, %struct.termp** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %16 = load i8, i8* @ASCII_NBRSP, align 1
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 0, i8* %17, align 1
  %18 = load %struct.termp*, %struct.termp** %3, align 8
  %19 = getelementptr inbounds %struct.termp, %struct.termp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @TERMP_NOBUF, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %100

24:                                               ; preds = %2
  %25 = load %struct.termp*, %struct.termp** %3, align 8
  %26 = getelementptr inbounds %struct.termp, %struct.termp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TERMP_NOSPACE, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %24
  %32 = load %struct.termp*, %struct.termp** %3, align 8
  %33 = getelementptr inbounds %struct.termp, %struct.termp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @TERMP_KEEP, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %31
  %39 = load %struct.termp*, %struct.termp** %3, align 8
  %40 = call i32 @bufferc(%struct.termp* %39, i8 signext 32)
  %41 = load %struct.termp*, %struct.termp** %3, align 8
  %42 = getelementptr inbounds %struct.termp, %struct.termp* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @TERMP_SENTENCE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load %struct.termp*, %struct.termp** %3, align 8
  %49 = call i32 @bufferc(%struct.termp* %48, i8 signext 32)
  br label %50

50:                                               ; preds = %47, %38
  br label %55

51:                                               ; preds = %31
  %52 = load %struct.termp*, %struct.termp** %3, align 8
  %53 = load i8, i8* @ASCII_NBRSP, align 1
  %54 = call i32 @bufferc(%struct.termp* %52, i8 signext %53)
  br label %55

55:                                               ; preds = %51, %50
  br label %56

56:                                               ; preds = %55, %24
  %57 = load %struct.termp*, %struct.termp** %3, align 8
  %58 = getelementptr inbounds %struct.termp, %struct.termp* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @TERMP_PREKEEP, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load i32, i32* @TERMP_KEEP, align 4
  %65 = load %struct.termp*, %struct.termp** %3, align 8
  %66 = getelementptr inbounds %struct.termp, %struct.termp* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %63, %56
  %70 = load %struct.termp*, %struct.termp** %3, align 8
  %71 = getelementptr inbounds %struct.termp, %struct.termp* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @TERMP_NONOSPACE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load i32, i32* @TERMP_NOSPACE, align 4
  %78 = load %struct.termp*, %struct.termp** %3, align 8
  %79 = getelementptr inbounds %struct.termp, %struct.termp* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %89

82:                                               ; preds = %69
  %83 = load i32, i32* @TERMP_NOSPACE, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.termp*, %struct.termp** %3, align 8
  %86 = getelementptr inbounds %struct.termp, %struct.termp* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %82, %76
  %90 = load i32, i32* @TERMP_SENTENCE, align 4
  %91 = load i32, i32* @TERMP_NONEWLINE, align 4
  %92 = or i32 %90, %91
  %93 = xor i32 %92, -1
  %94 = load %struct.termp*, %struct.termp** %3, align 8
  %95 = getelementptr inbounds %struct.termp, %struct.termp* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load %struct.termp*, %struct.termp** %3, align 8
  %99 = getelementptr inbounds %struct.termp, %struct.termp* %98, i32 0, i32 7
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %89, %2
  br label %101

101:                                              ; preds = %677, %645, %644, %525, %524, %407, %388, %382, %300, %281, %248, %217, %214, %210, %206, %202, %198, %193, %162, %135, %123, %100
  %102 = load i8*, i8** %4, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 0, %104
  br i1 %105, label %106, label %678

106:                                              ; preds = %101
  %107 = load i8*, i8** %4, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 92, %109
  br i1 %110, label %111, label %145

111:                                              ; preds = %106
  %112 = load i32, i32* @TERMP_NBRWORD, align 4
  %113 = load %struct.termp*, %struct.termp** %3, align 8
  %114 = getelementptr inbounds %struct.termp, %struct.termp* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %112, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %111
  %119 = load i8*, i8** %4, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 32, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load %struct.termp*, %struct.termp** %3, align 8
  %125 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %126 = call i32 @encode(%struct.termp* %124, i8* %125, i64 1)
  %127 = load i8*, i8** %4, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %4, align 8
  br label %101

129:                                              ; preds = %118
  %130 = load i8*, i8** %4, align 8
  %131 = call i64 @strcspn(i8* %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %131, i64* %13, align 8
  br label %135

132:                                              ; preds = %111
  %133 = load i8*, i8** %4, align 8
  %134 = call i64 @strcspn(i8* %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i64 %134, i64* %13, align 8
  br label %135

135:                                              ; preds = %132, %129
  %136 = load %struct.termp*, %struct.termp** %3, align 8
  %137 = load i8*, i8** %4, align 8
  %138 = load i64, i64* %13, align 8
  %139 = call i32 @encode(%struct.termp* %136, i8* %137, i64 %138)
  %140 = load i64, i64* %13, align 8
  %141 = trunc i64 %140 to i32
  %142 = load i8*, i8** %4, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  store i8* %144, i8** %4, align 8
  br label %101

145:                                              ; preds = %106
  %146 = load i8*, i8** %4, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %4, align 8
  %148 = call i32 @mandoc_escape(i8** %4, i8** %7, i32* %9)
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  switch i32 %149, label %645 [
    i32 128, label %150
    i32 133, label %156
    i32 130, label %164
    i32 129, label %194
    i32 141, label %198
    i32 139, label %202
    i32 142, label %206
    i32 143, label %210
    i32 140, label %210
    i32 137, label %210
    i32 138, label %214
    i32 145, label %217
    i32 134, label %220
    i32 144, label %249
    i32 135, label %282
    i32 136, label %383
    i32 131, label %525
    i32 132, label %531
  ]

150:                                              ; preds = %145
  %151 = load i8*, i8** %7, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 1
  %153 = load i32, i32* %9, align 4
  %154 = sub nsw i32 %153, 1
  %155 = call i32 @mchars_num2uc(i8* %152, i32 %154)
  store i32 %155, i32* %10, align 4
  br label %646

156:                                              ; preds = %145
  %157 = load i8*, i8** %7, align 8
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @mchars_num2char(i8* %157, i32 %158)
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* %10, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %156
  br label %101

163:                                              ; preds = %156
  br label %646

164:                                              ; preds = %145
  %165 = load %struct.termp*, %struct.termp** %3, align 8
  %166 = getelementptr inbounds %struct.termp, %struct.termp* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @TERMENC_ASCII, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %182

170:                                              ; preds = %164
  %171 = load i8*, i8** %7, align 8
  %172 = load i32, i32* %9, align 4
  %173 = call i8* @mchars_spec2str(i8* %171, i32 %172, i64* %13)
  store i8* %173, i8** %8, align 8
  %174 = load i8*, i8** %8, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %181

176:                                              ; preds = %170
  %177 = load %struct.termp*, %struct.termp** %3, align 8
  %178 = load i8*, i8** %8, align 8
  %179 = load i64, i64* %13, align 8
  %180 = call i32 @encode(%struct.termp* %177, i8* %178, i64 %179)
  br label %181

181:                                              ; preds = %176, %170
  br label %193

182:                                              ; preds = %164
  %183 = load i8*, i8** %7, align 8
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @mchars_spec2cp(i8* %183, i32 %184)
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %182
  %189 = load %struct.termp*, %struct.termp** %3, align 8
  %190 = load i32, i32* %10, align 4
  %191 = call i32 @encode1(%struct.termp* %189, i32 %190)
  br label %192

192:                                              ; preds = %188, %182
  br label %193

193:                                              ; preds = %192, %181
  br label %101

194:                                              ; preds = %145
  %195 = load i8*, i8** %7, align 8
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  store i32 %197, i32* %10, align 4
  br label %646

198:                                              ; preds = %145
  %199 = load %struct.termp*, %struct.termp** %3, align 8
  %200 = load i32, i32* @TERMFONT_BOLD, align 4
  %201 = call i32 @term_fontrepl(%struct.termp* %199, i32 %200)
  br label %101

202:                                              ; preds = %145
  %203 = load %struct.termp*, %struct.termp** %3, align 8
  %204 = load i32, i32* @TERMFONT_UNDER, align 4
  %205 = call i32 @term_fontrepl(%struct.termp* %203, i32 %204)
  br label %101

206:                                              ; preds = %145
  %207 = load %struct.termp*, %struct.termp** %3, align 8
  %208 = load i32, i32* @TERMFONT_BI, align 4
  %209 = call i32 @term_fontrepl(%struct.termp* %207, i32 %208)
  br label %101

210:                                              ; preds = %145, %145, %145
  %211 = load %struct.termp*, %struct.termp** %3, align 8
  %212 = load i32, i32* @TERMFONT_NONE, align 4
  %213 = call i32 @term_fontrepl(%struct.termp* %211, i32 %212)
  br label %101

214:                                              ; preds = %145
  %215 = load %struct.termp*, %struct.termp** %3, align 8
  %216 = call i32 @term_fontlast(%struct.termp* %215)
  br label %101

217:                                              ; preds = %145
  %218 = load %struct.termp*, %struct.termp** %3, align 8
  %219 = call i32 @bufferc(%struct.termp* %218, i8 signext 10)
  br label %101

220:                                              ; preds = %145
  %221 = load %struct.termp*, %struct.termp** %3, align 8
  %222 = getelementptr inbounds %struct.termp, %struct.termp* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @TERMP_BACKAFTER, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %220
  %228 = load i32, i32* @TERMP_BACKAFTER, align 4
  %229 = xor i32 %228, -1
  %230 = load %struct.termp*, %struct.termp** %3, align 8
  %231 = getelementptr inbounds %struct.termp, %struct.termp* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = and i32 %232, %229
  store i32 %233, i32* %231, align 8
  br label %248

234:                                              ; preds = %220
  %235 = load i8*, i8** %4, align 8
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %234
  %240 = load i32, i32* @TERMP_NOSPACE, align 4
  %241 = load i32, i32* @TERMP_NONEWLINE, align 4
  %242 = or i32 %240, %241
  %243 = load %struct.termp*, %struct.termp** %3, align 8
  %244 = getelementptr inbounds %struct.termp, %struct.termp* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = or i32 %245, %242
  store i32 %246, i32* %244, align 8
  br label %247

247:                                              ; preds = %239, %234
  br label %248

248:                                              ; preds = %247, %227
  br label %101

249:                                              ; preds = %145
  %250 = load %struct.termp*, %struct.termp** %3, align 8
  %251 = getelementptr inbounds %struct.termp, %struct.termp* %250, i32 0, i32 6
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @TERMTYPE_PDF, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %258

255:                                              ; preds = %249
  %256 = load %struct.termp*, %struct.termp** %3, align 8
  %257 = call i32 @encode(%struct.termp* %256, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 3)
  br label %281

258:                                              ; preds = %249
  %259 = load %struct.termp*, %struct.termp** %3, align 8
  %260 = getelementptr inbounds %struct.termp, %struct.termp* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @TERMTYPE_PS, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %267

264:                                              ; preds = %258
  %265 = load %struct.termp*, %struct.termp** %3, align 8
  %266 = call i32 @encode(%struct.termp* %265, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i64 2)
  br label %280

267:                                              ; preds = %258
  %268 = load %struct.termp*, %struct.termp** %3, align 8
  %269 = getelementptr inbounds %struct.termp, %struct.termp* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @TERMENC_ASCII, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %276

273:                                              ; preds = %267
  %274 = load %struct.termp*, %struct.termp** %3, align 8
  %275 = call i32 @encode(%struct.termp* %274, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 5)
  br label %279

276:                                              ; preds = %267
  %277 = load %struct.termp*, %struct.termp** %3, align 8
  %278 = call i32 @encode(%struct.termp* %277, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 4)
  br label %279

279:                                              ; preds = %276, %273
  br label %280

280:                                              ; preds = %279, %264
  br label %281

281:                                              ; preds = %280, %255
  br label %101

282:                                              ; preds = %145
  %283 = load i8*, i8** %7, align 8
  %284 = load i8, i8* %283, align 1
  %285 = sext i8 %284 to i32
  %286 = icmp eq i32 %285, 124
  br i1 %286, label %287, label %294

287:                                              ; preds = %282
  %288 = load i8*, i8** %7, align 8
  %289 = getelementptr inbounds i8, i8* %288, i32 1
  store i8* %289, i8** %7, align 8
  %290 = load %struct.termp*, %struct.termp** %3, align 8
  %291 = getelementptr inbounds %struct.termp, %struct.termp* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = sub nsw i32 0, %292
  store i32 %293, i32* %10, align 4
  br label %295

294:                                              ; preds = %282
  store i32 0, i32* %10, align 4
  br label %295

295:                                              ; preds = %294, %287
  %296 = load i8*, i8** %7, align 8
  %297 = load i32, i32* @SCALE_EM, align 4
  %298 = call i8* @a2roffsu(i8* %296, %struct.roffsu* %5, i32 %297)
  %299 = icmp eq i8* %298, null
  br i1 %299, label %300, label %301

300:                                              ; preds = %295
  br label %101

301:                                              ; preds = %295
  %302 = load %struct.termp*, %struct.termp** %3, align 8
  %303 = call i32 @term_hen(%struct.termp* %302, %struct.roffsu* %5)
  %304 = load i32, i32* %10, align 4
  %305 = add nsw i32 %304, %303
  store i32 %305, i32* %10, align 4
  %306 = load i32, i32* %10, align 4
  %307 = icmp sgt i32 %306, 0
  br i1 %307, label %308, label %318

308:                                              ; preds = %301
  br label %309

309:                                              ; preds = %313, %308
  %310 = load i32, i32* %10, align 4
  %311 = add nsw i32 %310, -1
  store i32 %311, i32* %10, align 4
  %312 = icmp sgt i32 %310, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %309
  %314 = load %struct.termp*, %struct.termp** %3, align 8
  %315 = load i8, i8* @ASCII_NBRSP, align 1
  %316 = call i32 @bufferc(%struct.termp* %314, i8 signext %315)
  br label %309

317:                                              ; preds = %309
  br label %382

318:                                              ; preds = %301
  %319 = load %struct.termp*, %struct.termp** %3, align 8
  %320 = getelementptr inbounds %struct.termp, %struct.termp* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = sext i32 %321 to i64
  %323 = load i32, i32* %10, align 4
  %324 = sub nsw i32 0, %323
  %325 = sext i32 %324 to i64
  %326 = icmp ugt i64 %322, %325
  br i1 %326, label %327, label %333

327:                                              ; preds = %318
  %328 = load i32, i32* %10, align 4
  %329 = load %struct.termp*, %struct.termp** %3, align 8
  %330 = getelementptr inbounds %struct.termp, %struct.termp* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  %332 = add nsw i32 %331, %328
  store i32 %332, i32* %330, align 8
  br label %381

333:                                              ; preds = %318
  %334 = load %struct.termp*, %struct.termp** %3, align 8
  %335 = getelementptr inbounds %struct.termp, %struct.termp* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* %10, align 4
  %338 = add nsw i32 %337, %336
  store i32 %338, i32* %10, align 4
  %339 = load %struct.termp*, %struct.termp** %3, align 8
  %340 = getelementptr inbounds %struct.termp, %struct.termp* %339, i32 0, i32 2
  store i32 0, i32* %340, align 8
  %341 = load %struct.termp*, %struct.termp** %3, align 8
  %342 = getelementptr inbounds %struct.termp, %struct.termp* %341, i32 0, i32 5
  %343 = load %struct.TYPE_2__*, %struct.TYPE_2__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = load i32, i32* %10, align 4
  %347 = sub nsw i32 0, %346
  %348 = sext i32 %347 to i64
  %349 = icmp ugt i64 %345, %348
  br i1 %349, label %350, label %364

350:                                              ; preds = %333
  %351 = load i32, i32* %10, align 4
  %352 = load %struct.termp*, %struct.termp** %3, align 8
  %353 = getelementptr inbounds %struct.termp, %struct.termp* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 4
  %355 = add nsw i32 %354, %351
  store i32 %355, i32* %353, align 4
  %356 = load i32, i32* %10, align 4
  %357 = sext i32 %356 to i64
  %358 = load %struct.termp*, %struct.termp** %3, align 8
  %359 = getelementptr inbounds %struct.termp, %struct.termp* %358, i32 0, i32 5
  %360 = load %struct.TYPE_2__*, %struct.TYPE_2__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = add i64 %362, %357
  store i64 %363, i64* %361, align 8
  br label %380

364:                                              ; preds = %333
  %365 = load %struct.termp*, %struct.termp** %3, align 8
  %366 = getelementptr inbounds %struct.termp, %struct.termp* %365, i32 0, i32 5
  %367 = load %struct.TYPE_2__*, %struct.TYPE_2__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = load %struct.termp*, %struct.termp** %3, align 8
  %371 = getelementptr inbounds %struct.termp, %struct.termp* %370, i32 0, i32 3
  %372 = load i32, i32* %371, align 4
  %373 = sext i32 %372 to i64
  %374 = sub i64 %373, %369
  %375 = trunc i64 %374 to i32
  store i32 %375, i32* %371, align 4
  %376 = load %struct.termp*, %struct.termp** %3, align 8
  %377 = getelementptr inbounds %struct.termp, %struct.termp* %376, i32 0, i32 5
  %378 = load %struct.TYPE_2__*, %struct.TYPE_2__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %378, i32 0, i32 0
  store i64 0, i64* %379, align 8
  br label %380

380:                                              ; preds = %364, %350
  br label %381

381:                                              ; preds = %380, %327
  br label %382

382:                                              ; preds = %381, %317
  br label %101

383:                                              ; preds = %145
  %384 = load i8*, i8** %7, align 8
  %385 = load i32, i32* @SCALE_EM, align 4
  %386 = call i8* @a2roffsu(i8* %384, %struct.roffsu* %5, i32 %385)
  store i8* %386, i8** %8, align 8
  %387 = icmp eq i8* %386, null
  br i1 %387, label %388, label %389

388:                                              ; preds = %383
  br label %101

389:                                              ; preds = %383
  %390 = load %struct.termp*, %struct.termp** %3, align 8
  %391 = call i32 @term_hen(%struct.termp* %390, %struct.roffsu* %5)
  store i32 %391, i32* %10, align 4
  %392 = load i32, i32* %10, align 4
  %393 = icmp sle i32 %392, 0
  br i1 %393, label %394, label %421

394:                                              ; preds = %389
  %395 = load %struct.termp*, %struct.termp** %3, align 8
  %396 = getelementptr inbounds %struct.termp, %struct.termp* %395, i32 0, i32 5
  %397 = load %struct.TYPE_2__*, %struct.TYPE_2__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 8
  %400 = sext i32 %399 to i64
  %401 = load %struct.termp*, %struct.termp** %3, align 8
  %402 = getelementptr inbounds %struct.termp, %struct.termp* %401, i32 0, i32 5
  %403 = load %struct.TYPE_2__*, %struct.TYPE_2__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %403, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = icmp ule i64 %400, %405
  br i1 %406, label %407, label %408

407:                                              ; preds = %394
  br label %101

408:                                              ; preds = %394
  %409 = load %struct.termp*, %struct.termp** %3, align 8
  %410 = getelementptr inbounds %struct.termp, %struct.termp* %409, i32 0, i32 5
  %411 = load %struct.TYPE_2__*, %struct.TYPE_2__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 8
  %414 = sext i32 %413 to i64
  %415 = load %struct.termp*, %struct.termp** %3, align 8
  %416 = getelementptr inbounds %struct.termp, %struct.termp* %415, i32 0, i32 5
  %417 = load %struct.TYPE_2__*, %struct.TYPE_2__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %417, i32 0, i32 0
  %419 = load i64, i64* %418, align 8
  %420 = sub i64 %414, %419
  store i64 %420, i64* %12, align 8
  br label %424

421:                                              ; preds = %389
  %422 = load i32, i32* %10, align 4
  %423 = sext i32 %422 to i64
  store i64 %423, i64* %12, align 8
  br label %424

424:                                              ; preds = %421, %408
  %425 = load i8*, i8** %8, align 8
  %426 = load i8, i8* %425, align 1
  %427 = sext i8 %426 to i32
  %428 = load i8*, i8** %7, align 8
  %429 = getelementptr inbounds i8, i8* %428, i64 -1
  %430 = load i8, i8* %429, align 1
  %431 = sext i8 %430 to i32
  %432 = icmp eq i32 %427, %431
  br i1 %432, label %433, label %434

433:                                              ; preds = %424
  store i32 -1, i32* %10, align 4
  br label %469

434:                                              ; preds = %424
  %435 = load i8*, i8** %8, align 8
  %436 = load i8, i8* %435, align 1
  %437 = sext i8 %436 to i32
  %438 = icmp eq i32 %437, 92
  br i1 %438, label %439, label %464

439:                                              ; preds = %434
  %440 = load i8*, i8** %8, align 8
  %441 = getelementptr inbounds i8, i8* %440, i64 1
  store i8* %441, i8** %7, align 8
  %442 = call i32 @mandoc_escape(i8** %7, i8** %8, i32* %9)
  store i32 %442, i32* %14, align 4
  %443 = load i32, i32* %14, align 4
  switch i32 %443, label %462 [
    i32 128, label %444
    i32 133, label %450
    i32 130, label %454
    i32 129, label %458
  ]

444:                                              ; preds = %439
  %445 = load i8*, i8** %8, align 8
  %446 = getelementptr inbounds i8, i8* %445, i64 1
  %447 = load i32, i32* %9, align 4
  %448 = sub nsw i32 %447, 1
  %449 = call i32 @mchars_num2uc(i8* %446, i32 %448)
  store i32 %449, i32* %10, align 4
  br label %463

450:                                              ; preds = %439
  %451 = load i8*, i8** %8, align 8
  %452 = load i32, i32* %9, align 4
  %453 = call i32 @mchars_num2char(i8* %451, i32 %452)
  store i32 %453, i32* %10, align 4
  br label %463

454:                                              ; preds = %439
  %455 = load i8*, i8** %8, align 8
  %456 = load i32, i32* %9, align 4
  %457 = call i32 @mchars_spec2cp(i8* %455, i32 %456)
  store i32 %457, i32* %10, align 4
  br label %463

458:                                              ; preds = %439
  %459 = load i8*, i8** %7, align 8
  %460 = load i8, i8* %459, align 1
  %461 = sext i8 %460 to i32
  store i32 %461, i32* %10, align 4
  br label %463

462:                                              ; preds = %439
  store i32 -1, i32* %10, align 4
  br label %463

463:                                              ; preds = %462, %458, %454, %450, %444
  br label %468

464:                                              ; preds = %434
  %465 = load i8*, i8** %8, align 8
  %466 = load i8, i8* %465, align 1
  %467 = sext i8 %466 to i32
  store i32 %467, i32* %10, align 4
  br label %468

468:                                              ; preds = %464, %463
  br label %469

469:                                              ; preds = %468, %433
  %470 = load i32, i32* %10, align 4
  %471 = icmp slt i32 %470, 32
  br i1 %471, label %478, label %472

472:                                              ; preds = %469
  %473 = load i32, i32* %10, align 4
  %474 = icmp sgt i32 %473, 126
  br i1 %474, label %475, label %479

475:                                              ; preds = %472
  %476 = load i32, i32* %10, align 4
  %477 = icmp slt i32 %476, 160
  br i1 %477, label %478, label %479

478:                                              ; preds = %475, %469
  store i32 95, i32* %10, align 4
  br label %479

479:                                              ; preds = %478, %475, %472
  %480 = load %struct.termp*, %struct.termp** %3, align 8
  %481 = getelementptr inbounds %struct.termp, %struct.termp* %480, i32 0, i32 1
  %482 = load i64, i64* %481, align 8
  %483 = load i64, i64* @TERMENC_ASCII, align 8
  %484 = icmp eq i64 %482, %483
  br i1 %484, label %485, label %493

485:                                              ; preds = %479
  %486 = load i32, i32* %10, align 4
  %487 = call i8* @ascii_uc2str(i32 %486)
  store i8* %487, i8** %8, align 8
  %488 = load %struct.termp*, %struct.termp** %3, align 8
  %489 = load i8*, i8** %8, align 8
  %490 = call i64 @term_strlen(%struct.termp* %488, i8* %489)
  store i64 %490, i64* %11, align 8
  %491 = load i8*, i8** %8, align 8
  %492 = call i64 @strlen(i8* %491)
  store i64 %492, i64* %13, align 8
  br label %500

493:                                              ; preds = %479
  %494 = load %struct.termp*, %struct.termp** %3, align 8
  %495 = getelementptr inbounds %struct.termp, %struct.termp* %494, i32 0, i32 4
  %496 = load i64 (%struct.termp*, i32)*, i64 (%struct.termp*, i32)** %495, align 8
  %497 = load %struct.termp*, %struct.termp** %3, align 8
  %498 = load i32, i32* %10, align 4
  %499 = call i64 %496(%struct.termp* %497, i32 %498)
  store i64 %499, i64* %11, align 8
  br label %500

500:                                              ; preds = %493, %485
  br label %501

501:                                              ; preds = %520, %500
  %502 = load i64, i64* %12, align 8
  %503 = load i64, i64* %11, align 8
  %504 = icmp uge i64 %502, %503
  br i1 %504, label %505, label %524

505:                                              ; preds = %501
  %506 = load %struct.termp*, %struct.termp** %3, align 8
  %507 = getelementptr inbounds %struct.termp, %struct.termp* %506, i32 0, i32 1
  %508 = load i64, i64* %507, align 8
  %509 = load i64, i64* @TERMENC_ASCII, align 8
  %510 = icmp eq i64 %508, %509
  br i1 %510, label %511, label %516

511:                                              ; preds = %505
  %512 = load %struct.termp*, %struct.termp** %3, align 8
  %513 = load i8*, i8** %8, align 8
  %514 = load i64, i64* %13, align 8
  %515 = call i32 @encode(%struct.termp* %512, i8* %513, i64 %514)
  br label %520

516:                                              ; preds = %505
  %517 = load %struct.termp*, %struct.termp** %3, align 8
  %518 = load i32, i32* %10, align 4
  %519 = call i32 @encode1(%struct.termp* %517, i32 %518)
  br label %520

520:                                              ; preds = %516, %511
  %521 = load i64, i64* %11, align 8
  %522 = load i64, i64* %12, align 8
  %523 = sub i64 %522, %521
  store i64 %523, i64* %12, align 8
  br label %501

524:                                              ; preds = %501
  br label %101

525:                                              ; preds = %145
  %526 = load i32, i32* @TERMP_BACKAFTER, align 4
  %527 = load %struct.termp*, %struct.termp** %3, align 8
  %528 = getelementptr inbounds %struct.termp, %struct.termp* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 8
  %530 = or i32 %529, %526
  store i32 %530, i32* %528, align 8
  br label %101

531:                                              ; preds = %145
  %532 = load i8*, i8** %7, align 8
  %533 = load i32, i32* %9, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds i8, i8* %532, i64 %534
  store i8* %535, i8** %8, align 8
  br label %536

536:                                              ; preds = %577, %545, %531
  %537 = load i8*, i8** %7, align 8
  %538 = load i8*, i8** %8, align 8
  %539 = icmp ult i8* %537, %538
  br i1 %539, label %540, label %578

540:                                              ; preds = %536
  %541 = load i8*, i8** %7, align 8
  %542 = load i8, i8* %541, align 1
  %543 = sext i8 %542 to i32
  %544 = icmp eq i32 %543, 92
  br i1 %544, label %545, label %547

545:                                              ; preds = %540
  %546 = call i32 @mandoc_escape(i8** %7, i8** null, i32* null)
  br label %536

547:                                              ; preds = %540
  %548 = load %struct.termp*, %struct.termp** %3, align 8
  %549 = load i8*, i8** %7, align 8
  %550 = getelementptr inbounds i8, i8* %549, i32 1
  store i8* %550, i8** %7, align 8
  %551 = load i8, i8* %549, align 1
  %552 = sext i8 %551 to i32
  %553 = call i32 @encode1(%struct.termp* %548, i32 %552)
  %554 = load i8*, i8** %7, align 8
  %555 = load i8*, i8** %8, align 8
  %556 = icmp ult i8* %554, %555
  br i1 %556, label %557, label %577

557:                                              ; preds = %547
  %558 = load %struct.termp*, %struct.termp** %3, align 8
  %559 = getelementptr inbounds %struct.termp, %struct.termp* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 8
  %561 = load i32, i32* @TERMP_BACKBEFORE, align 4
  %562 = and i32 %560, %561
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %564, label %570

564:                                              ; preds = %557
  %565 = load i32, i32* @TERMP_BACKAFTER, align 4
  %566 = load %struct.termp*, %struct.termp** %3, align 8
  %567 = getelementptr inbounds %struct.termp, %struct.termp* %566, i32 0, i32 0
  %568 = load i32, i32* %567, align 8
  %569 = or i32 %568, %565
  store i32 %569, i32* %567, align 8
  br label %576

570:                                              ; preds = %557
  %571 = load i32, i32* @TERMP_BACKBEFORE, align 4
  %572 = load %struct.termp*, %struct.termp** %3, align 8
  %573 = getelementptr inbounds %struct.termp, %struct.termp* %572, i32 0, i32 0
  %574 = load i32, i32* %573, align 8
  %575 = or i32 %574, %571
  store i32 %575, i32* %573, align 8
  br label %576

576:                                              ; preds = %570, %564
  br label %577

577:                                              ; preds = %576, %547
  br label %536

578:                                              ; preds = %536
  %579 = load %struct.termp*, %struct.termp** %3, align 8
  %580 = getelementptr inbounds %struct.termp, %struct.termp* %579, i32 0, i32 5
  %581 = load %struct.TYPE_2__*, %struct.TYPE_2__** %580, align 8
  %582 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %581, i32 0, i32 2
  %583 = load i32, i32* %582, align 4
  %584 = icmp sgt i32 %583, 2
  br i1 %584, label %585, label %626

585:                                              ; preds = %578
  %586 = load %struct.termp*, %struct.termp** %3, align 8
  %587 = getelementptr inbounds %struct.termp, %struct.termp* %586, i32 0, i32 5
  %588 = load %struct.TYPE_2__*, %struct.TYPE_2__** %587, align 8
  %589 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %588, i32 0, i32 3
  %590 = load i8*, i8** %589, align 8
  %591 = load %struct.termp*, %struct.termp** %3, align 8
  %592 = getelementptr inbounds %struct.termp, %struct.termp* %591, i32 0, i32 5
  %593 = load %struct.TYPE_2__*, %struct.TYPE_2__** %592, align 8
  %594 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %593, i32 0, i32 2
  %595 = load i32, i32* %594, align 4
  %596 = sub nsw i32 %595, 1
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds i8, i8* %590, i64 %597
  %599 = load i8, i8* %598, align 1
  %600 = sext i8 %599 to i32
  %601 = icmp eq i32 %600, 32
  br i1 %601, label %619, label %602

602:                                              ; preds = %585
  %603 = load %struct.termp*, %struct.termp** %3, align 8
  %604 = getelementptr inbounds %struct.termp, %struct.termp* %603, i32 0, i32 5
  %605 = load %struct.TYPE_2__*, %struct.TYPE_2__** %604, align 8
  %606 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %605, i32 0, i32 3
  %607 = load i8*, i8** %606, align 8
  %608 = load %struct.termp*, %struct.termp** %3, align 8
  %609 = getelementptr inbounds %struct.termp, %struct.termp* %608, i32 0, i32 5
  %610 = load %struct.TYPE_2__*, %struct.TYPE_2__** %609, align 8
  %611 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %610, i32 0, i32 2
  %612 = load i32, i32* %611, align 4
  %613 = sub nsw i32 %612, 1
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds i8, i8* %607, i64 %614
  %616 = load i8, i8* %615, align 1
  %617 = sext i8 %616 to i32
  %618 = icmp eq i32 %617, 9
  br i1 %618, label %619, label %626

619:                                              ; preds = %602, %585
  %620 = load %struct.termp*, %struct.termp** %3, align 8
  %621 = getelementptr inbounds %struct.termp, %struct.termp* %620, i32 0, i32 5
  %622 = load %struct.TYPE_2__*, %struct.TYPE_2__** %621, align 8
  %623 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %622, i32 0, i32 2
  %624 = load i32, i32* %623, align 4
  %625 = sub nsw i32 %624, 2
  store i32 %625, i32* %623, align 4
  br label %626

626:                                              ; preds = %619, %602, %578
  %627 = load %struct.termp*, %struct.termp** %3, align 8
  %628 = getelementptr inbounds %struct.termp, %struct.termp* %627, i32 0, i32 2
  %629 = load i32, i32* %628, align 8
  %630 = load %struct.termp*, %struct.termp** %3, align 8
  %631 = getelementptr inbounds %struct.termp, %struct.termp* %630, i32 0, i32 5
  %632 = load %struct.TYPE_2__*, %struct.TYPE_2__** %631, align 8
  %633 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %632, i32 0, i32 2
  %634 = load i32, i32* %633, align 4
  %635 = icmp sgt i32 %629, %634
  br i1 %635, label %636, label %644

636:                                              ; preds = %626
  %637 = load %struct.termp*, %struct.termp** %3, align 8
  %638 = getelementptr inbounds %struct.termp, %struct.termp* %637, i32 0, i32 5
  %639 = load %struct.TYPE_2__*, %struct.TYPE_2__** %638, align 8
  %640 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %639, i32 0, i32 2
  %641 = load i32, i32* %640, align 4
  %642 = load %struct.termp*, %struct.termp** %3, align 8
  %643 = getelementptr inbounds %struct.termp, %struct.termp* %642, i32 0, i32 2
  store i32 %641, i32* %643, align 8
  br label %644

644:                                              ; preds = %636, %626
  br label %101

645:                                              ; preds = %145
  br label %101

646:                                              ; preds = %194, %163, %150
  %647 = load %struct.termp*, %struct.termp** %3, align 8
  %648 = getelementptr inbounds %struct.termp, %struct.termp* %647, i32 0, i32 1
  %649 = load i64, i64* %648, align 8
  %650 = load i64, i64* @TERMENC_ASCII, align 8
  %651 = icmp eq i64 %649, %650
  br i1 %651, label %652, label %660

652:                                              ; preds = %646
  %653 = load i32, i32* %10, align 4
  %654 = call i8* @ascii_uc2str(i32 %653)
  store i8* %654, i8** %8, align 8
  %655 = load %struct.termp*, %struct.termp** %3, align 8
  %656 = load i8*, i8** %8, align 8
  %657 = load i8*, i8** %8, align 8
  %658 = call i64 @strlen(i8* %657)
  %659 = call i32 @encode(%struct.termp* %655, i8* %656, i64 %658)
  br label %677

660:                                              ; preds = %646
  %661 = load i32, i32* %10, align 4
  %662 = icmp slt i32 %661, 32
  br i1 %662, label %663, label %666

663:                                              ; preds = %660
  %664 = load i32, i32* %10, align 4
  %665 = icmp ne i32 %664, 9
  br i1 %665, label %672, label %666

666:                                              ; preds = %663, %660
  %667 = load i32, i32* %10, align 4
  %668 = icmp sgt i32 %667, 126
  br i1 %668, label %669, label %673

669:                                              ; preds = %666
  %670 = load i32, i32* %10, align 4
  %671 = icmp slt i32 %670, 160
  br i1 %671, label %672, label %673

672:                                              ; preds = %669, %663
  store i32 65533, i32* %10, align 4
  br label %673

673:                                              ; preds = %672, %669, %666
  %674 = load %struct.termp*, %struct.termp** %3, align 8
  %675 = load i32, i32* %10, align 4
  %676 = call i32 @encode1(%struct.termp* %674, i32 %675)
  br label %677

677:                                              ; preds = %673, %652
  br label %101

678:                                              ; preds = %101
  %679 = load i32, i32* @TERMP_NBRWORD, align 4
  %680 = xor i32 %679, -1
  %681 = load %struct.termp*, %struct.termp** %3, align 8
  %682 = getelementptr inbounds %struct.termp, %struct.termp* %681, i32 0, i32 0
  %683 = load i32, i32* %682, align 8
  %684 = and i32 %683, %680
  store i32 %684, i32* %682, align 8
  ret void
}

declare dso_local i32 @bufferc(%struct.termp*, i8 signext) #1

declare dso_local i32 @encode(%struct.termp*, i8*, i64) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @mandoc_escape(i8**, i8**, i32*) #1

declare dso_local i32 @mchars_num2uc(i8*, i32) #1

declare dso_local i32 @mchars_num2char(i8*, i32) #1

declare dso_local i8* @mchars_spec2str(i8*, i32, i64*) #1

declare dso_local i32 @mchars_spec2cp(i8*, i32) #1

declare dso_local i32 @encode1(%struct.termp*, i32) #1

declare dso_local i32 @term_fontrepl(%struct.termp*, i32) #1

declare dso_local i32 @term_fontlast(%struct.termp*) #1

declare dso_local i8* @a2roffsu(i8*, %struct.roffsu*, i32) #1

declare dso_local i32 @term_hen(%struct.termp*, %struct.roffsu*) #1

declare dso_local i8* @ascii_uc2str(i32) #1

declare dso_local i64 @term_strlen(%struct.termp*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
