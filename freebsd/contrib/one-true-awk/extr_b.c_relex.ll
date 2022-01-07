; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_b.c_relex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_b.c_relex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charclass = type { i32 (i32)*, i32, i32* }

@relex.buf = internal global i8* null, align 8
@relex.bufsz = internal global i32 100, align 4
@prestr = common dso_local global i8* null, align 8
@starttok = common dso_local global i8* null, align 8
@OR = common dso_local global i32 0, align 4
@STAR = common dso_local global i32 0, align 4
@PLUS = common dso_local global i32 0, align 4
@QUEST = common dso_local global i32 0, align 4
@DOT = common dso_local global i32 0, align 4
@rlxval = common dso_local global i8 0, align 1
@CHAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"out of space in reg expr %.10s..\00", align 1
@lastre = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"relex1\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"out of space for reg expr %.10s...\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"nonterminated character class %.20s...\00", align 1
@charclasses = common dso_local global %struct.charclass* null, align 8
@UCHAR_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"relex2\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"nonterminated character class %.20s\00", align 1
@rlxstr = common dso_local global i8* null, align 8
@CCL = common dso_local global i32 0, align 4
@NCCL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"illegal repetition expression: class %.20s\00", align 1
@lastatom = common dso_local global i32 0, align 4
@EMPTYRE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @relex() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.charclass*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  br label %15

15:                                               ; preds = %417, %0
  %16 = load i8*, i8** @prestr, align 8
  store i8* %16, i8** @starttok, align 8
  %17 = load i8*, i8** @prestr, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** @prestr, align 8
  %19 = load i8, i8* %17, align 1
  %20 = sext i8 %19 to i32
  store i32 %20, i32* %2, align 4
  switch i32 %20, label %39 [
    i32 124, label %21
    i32 42, label %23
    i32 43, label %25
    i32 63, label %27
    i32 46, label %29
    i32 0, label %31
    i32 94, label %34
    i32 36, label %34
    i32 40, label %34
    i32 41, label %34
    i32 92, label %36
    i32 91, label %43
    i32 123, label %326
  ]

21:                                               ; preds = %15
  %22 = load i32, i32* @OR, align 4
  store i32 %22, i32* %1, align 4
  br label %454

23:                                               ; preds = %15
  %24 = load i32, i32* @STAR, align 4
  store i32 %24, i32* %1, align 4
  br label %454

25:                                               ; preds = %15
  %26 = load i32, i32* @PLUS, align 4
  store i32 %26, i32* %1, align 4
  br label %454

27:                                               ; preds = %15
  %28 = load i32, i32* @QUEST, align 4
  store i32 %28, i32* %1, align 4
  br label %454

29:                                               ; preds = %15
  %30 = load i32, i32* @DOT, align 4
  store i32 %30, i32* %1, align 4
  br label %454

31:                                               ; preds = %15
  %32 = load i8*, i8** @prestr, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 -1
  store i8* %33, i8** @prestr, align 8
  store i32 0, i32* %1, align 4
  br label %454

34:                                               ; preds = %15, %15, %15, %15
  %35 = load i32, i32* %2, align 4
  store i32 %35, i32* %1, align 4
  br label %454

36:                                               ; preds = %15
  %37 = call signext i8 @quoted(i8** @prestr)
  store i8 %37, i8* @rlxval, align 1
  %38 = load i32, i32* @CHAR, align 4
  store i32 %38, i32* %1, align 4
  br label %454

39:                                               ; preds = %15
  %40 = load i32, i32* %2, align 4
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* @rlxval, align 1
  %42 = load i32, i32* @CHAR, align 4
  store i32 %42, i32* %1, align 4
  br label %454

43:                                               ; preds = %15
  %44 = load i8*, i8** @relex.buf, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load i32, i32* @relex.bufsz, align 4
  %48 = call i64 @malloc(i32 %47)
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** @relex.buf, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @lastre, align 4
  %53 = call i32 @FATAL(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %51, %46, %43
  %55 = load i8*, i8** @relex.buf, align 8
  store i8* %55, i8** %5, align 8
  %56 = load i8*, i8** @prestr, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 94
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  %61 = load i8*, i8** @prestr, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** @prestr, align 8
  br label %64

63:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %60
  %65 = load i8*, i8** @prestr, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = mul nsw i32 2, %66
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @adjbuf(i8** @relex.buf, i32* @relex.bufsz, i32 %69, i32 %70, i8** %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %64
  %74 = load i32, i32* @lastre, align 4
  %75 = call i32 @FATAL(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %73, %64
  br label %77

77:                                               ; preds = %325, %76
  %78 = load i8*, i8** @prestr, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** @prestr, align 8
  %80 = load i8, i8* %78, align 1
  %81 = sext i8 %80 to i32
  store i32 %81, i32* %2, align 4
  %82 = icmp eq i32 %81, 92
  br i1 %82, label %83, label %99

83:                                               ; preds = %77
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %5, align 8
  store i8 92, i8* %84, align 1
  %86 = load i8*, i8** @prestr, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** @prestr, align 8
  %88 = load i8, i8* %86, align 1
  %89 = sext i8 %88 to i32
  store i32 %89, i32* %2, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = load i32, i32* @lastre, align 4
  %93 = call i32 @FATAL(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %91, %83
  %95 = load i32, i32* %2, align 4
  %96 = trunc i32 %95 to i8
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %5, align 8
  store i8 %96, i8* %97, align 1
  br label %325

99:                                               ; preds = %77
  %100 = load i32, i32* %2, align 4
  %101 = icmp eq i32 %100, 91
  br i1 %101, label %102, label %208

102:                                              ; preds = %99
  %103 = load i8*, i8** @prestr, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 58
  br i1 %106, label %107, label %208

107:                                              ; preds = %102
  %108 = load %struct.charclass*, %struct.charclass** @charclasses, align 8
  store %struct.charclass* %108, %struct.charclass** %6, align 8
  br label %109

109:                                              ; preds = %128, %107
  %110 = load %struct.charclass*, %struct.charclass** %6, align 8
  %111 = getelementptr inbounds %struct.charclass, %struct.charclass* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %131

114:                                              ; preds = %109
  %115 = load i8*, i8** @prestr, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  %117 = load %struct.charclass*, %struct.charclass** %6, align 8
  %118 = getelementptr inbounds %struct.charclass, %struct.charclass* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = bitcast i32* %119 to i8*
  %121 = load %struct.charclass*, %struct.charclass** %6, align 8
  %122 = getelementptr inbounds %struct.charclass, %struct.charclass* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @strncmp(i8* %116, i8* %120, i32 %123)
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %114
  br label %131

127:                                              ; preds = %114
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.charclass*, %struct.charclass** %6, align 8
  %130 = getelementptr inbounds %struct.charclass, %struct.charclass* %129, i32 1
  store %struct.charclass* %130, %struct.charclass** %6, align 8
  br label %109

131:                                              ; preds = %126, %109
  %132 = load %struct.charclass*, %struct.charclass** %6, align 8
  %133 = getelementptr inbounds %struct.charclass, %struct.charclass* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %202

136:                                              ; preds = %131
  %137 = load i8*, i8** @prestr, align 8
  %138 = load %struct.charclass*, %struct.charclass** %6, align 8
  %139 = getelementptr inbounds %struct.charclass, %struct.charclass* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 1, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %137, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 58
  br i1 %146, label %147, label %202

147:                                              ; preds = %136
  %148 = load i8*, i8** @prestr, align 8
  %149 = load %struct.charclass*, %struct.charclass** %6, align 8
  %150 = getelementptr inbounds %struct.charclass, %struct.charclass* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 2, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %148, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 93
  br i1 %157, label %158, label %202

158:                                              ; preds = %147
  %159 = load %struct.charclass*, %struct.charclass** %6, align 8
  %160 = getelementptr inbounds %struct.charclass, %struct.charclass* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, 3
  %163 = load i8*, i8** @prestr, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  store i8* %165, i8** @prestr, align 8
  store i32 1, i32* %7, align 4
  br label %166

166:                                              ; preds = %198, %158
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* @UCHAR_MAX, align 4
  %169 = icmp sle i32 %167, %168
  br i1 %169, label %170, label %201

170:                                              ; preds = %166
  %171 = load i8*, i8** %5, align 8
  %172 = load i8*, i8** @relex.buf, align 8
  %173 = ptrtoint i8* %171 to i64
  %174 = ptrtoint i8* %172 to i64
  %175 = sub i64 %173, %174
  %176 = add nsw i64 %175, 1
  %177 = trunc i64 %176 to i32
  %178 = call i32 @adjbuf(i8** @relex.buf, i32* @relex.bufsz, i32 %177, i32 100, i8** %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %170
  %181 = load i32, i32* @lastre, align 4
  %182 = call i32 @FATAL(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %181)
  br label %183

183:                                              ; preds = %180, %170
  %184 = load %struct.charclass*, %struct.charclass** %6, align 8
  %185 = getelementptr inbounds %struct.charclass, %struct.charclass* %184, i32 0, i32 0
  %186 = load i32 (i32)*, i32 (i32)** %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = call i32 %186(i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %183
  %191 = load i32, i32* %7, align 4
  %192 = trunc i32 %191 to i8
  %193 = load i8*, i8** %5, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %5, align 8
  store i8 %192, i8* %193, align 1
  %195 = load i32, i32* %3, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %190, %183
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %7, align 4
  br label %166

201:                                              ; preds = %166
  br label %207

202:                                              ; preds = %147, %136, %131
  %203 = load i32, i32* %2, align 4
  %204 = trunc i32 %203 to i8
  %205 = load i8*, i8** %5, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %206, i8** %5, align 8
  store i8 %204, i8* %205, align 1
  br label %207

207:                                              ; preds = %202, %201
  br label %324

208:                                              ; preds = %102, %99
  %209 = load i32, i32* %2, align 4
  %210 = icmp eq i32 %209, 91
  br i1 %210, label %211, label %246

211:                                              ; preds = %208
  %212 = load i8*, i8** @prestr, align 8
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp eq i32 %214, 46
  br i1 %215, label %216, label %246

216:                                              ; preds = %211
  %217 = load i8*, i8** @prestr, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** @prestr, align 8
  %219 = load i8*, i8** @prestr, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %220, i8** @prestr, align 8
  %221 = load i8, i8* %219, align 1
  store i8 %221, i8* %13, align 1
  %222 = load i8*, i8** @prestr, align 8
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %224, 46
  br i1 %225, label %226, label %245

226:                                              ; preds = %216
  %227 = load i8*, i8** @prestr, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 1
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp eq i32 %230, 93
  br i1 %231, label %232, label %245

232:                                              ; preds = %226
  %233 = load i8*, i8** @prestr, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 2
  store i8* %234, i8** @prestr, align 8
  %235 = load i8*, i8** @prestr, align 8
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp eq i32 %237, 93
  br i1 %238, label %239, label %244

239:                                              ; preds = %232
  %240 = load i8*, i8** @prestr, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** @prestr, align 8
  %242 = load i8, i8* %13, align 1
  store i8 %242, i8* @rlxval, align 1
  %243 = load i32, i32* @CHAR, align 4
  store i32 %243, i32* %1, align 4
  br label %454

244:                                              ; preds = %232
  br label %245

245:                                              ; preds = %244, %226, %216
  br label %323

246:                                              ; preds = %211, %208
  %247 = load i32, i32* %2, align 4
  %248 = icmp eq i32 %247, 91
  br i1 %248, label %249, label %284

249:                                              ; preds = %246
  %250 = load i8*, i8** @prestr, align 8
  %251 = load i8, i8* %250, align 1
  %252 = sext i8 %251 to i32
  %253 = icmp eq i32 %252, 61
  br i1 %253, label %254, label %284

254:                                              ; preds = %249
  %255 = load i8*, i8** @prestr, align 8
  %256 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %256, i8** @prestr, align 8
  %257 = load i8*, i8** @prestr, align 8
  %258 = getelementptr inbounds i8, i8* %257, i32 1
  store i8* %258, i8** @prestr, align 8
  %259 = load i8, i8* %257, align 1
  store i8 %259, i8* %14, align 1
  %260 = load i8*, i8** @prestr, align 8
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp eq i32 %262, 61
  br i1 %263, label %264, label %283

264:                                              ; preds = %254
  %265 = load i8*, i8** @prestr, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 1
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  %269 = icmp eq i32 %268, 93
  br i1 %269, label %270, label %283

270:                                              ; preds = %264
  %271 = load i8*, i8** @prestr, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 2
  store i8* %272, i8** @prestr, align 8
  %273 = load i8*, i8** @prestr, align 8
  %274 = load i8, i8* %273, align 1
  %275 = sext i8 %274 to i32
  %276 = icmp eq i32 %275, 93
  br i1 %276, label %277, label %282

277:                                              ; preds = %270
  %278 = load i8*, i8** @prestr, align 8
  %279 = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %279, i8** @prestr, align 8
  %280 = load i8, i8* %14, align 1
  store i8 %280, i8* @rlxval, align 1
  %281 = load i32, i32* @CHAR, align 4
  store i32 %281, i32* %1, align 4
  br label %454

282:                                              ; preds = %270
  br label %283

283:                                              ; preds = %282, %264, %254
  br label %322

284:                                              ; preds = %249, %246
  %285 = load i32, i32* %2, align 4
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %284
  %288 = load i32, i32* @lastre, align 4
  %289 = call i32 @FATAL(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %288)
  br label %321

290:                                              ; preds = %284
  %291 = load i8*, i8** %5, align 8
  %292 = load i8*, i8** @relex.buf, align 8
  %293 = icmp eq i8* %291, %292
  br i1 %293, label %294, label %299

294:                                              ; preds = %290
  %295 = load i32, i32* %2, align 4
  %296 = trunc i32 %295 to i8
  %297 = load i8*, i8** %5, align 8
  %298 = getelementptr inbounds i8, i8* %297, i32 1
  store i8* %298, i8** %5, align 8
  store i8 %296, i8* %297, align 1
  br label %320

299:                                              ; preds = %290
  %300 = load i32, i32* %2, align 4
  %301 = icmp eq i32 %300, 93
  br i1 %301, label %302, label %314

302:                                              ; preds = %299
  %303 = load i8*, i8** %5, align 8
  %304 = getelementptr inbounds i8, i8* %303, i32 1
  store i8* %304, i8** %5, align 8
  store i8 0, i8* %303, align 1
  %305 = load i8*, i8** @relex.buf, align 8
  %306 = call i64 @tostring(i8* %305)
  %307 = inttoptr i64 %306 to i8*
  store i8* %307, i8** @rlxstr, align 8
  %308 = load i32, i32* %4, align 4
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %302
  %311 = load i32, i32* @CCL, align 4
  store i32 %311, i32* %1, align 4
  br label %454

312:                                              ; preds = %302
  %313 = load i32, i32* @NCCL, align 4
  store i32 %313, i32* %1, align 4
  br label %454

314:                                              ; preds = %299
  %315 = load i32, i32* %2, align 4
  %316 = trunc i32 %315 to i8
  %317 = load i8*, i8** %5, align 8
  %318 = getelementptr inbounds i8, i8* %317, i32 1
  store i8* %318, i8** %5, align 8
  store i8 %316, i8* %317, align 1
  br label %319

319:                                              ; preds = %314
  br label %320

320:                                              ; preds = %319, %294
  br label %321

321:                                              ; preds = %320, %287
  br label %322

322:                                              ; preds = %321, %283
  br label %323

323:                                              ; preds = %322, %245
  br label %324

324:                                              ; preds = %323, %207
  br label %325

325:                                              ; preds = %324, %94
  br label %77

326:                                              ; preds = %15
  %327 = load i8*, i8** @prestr, align 8
  %328 = load i8, i8* %327, align 1
  %329 = sext i8 %328 to i32
  %330 = call i32 @isdigit(i32 %329) #3
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %326
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %3, align 4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %333 = load i8*, i8** @prestr, align 8
  %334 = getelementptr inbounds i8, i8* %333, i64 -1
  store i8* %334, i8** %12, align 8
  br label %339

335:                                              ; preds = %326
  %336 = load i32, i32* %2, align 4
  %337 = trunc i32 %336 to i8
  store i8 %337, i8* @rlxval, align 1
  %338 = load i32, i32* @CHAR, align 4
  store i32 %338, i32* %1, align 4
  br label %454

339:                                              ; preds = %332
  br label %340

340:                                              ; preds = %453, %339
  %341 = load i8*, i8** @prestr, align 8
  %342 = getelementptr inbounds i8, i8* %341, i32 1
  store i8* %342, i8** @prestr, align 8
  %343 = load i8, i8* %341, align 1
  %344 = sext i8 %343 to i32
  store i32 %344, i32* %2, align 4
  %345 = icmp eq i32 %344, 125
  br i1 %345, label %346, label %420

346:                                              ; preds = %340
  %347 = load i32, i32* %10, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %381

349:                                              ; preds = %346
  %350 = load i32, i32* %11, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %369

352:                                              ; preds = %349
  %353 = load i32, i32* %8, align 4
  store i32 %353, i32* %9, align 4
  %354 = load i32, i32* %9, align 4
  %355 = load i32, i32* %3, align 4
  %356 = icmp slt i32 %354, %355
  br i1 %356, label %357, label %360

357:                                              ; preds = %352
  %358 = load i32, i32* @lastre, align 4
  %359 = call i32 @FATAL(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %358)
  br label %360

360:                                              ; preds = %357, %352
  %361 = load i32, i32* %3, align 4
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %368

363:                                              ; preds = %360
  %364 = load i32, i32* %9, align 4
  %365 = icmp eq i32 %364, 1
  br i1 %365, label %366, label %368

366:                                              ; preds = %363
  %367 = load i32, i32* @QUEST, align 4
  store i32 %367, i32* %1, align 4
  br label %454

368:                                              ; preds = %363, %360
  br label %380

369:                                              ; preds = %349
  %370 = load i32, i32* %3, align 4
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %374

372:                                              ; preds = %369
  %373 = load i32, i32* @STAR, align 4
  store i32 %373, i32* %1, align 4
  br label %454

374:                                              ; preds = %369
  %375 = load i32, i32* %3, align 4
  %376 = icmp eq i32 %375, 1
  br i1 %376, label %377, label %379

377:                                              ; preds = %374
  %378 = load i32, i32* @PLUS, align 4
  store i32 %378, i32* %1, align 4
  br label %454

379:                                              ; preds = %374
  br label %380

380:                                              ; preds = %379, %368
  br label %391

381:                                              ; preds = %346
  %382 = load i32, i32* %11, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %387

384:                                              ; preds = %381
  %385 = load i32, i32* %8, align 4
  store i32 %385, i32* %3, align 4
  %386 = load i32, i32* %8, align 4
  store i32 %386, i32* %9, align 4
  br label %390

387:                                              ; preds = %381
  %388 = load i32, i32* @lastre, align 4
  %389 = call i32 @FATAL(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %388)
  br label %390

390:                                              ; preds = %387, %384
  br label %391

391:                                              ; preds = %390, %380
  %392 = load i8*, i8** @starttok, align 8
  %393 = load i8*, i8** @prestr, align 8
  %394 = load i8*, i8** @starttok, align 8
  %395 = ptrtoint i8* %393 to i64
  %396 = ptrtoint i8* %394 to i64
  %397 = sub i64 %395, %396
  %398 = inttoptr i64 %397 to i8*
  %399 = load i32, i32* @lastatom, align 4
  %400 = load i8*, i8** %12, align 8
  %401 = load i32, i32* @lastatom, align 4
  %402 = sext i32 %401 to i64
  %403 = sub i64 0, %402
  %404 = getelementptr inbounds i8, i8* %400, i64 %403
  %405 = load i32, i32* %3, align 4
  %406 = load i32, i32* %9, align 4
  %407 = call i32 @repeat(i8* %392, i8* %398, i32 %399, i8* %404, i32 %405, i32 %406)
  %408 = icmp sgt i32 %407, 0
  br i1 %408, label %409, label %418

409:                                              ; preds = %391
  %410 = load i32, i32* %3, align 4
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %417

412:                                              ; preds = %409
  %413 = load i32, i32* %9, align 4
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %417

415:                                              ; preds = %412
  %416 = load i32, i32* @EMPTYRE, align 4
  store i32 %416, i32* %1, align 4
  br label %454

417:                                              ; preds = %412, %409
  br label %15

418:                                              ; preds = %391
  %419 = load i32, i32* @PLUS, align 4
  store i32 %419, i32* %1, align 4
  br label %454

420:                                              ; preds = %340
  %421 = load i32, i32* %2, align 4
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %426

423:                                              ; preds = %420
  %424 = load i32, i32* @lastre, align 4
  %425 = call i32 @FATAL(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %424)
  br label %452

426:                                              ; preds = %420
  %427 = load i32, i32* %2, align 4
  %428 = call i32 @isdigit(i32 %427) #3
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %436

430:                                              ; preds = %426
  %431 = load i32, i32* %8, align 4
  %432 = mul nsw i32 10, %431
  %433 = load i32, i32* %2, align 4
  %434 = add nsw i32 %432, %433
  %435 = sub nsw i32 %434, 48
  store i32 %435, i32* %8, align 4
  store i32 1, i32* %11, align 4
  br label %451

436:                                              ; preds = %426
  %437 = load i32, i32* %2, align 4
  %438 = icmp eq i32 %437, 44
  br i1 %438, label %439, label %447

439:                                              ; preds = %436
  %440 = load i32, i32* %10, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %445

442:                                              ; preds = %439
  %443 = load i32, i32* @lastre, align 4
  %444 = call i32 @FATAL(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %443)
  br label %445

445:                                              ; preds = %442, %439
  store i32 1, i32* %10, align 4
  %446 = load i32, i32* %8, align 4
  store i32 %446, i32* %3, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %450

447:                                              ; preds = %436
  %448 = load i32, i32* @lastre, align 4
  %449 = call i32 @FATAL(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %448)
  br label %450

450:                                              ; preds = %447, %445
  br label %451

451:                                              ; preds = %450, %430
  br label %452

452:                                              ; preds = %451, %423
  br label %453

453:                                              ; preds = %452
  br label %340

454:                                              ; preds = %418, %415, %377, %372, %366, %335, %312, %310, %277, %239, %39, %36, %34, %31, %29, %27, %25, %23, %21
  %455 = load i32, i32* %1, align 4
  ret i32 %455
}

declare dso_local signext i8 @quoted(i8**) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @FATAL(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @adjbuf(i8**, i32*, i32, i32, i8**, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @tostring(i8*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #2

declare dso_local i32 @repeat(i8*, i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
