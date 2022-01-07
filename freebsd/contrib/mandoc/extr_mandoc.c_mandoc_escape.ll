; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandoc.c_mandoc_escape.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandoc.c_mandoc_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESCAPE_ERROR = common dso_local global i32 0, align 4
@ESCAPE_UNSUPP = common dso_local global i32 0, align 4
@ESCAPE_IGNORE = common dso_local global i32 0, align 4
@ESCAPE_NOSPACE = common dso_local global i32 0, align 4
@ESCAPE_BREAK = common dso_local global i32 0, align 4
@ESCAPE_SKIPCHAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"(.T\00", align 1
@ESCAPE_DEVICE = common dso_local global i32 0, align 4
@ESCAPE_OVERSTRIKE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c" %&()*+-./0123456789:<=>\00", align 1
@ESCAPE_HORIZ = common dso_local global i32 0, align 4
@ESCAPE_HLINE = common dso_local global i32 0, align 4
@ESCAPE_NUMBERED = common dso_local global i32 0, align 4
@ASCII_HYPH = common dso_local global i8 0, align 1
@ESCAPE_UNDEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"89ABCDEF\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"0123456789ABCDEFabcdef\00", align 1
@ESCAPE_UNICODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mandoc_escape(i8** %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i8**, i8*** %6, align 8
  %15 = icmp eq i8** null, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i8** %8, i8*** %6, align 8
  br label %17

17:                                               ; preds = %16, %3
  %18 = load i32*, i32** %7, align 8
  %19 = icmp eq i32* null, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32* %9, i32** %7, align 8
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i8**, i8*** %5, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 69
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i8**, i8*** %5, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %28, align 8
  br label %31

31:                                               ; preds = %27, %21
  %32 = load i32, i32* @ESCAPE_ERROR, align 4
  store i32 %32, i32* %13, align 4
  %33 = load i8**, i8*** %5, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %33, align 8
  %36 = load i8**, i8*** %6, align 8
  store i8* %35, i8** %36, align 8
  %37 = load i32*, i32** %7, align 8
  store i32 0, i32* %37, align 4
  store i8 0, i8* %12, align 1
  %38 = load i8**, i8*** %6, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 -1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  switch i32 %42, label %358 [
    i32 40, label %43
    i32 91, label %45
    i32 67, label %57
    i32 33, label %70
    i32 63, label %70
    i32 37, label %72
    i32 38, label %72
    i32 41, label %72
    i32 44, label %72
    i32 47, label %72
    i32 94, label %72
    i32 97, label %72
    i32 100, label %72
    i32 114, label %72
    i32 116, label %72
    i32 117, label %72
    i32 123, label %72
    i32 124, label %72
    i32 125, label %72
    i32 99, label %74
    i32 112, label %76
    i32 122, label %78
    i32 70, label %80
    i32 102, label %80
    i32 103, label %80
    i32 107, label %80
    i32 77, label %80
    i32 109, label %80
    i32 110, label %80
    i32 79, label %80
    i32 86, label %80
    i32 89, label %80
    i32 42, label %157
    i32 65, label %171
    i32 98, label %171
    i32 68, label %171
    i32 82, label %171
    i32 88, label %171
    i32 90, label %171
    i32 111, label %173
    i32 104, label %195
    i32 72, label %195
    i32 76, label %195
    i32 108, label %195
    i32 83, label %195
    i32 118, label %195
    i32 120, label %195
    i32 78, label %233
    i32 115, label %288
    i32 32, label %357
    i32 39, label %357
    i32 45, label %357
    i32 46, label %357
    i32 48, label %357
    i32 58, label %357
    i32 95, label %357
    i32 96, label %357
    i32 101, label %357
    i32 126, label %357
  ]

43:                                               ; preds = %31
  store i32 128, i32* %13, align 4
  %44 = load i32*, i32** %7, align 8
  store i32 2, i32* %44, align 4
  br label %370

45:                                               ; preds = %31
  %46 = load i8**, i8*** %6, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 32
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load i8**, i8*** %5, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %52, align 8
  %55 = load i32, i32* @ESCAPE_ERROR, align 4
  store i32 %55, i32* %4, align 4
  br label %615

56:                                               ; preds = %45
  store i32 128, i32* %13, align 4
  store i8 93, i8* %12, align 1
  br label %370

57:                                               ; preds = %31
  %58 = load i8**, i8*** %6, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 39, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @ESCAPE_ERROR, align 4
  store i32 %64, i32* %4, align 4
  br label %615

65:                                               ; preds = %57
  %66 = load i8**, i8*** %5, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %66, align 8
  %69 = load i8**, i8*** %6, align 8
  store i8* %68, i8** %69, align 8
  store i32 128, i32* %13, align 4
  store i8 39, i8* %12, align 1
  br label %370

70:                                               ; preds = %31, %31
  %71 = load i32, i32* @ESCAPE_UNSUPP, align 4
  store i32 %71, i32* %4, align 4
  br label %615

72:                                               ; preds = %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31
  %73 = load i32, i32* @ESCAPE_IGNORE, align 4
  store i32 %73, i32* %4, align 4
  br label %615

74:                                               ; preds = %31
  %75 = load i32, i32* @ESCAPE_NOSPACE, align 4
  store i32 %75, i32* %4, align 4
  br label %615

76:                                               ; preds = %31
  %77 = load i32, i32* @ESCAPE_BREAK, align 4
  store i32 %77, i32* %4, align 4
  br label %615

78:                                               ; preds = %31
  %79 = load i32, i32* @ESCAPE_SKIPCHAR, align 4
  store i32 %79, i32* %4, align 4
  br label %615

80:                                               ; preds = %31, %31, %31, %31, %31, %31, %31, %31, %31, %31
  %81 = load i8**, i8*** %6, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 -1
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 102
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %90

88:                                               ; preds = %80
  %89 = load i32, i32* @ESCAPE_IGNORE, align 4
  br label %90

90:                                               ; preds = %88, %87
  %91 = phi i32 [ 129, %87 ], [ %89, %88 ]
  store i32 %91, i32* %13, align 4
  %92 = load i8**, i8*** %6, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  switch i32 %95, label %136 [
    i32 40, label %96
    i32 91, label %111
  ]

96:                                               ; preds = %90
  %97 = load i8**, i8*** %6, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 -1
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 79
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* @ESCAPE_ERROR, align 4
  store i32 %104, i32* %13, align 4
  br label %105

105:                                              ; preds = %103, %96
  %106 = load i8**, i8*** %5, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %106, align 8
  %109 = load i8**, i8*** %6, align 8
  store i8* %108, i8** %109, align 8
  %110 = load i32*, i32** %7, align 8
  store i32 2, i32* %110, align 4
  br label %156

111:                                              ; preds = %90
  %112 = load i8**, i8*** %6, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 -1
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 79
  br i1 %117, label %118, label %131

118:                                              ; preds = %111
  %119 = load i8**, i8*** %6, align 8
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 53
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = load i32, i32* @ESCAPE_UNSUPP, align 4
  br label %129

127:                                              ; preds = %118
  %128 = load i32, i32* @ESCAPE_ERROR, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  store i32 %130, i32* %13, align 4
  br label %131

131:                                              ; preds = %129, %111
  %132 = load i8**, i8*** %5, align 8
  %133 = load i8*, i8** %132, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %132, align 8
  %135 = load i8**, i8*** %6, align 8
  store i8* %134, i8** %135, align 8
  store i8 93, i8* %12, align 1
  br label %156

136:                                              ; preds = %90
  %137 = load i8**, i8*** %6, align 8
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 -1
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 79
  br i1 %142, label %143, label %154

143:                                              ; preds = %136
  %144 = load i8**, i8*** %6, align 8
  %145 = load i8*, i8** %144, align 8
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  switch i32 %147, label %151 [
    i32 48, label %148
    i32 49, label %150
    i32 50, label %150
    i32 51, label %150
    i32 52, label %150
  ]

148:                                              ; preds = %143
  %149 = load i32, i32* @ESCAPE_UNSUPP, align 4
  store i32 %149, i32* %13, align 4
  br label %153

150:                                              ; preds = %143, %143, %143, %143
  br label %153

151:                                              ; preds = %143
  %152 = load i32, i32* @ESCAPE_ERROR, align 4
  store i32 %152, i32* %13, align 4
  br label %153

153:                                              ; preds = %151, %150, %148
  br label %154

154:                                              ; preds = %153, %136
  %155 = load i32*, i32** %7, align 8
  store i32 1, i32* %155, align 4
  br label %156

156:                                              ; preds = %154, %131, %105
  br label %370

157:                                              ; preds = %31
  %158 = load i8**, i8*** %6, align 8
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @strncmp(i8* %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = call i32 (...) @abort() #3
  unreachable

164:                                              ; preds = %157
  %165 = load i32, i32* @ESCAPE_DEVICE, align 4
  store i32 %165, i32* %13, align 4
  %166 = load i8**, i8*** %5, align 8
  %167 = load i8*, i8** %166, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %166, align 8
  %169 = load i8**, i8*** %6, align 8
  store i8* %168, i8** %169, align 8
  %170 = load i32*, i32** %7, align 8
  store i32 2, i32* %170, align 4
  br label %370

171:                                              ; preds = %31, %31, %31, %31, %31, %31
  %172 = load i32, i32* @ESCAPE_IGNORE, align 4
  store i32 %172, i32* %13, align 4
  br label %173

173:                                              ; preds = %31, %171
  %174 = load i8**, i8*** %6, align 8
  %175 = load i8*, i8** %174, align 8
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %173
  %180 = load i32, i32* @ESCAPE_ERROR, align 4
  store i32 %180, i32* %4, align 4
  br label %615

181:                                              ; preds = %173
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* @ESCAPE_ERROR, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = load i32, i32* @ESCAPE_OVERSTRIKE, align 4
  store i32 %186, i32* %13, align 4
  br label %187

187:                                              ; preds = %185, %181
  %188 = load i8**, i8*** %6, align 8
  %189 = load i8*, i8** %188, align 8
  %190 = load i8, i8* %189, align 1
  store i8 %190, i8* %12, align 1
  %191 = load i8**, i8*** %5, align 8
  %192 = load i8*, i8** %191, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %191, align 8
  %194 = load i8**, i8*** %6, align 8
  store i8* %193, i8** %194, align 8
  br label %370

195:                                              ; preds = %31, %31, %31, %31, %31, %31, %31
  %196 = load i8**, i8*** %6, align 8
  %197 = load i8*, i8** %196, align 8
  %198 = load i8, i8* %197, align 1
  %199 = call i32* @strchr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8 signext %198)
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %213

201:                                              ; preds = %195
  %202 = load i8**, i8*** %6, align 8
  %203 = load i8*, i8** %202, align 8
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp ne i32 0, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %201
  %208 = load i8**, i8*** %5, align 8
  %209 = load i8*, i8** %208, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %208, align 8
  br label %211

211:                                              ; preds = %207, %201
  %212 = load i32, i32* @ESCAPE_ERROR, align 4
  store i32 %212, i32* %4, align 4
  br label %615

213:                                              ; preds = %195
  %214 = load i8**, i8*** %6, align 8
  %215 = load i8*, i8** %214, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 -1
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  switch i32 %218, label %223 [
    i32 104, label %219
    i32 108, label %221
  ]

219:                                              ; preds = %213
  %220 = load i32, i32* @ESCAPE_HORIZ, align 4
  store i32 %220, i32* %13, align 4
  br label %225

221:                                              ; preds = %213
  %222 = load i32, i32* @ESCAPE_HLINE, align 4
  store i32 %222, i32* %13, align 4
  br label %225

223:                                              ; preds = %213
  %224 = load i32, i32* @ESCAPE_IGNORE, align 4
  store i32 %224, i32* %13, align 4
  br label %225

225:                                              ; preds = %223, %221, %219
  %226 = load i8**, i8*** %6, align 8
  %227 = load i8*, i8** %226, align 8
  %228 = load i8, i8* %227, align 1
  store i8 %228, i8* %12, align 1
  %229 = load i8**, i8*** %5, align 8
  %230 = load i8*, i8** %229, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %231, i8** %229, align 8
  %232 = load i8**, i8*** %6, align 8
  store i8* %231, i8** %232, align 8
  br label %370

233:                                              ; preds = %31
  %234 = load i8**, i8*** %6, align 8
  %235 = load i8*, i8** %234, align 8
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp eq i32 0, %237
  br i1 %238, label %239, label %241

239:                                              ; preds = %233
  %240 = load i32, i32* @ESCAPE_ERROR, align 4
  store i32 %240, i32* %4, align 4
  br label %615

241:                                              ; preds = %233
  %242 = load i8**, i8*** %5, align 8
  %243 = load i8*, i8** %242, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %244, i8** %242, align 8
  %245 = load i8**, i8*** %6, align 8
  %246 = load i8*, i8** %245, align 8
  %247 = load i8, i8* %246, align 1
  %248 = call i32 @isdigit(i8 zeroext %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %241
  %251 = load i32*, i32** %7, align 8
  store i32 1, i32* %251, align 4
  %252 = load i32, i32* @ESCAPE_IGNORE, align 4
  store i32 %252, i32* %4, align 4
  br label %615

253:                                              ; preds = %241
  %254 = load i8**, i8*** %6, align 8
  %255 = load i8*, i8** %254, align 8
  %256 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %256, i8** %254, align 8
  br label %257

257:                                              ; preds = %263, %253
  %258 = load i8**, i8*** %5, align 8
  %259 = load i8*, i8** %258, align 8
  %260 = load i8, i8* %259, align 1
  %261 = call i32 @isdigit(i8 zeroext %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %257
  %264 = load i8**, i8*** %5, align 8
  %265 = load i8*, i8** %264, align 8
  %266 = getelementptr inbounds i8, i8* %265, i32 1
  store i8* %266, i8** %264, align 8
  br label %257

267:                                              ; preds = %257
  %268 = load i8**, i8*** %5, align 8
  %269 = load i8*, i8** %268, align 8
  %270 = load i8**, i8*** %6, align 8
  %271 = load i8*, i8** %270, align 8
  %272 = ptrtoint i8* %269 to i64
  %273 = ptrtoint i8* %271 to i64
  %274 = sub i64 %272, %273
  %275 = trunc i64 %274 to i32
  %276 = load i32*, i32** %7, align 8
  store i32 %275, i32* %276, align 4
  %277 = load i8**, i8*** %5, align 8
  %278 = load i8*, i8** %277, align 8
  %279 = load i8, i8* %278, align 1
  %280 = sext i8 %279 to i32
  %281 = icmp ne i32 0, %280
  br i1 %281, label %282, label %286

282:                                              ; preds = %267
  %283 = load i8**, i8*** %5, align 8
  %284 = load i8*, i8** %283, align 8
  %285 = getelementptr inbounds i8, i8* %284, i32 1
  store i8* %285, i8** %283, align 8
  br label %286

286:                                              ; preds = %282, %267
  %287 = load i32, i32* @ESCAPE_NUMBERED, align 4
  store i32 %287, i32* %4, align 4
  br label %615

288:                                              ; preds = %31
  %289 = load i32, i32* @ESCAPE_IGNORE, align 4
  store i32 %289, i32* %13, align 4
  %290 = load i8**, i8*** %5, align 8
  %291 = load i8*, i8** %290, align 8
  %292 = load i8, i8* %291, align 1
  %293 = sext i8 %292 to i32
  %294 = icmp eq i32 43, %293
  br i1 %294, label %309, label %295

295:                                              ; preds = %288
  %296 = load i8**, i8*** %5, align 8
  %297 = load i8*, i8** %296, align 8
  %298 = load i8, i8* %297, align 1
  %299 = sext i8 %298 to i32
  %300 = icmp eq i32 45, %299
  br i1 %300, label %309, label %301

301:                                              ; preds = %295
  %302 = load i8, i8* @ASCII_HYPH, align 1
  %303 = sext i8 %302 to i32
  %304 = load i8**, i8*** %5, align 8
  %305 = load i8*, i8** %304, align 8
  %306 = load i8, i8* %305, align 1
  %307 = sext i8 %306 to i32
  %308 = icmp eq i32 %303, %307
  br i1 %308, label %309, label %314

309:                                              ; preds = %301, %295, %288
  %310 = load i8**, i8*** %5, align 8
  %311 = load i8*, i8** %310, align 8
  %312 = getelementptr inbounds i8, i8* %311, i32 1
  store i8* %312, i8** %310, align 8
  %313 = load i8**, i8*** %6, align 8
  store i8* %312, i8** %313, align 8
  br label %314

314:                                              ; preds = %309, %301
  %315 = load i8**, i8*** %5, align 8
  %316 = load i8*, i8** %315, align 8
  %317 = load i8, i8* %316, align 1
  %318 = sext i8 %317 to i32
  switch i32 %318, label %354 [
    i32 40, label %319
    i32 91, label %325
    i32 39, label %330
    i32 51, label %335
    i32 50, label %335
    i32 49, label %335
  ]

319:                                              ; preds = %314
  %320 = load i8**, i8*** %5, align 8
  %321 = load i8*, i8** %320, align 8
  %322 = getelementptr inbounds i8, i8* %321, i32 1
  store i8* %322, i8** %320, align 8
  %323 = load i8**, i8*** %6, align 8
  store i8* %322, i8** %323, align 8
  %324 = load i32*, i32** %7, align 8
  store i32 2, i32* %324, align 4
  br label %356

325:                                              ; preds = %314
  %326 = load i8**, i8*** %5, align 8
  %327 = load i8*, i8** %326, align 8
  %328 = getelementptr inbounds i8, i8* %327, i32 1
  store i8* %328, i8** %326, align 8
  %329 = load i8**, i8*** %6, align 8
  store i8* %328, i8** %329, align 8
  store i8 93, i8* %12, align 1
  br label %356

330:                                              ; preds = %314
  %331 = load i8**, i8*** %5, align 8
  %332 = load i8*, i8** %331, align 8
  %333 = getelementptr inbounds i8, i8* %332, i32 1
  store i8* %333, i8** %331, align 8
  %334 = load i8**, i8*** %6, align 8
  store i8* %333, i8** %334, align 8
  store i8 39, i8* %12, align 1
  br label %356

335:                                              ; preds = %314, %314, %314
  %336 = load i8**, i8*** %5, align 8
  %337 = load i8*, i8** %336, align 8
  %338 = getelementptr inbounds i8, i8* %337, i64 -1
  %339 = load i8, i8* %338, align 1
  %340 = sext i8 %339 to i32
  %341 = icmp eq i32 %340, 115
  br i1 %341, label %342, label %349

342:                                              ; preds = %335
  %343 = load i8**, i8*** %5, align 8
  %344 = load i8*, i8** %343, align 8
  %345 = getelementptr inbounds i8, i8* %344, i64 1
  %346 = load i8, i8* %345, align 1
  %347 = call i32 @isdigit(i8 zeroext %346)
  %348 = icmp ne i32 %347, 0
  br label %349

349:                                              ; preds = %342, %335
  %350 = phi i1 [ false, %335 ], [ %348, %342 ]
  %351 = zext i1 %350 to i64
  %352 = select i1 %350, i32 2, i32 1
  %353 = load i32*, i32** %7, align 8
  store i32 %352, i32* %353, align 4
  br label %356

354:                                              ; preds = %314
  %355 = load i32*, i32** %7, align 8
  store i32 1, i32* %355, align 4
  br label %356

356:                                              ; preds = %354, %349, %330, %325, %319
  br label %370

357:                                              ; preds = %31, %31, %31, %31, %31, %31, %31, %31, %31, %31
  store i32 128, i32* %13, align 4
  br label %358

358:                                              ; preds = %31, %357
  %359 = load i32, i32* %13, align 4
  %360 = load i32, i32* @ESCAPE_ERROR, align 4
  %361 = icmp eq i32 %359, %360
  br i1 %361, label %362, label %364

362:                                              ; preds = %358
  %363 = load i32, i32* @ESCAPE_UNDEF, align 4
  store i32 %363, i32* %13, align 4
  br label %364

364:                                              ; preds = %362, %358
  %365 = load i8**, i8*** %5, align 8
  %366 = load i8*, i8** %365, align 8
  %367 = getelementptr inbounds i8, i8* %366, i32 -1
  store i8* %367, i8** %365, align 8
  %368 = load i8**, i8*** %6, align 8
  store i8* %367, i8** %368, align 8
  %369 = load i32*, i32** %7, align 8
  store i32 1, i32* %369, align 4
  br label %370

370:                                              ; preds = %364, %356, %225, %187, %164, %156, %65, %56, %43
  %371 = load i8, i8* %12, align 1
  %372 = sext i8 %371 to i32
  %373 = icmp ne i32 0, %372
  br i1 %373, label %374, label %432

374:                                              ; preds = %370
  br label %375

375:                                              ; preds = %405, %374
  %376 = load i8**, i8*** %5, align 8
  %377 = load i8*, i8** %376, align 8
  %378 = load i8, i8* %377, align 1
  %379 = sext i8 %378 to i32
  %380 = load i8, i8* %12, align 1
  %381 = sext i8 %380 to i32
  %382 = icmp ne i32 %379, %381
  br i1 %382, label %383, label %406

383:                                              ; preds = %375
  %384 = load i8**, i8*** %5, align 8
  %385 = load i8*, i8** %384, align 8
  %386 = load i8, i8* %385, align 1
  %387 = sext i8 %386 to i32
  switch i32 %387, label %401 [
    i32 0, label %388
    i32 92, label %390
  ]

388:                                              ; preds = %383
  %389 = load i32, i32* @ESCAPE_ERROR, align 4
  store i32 %389, i32* %4, align 4
  br label %615

390:                                              ; preds = %383
  %391 = load i8**, i8*** %5, align 8
  %392 = load i8*, i8** %391, align 8
  %393 = getelementptr inbounds i8, i8* %392, i32 1
  store i8* %393, i8** %391, align 8
  %394 = load i32, i32* @ESCAPE_ERROR, align 4
  %395 = load i8**, i8*** %5, align 8
  %396 = call i32 @mandoc_escape(i8** %395, i8** null, i32* null)
  %397 = icmp eq i32 %394, %396
  br i1 %397, label %398, label %400

398:                                              ; preds = %390
  %399 = load i32, i32* @ESCAPE_ERROR, align 4
  store i32 %399, i32* %4, align 4
  br label %615

400:                                              ; preds = %390
  br label %405

401:                                              ; preds = %383
  %402 = load i8**, i8*** %5, align 8
  %403 = load i8*, i8** %402, align 8
  %404 = getelementptr inbounds i8, i8* %403, i32 1
  store i8* %404, i8** %402, align 8
  br label %405

405:                                              ; preds = %401, %400
  br label %375

406:                                              ; preds = %375
  %407 = load i8**, i8*** %5, align 8
  %408 = load i8*, i8** %407, align 8
  %409 = getelementptr inbounds i8, i8* %408, i32 1
  store i8* %409, i8** %407, align 8
  %410 = load i8**, i8*** %6, align 8
  %411 = load i8*, i8** %410, align 8
  %412 = ptrtoint i8* %408 to i64
  %413 = ptrtoint i8* %411 to i64
  %414 = sub i64 %412, %413
  %415 = trunc i64 %414 to i32
  %416 = load i32*, i32** %7, align 8
  store i32 %415, i32* %416, align 4
  %417 = load i32, i32* %13, align 4
  %418 = icmp eq i32 %417, 128
  br i1 %418, label %419, label %431

419:                                              ; preds = %406
  %420 = load i32*, i32** %7, align 8
  %421 = load i32, i32* %420, align 4
  %422 = icmp eq i32 %421, 1
  br i1 %422, label %423, label %431

423:                                              ; preds = %419
  %424 = load i8**, i8*** %6, align 8
  %425 = load i8*, i8** %424, align 8
  %426 = load i8, i8* %425, align 1
  %427 = sext i8 %426 to i32
  %428 = icmp ne i32 %427, 45
  br i1 %428, label %429, label %431

429:                                              ; preds = %423
  %430 = load i32, i32* @ESCAPE_ERROR, align 4
  store i32 %430, i32* %4, align 4
  br label %615

431:                                              ; preds = %423, %419, %406
  br label %454

432:                                              ; preds = %370
  %433 = load i32*, i32** %7, align 8
  %434 = load i32, i32* %433, align 4
  %435 = icmp sgt i32 %434, 0
  %436 = zext i1 %435 to i32
  %437 = call i32 @assert(i32 %436)
  %438 = load i32*, i32** %7, align 8
  %439 = load i32, i32* %438, align 4
  %440 = sext i32 %439 to i64
  %441 = load i8**, i8*** %6, align 8
  %442 = load i8*, i8** %441, align 8
  %443 = call i64 @strlen(i8* %442)
  %444 = icmp ugt i64 %440, %443
  br i1 %444, label %445, label %447

445:                                              ; preds = %432
  %446 = load i32, i32* @ESCAPE_ERROR, align 4
  store i32 %446, i32* %4, align 4
  br label %615

447:                                              ; preds = %432
  %448 = load i32*, i32** %7, align 8
  %449 = load i32, i32* %448, align 4
  %450 = load i8**, i8*** %5, align 8
  %451 = load i8*, i8** %450, align 8
  %452 = sext i32 %449 to i64
  %453 = getelementptr inbounds i8, i8* %451, i64 %452
  store i8* %453, i8** %450, align 8
  br label %454

454:                                              ; preds = %447, %431
  %455 = load i32, i32* %13, align 4
  switch i32 %455, label %612 [
    i32 129, label %456
    i32 128, label %462
  ]

456:                                              ; preds = %454
  %457 = load i8**, i8*** %6, align 8
  %458 = load i8*, i8** %457, align 8
  %459 = load i32*, i32** %7, align 8
  %460 = load i32, i32* %459, align 4
  %461 = call i32 @mandoc_font(i8* %458, i32 %460)
  store i32 %461, i32* %13, align 4
  br label %613

462:                                              ; preds = %454
  %463 = load i8**, i8*** %6, align 8
  %464 = load i8*, i8** %463, align 8
  %465 = load i8, i8* %464, align 1
  %466 = sext i8 %465 to i32
  %467 = icmp eq i32 %466, 99
  br i1 %467, label %468, label %534

468:                                              ; preds = %462
  %469 = load i32*, i32** %7, align 8
  %470 = load i32, i32* %469, align 4
  %471 = icmp slt i32 %470, 6
  br i1 %471, label %491, label %472

472:                                              ; preds = %468
  %473 = load i32*, i32** %7, align 8
  %474 = load i32, i32* %473, align 4
  %475 = icmp sgt i32 %474, 7
  br i1 %475, label %491, label %476

476:                                              ; preds = %472
  %477 = load i8**, i8*** %6, align 8
  %478 = load i8*, i8** %477, align 8
  %479 = call i32 @strncmp(i8* %478, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %491, label %481

481:                                              ; preds = %476
  %482 = load i8**, i8*** %6, align 8
  %483 = load i8*, i8** %482, align 8
  %484 = getelementptr inbounds i8, i8* %483, i64 4
  %485 = call i64 @strspn(i8* %484, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %486 = trunc i64 %485 to i32
  %487 = add nsw i32 %486, 4
  %488 = load i32*, i32** %7, align 8
  %489 = load i32, i32* %488, align 4
  %490 = icmp slt i32 %487, %489
  br i1 %490, label %491, label %492

491:                                              ; preds = %481, %476, %472, %468
  br label %613

492:                                              ; preds = %481
  store i32 0, i32* %10, align 4
  store i32 4, i32* %11, align 4
  br label %493

493:                                              ; preds = %510, %492
  %494 = load i32, i32* %11, align 4
  %495 = load i32*, i32** %7, align 8
  %496 = load i32, i32* %495, align 4
  %497 = icmp slt i32 %494, %496
  br i1 %497, label %498, label %513

498:                                              ; preds = %493
  %499 = load i32, i32* %10, align 4
  %500 = mul nsw i32 10, %499
  %501 = load i8**, i8*** %6, align 8
  %502 = load i8*, i8** %501, align 8
  %503 = load i32, i32* %11, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i8, i8* %502, i64 %504
  %506 = load i8, i8* %505, align 1
  %507 = sext i8 %506 to i32
  %508 = sub nsw i32 %507, 48
  %509 = add nsw i32 %500, %508
  store i32 %509, i32* %10, align 4
  br label %510

510:                                              ; preds = %498
  %511 = load i32, i32* %11, align 4
  %512 = add nsw i32 %511, 1
  store i32 %512, i32* %11, align 4
  br label %493

513:                                              ; preds = %493
  %514 = load i32, i32* %10, align 4
  %515 = icmp slt i32 %514, 33
  br i1 %515, label %525, label %516

516:                                              ; preds = %513
  %517 = load i32, i32* %10, align 4
  %518 = icmp sgt i32 %517, 126
  br i1 %518, label %519, label %522

519:                                              ; preds = %516
  %520 = load i32, i32* %10, align 4
  %521 = icmp slt i32 %520, 160
  br i1 %521, label %525, label %522

522:                                              ; preds = %519, %516
  %523 = load i32, i32* %10, align 4
  %524 = icmp sgt i32 %523, 255
  br i1 %524, label %525, label %526

525:                                              ; preds = %522, %519, %513
  br label %613

526:                                              ; preds = %522
  %527 = load i8**, i8*** %6, align 8
  %528 = load i8*, i8** %527, align 8
  %529 = getelementptr inbounds i8, i8* %528, i64 4
  store i8* %529, i8** %527, align 8
  %530 = load i32*, i32** %7, align 8
  %531 = load i32, i32* %530, align 4
  %532 = sub nsw i32 %531, 4
  store i32 %532, i32* %530, align 4
  %533 = load i32, i32* @ESCAPE_NUMBERED, align 4
  store i32 %533, i32* %13, align 4
  br label %613

534:                                              ; preds = %462
  %535 = load i8**, i8*** %6, align 8
  %536 = load i8*, i8** %535, align 8
  %537 = load i8, i8* %536, align 1
  %538 = sext i8 %537 to i32
  %539 = icmp ne i32 %538, 117
  br i1 %539, label %548, label %540

540:                                              ; preds = %534
  %541 = load i32*, i32** %7, align 8
  %542 = load i32, i32* %541, align 4
  %543 = icmp slt i32 %542, 5
  br i1 %543, label %548, label %544

544:                                              ; preds = %540
  %545 = load i32*, i32** %7, align 8
  %546 = load i32, i32* %545, align 4
  %547 = icmp sgt i32 %546, 7
  br i1 %547, label %548, label %549

548:                                              ; preds = %544, %540, %534
  br label %613

549:                                              ; preds = %544
  %550 = load i32*, i32** %7, align 8
  %551 = load i32, i32* %550, align 4
  %552 = icmp eq i32 %551, 7
  br i1 %552, label %553, label %568

553:                                              ; preds = %549
  %554 = load i8**, i8*** %6, align 8
  %555 = load i8*, i8** %554, align 8
  %556 = getelementptr inbounds i8, i8* %555, i64 1
  %557 = load i8, i8* %556, align 1
  %558 = sext i8 %557 to i32
  %559 = icmp ne i32 %558, 49
  br i1 %559, label %567, label %560

560:                                              ; preds = %553
  %561 = load i8**, i8*** %6, align 8
  %562 = load i8*, i8** %561, align 8
  %563 = getelementptr inbounds i8, i8* %562, i64 2
  %564 = load i8, i8* %563, align 1
  %565 = sext i8 %564 to i32
  %566 = icmp ne i32 %565, 48
  br i1 %566, label %567, label %568

567:                                              ; preds = %560, %553
  br label %613

568:                                              ; preds = %560, %549
  %569 = load i32*, i32** %7, align 8
  %570 = load i32, i32* %569, align 4
  %571 = icmp eq i32 %570, 6
  br i1 %571, label %572, label %580

572:                                              ; preds = %568
  %573 = load i8**, i8*** %6, align 8
  %574 = load i8*, i8** %573, align 8
  %575 = getelementptr inbounds i8, i8* %574, i64 1
  %576 = load i8, i8* %575, align 1
  %577 = sext i8 %576 to i32
  %578 = icmp eq i32 %577, 48
  br i1 %578, label %579, label %580

579:                                              ; preds = %572
  br label %613

580:                                              ; preds = %572, %568
  %581 = load i32*, i32** %7, align 8
  %582 = load i32, i32* %581, align 4
  %583 = icmp eq i32 %582, 5
  br i1 %583, label %584, label %599

584:                                              ; preds = %580
  %585 = load i8**, i8*** %6, align 8
  %586 = load i8*, i8** %585, align 8
  %587 = getelementptr inbounds i8, i8* %586, i64 1
  %588 = load i8, i8* %587, align 1
  %589 = sext i8 %588 to i32
  %590 = icmp eq i32 %589, 68
  br i1 %590, label %591, label %599

591:                                              ; preds = %584
  %592 = load i8**, i8*** %6, align 8
  %593 = load i8*, i8** %592, align 8
  %594 = getelementptr inbounds i8, i8* %593, i64 2
  %595 = load i8, i8* %594, align 1
  %596 = call i32* @strchr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8 signext %595)
  %597 = icmp ne i32* %596, null
  br i1 %597, label %598, label %599

598:                                              ; preds = %591
  br label %613

599:                                              ; preds = %591, %584, %580
  %600 = load i8**, i8*** %6, align 8
  %601 = load i8*, i8** %600, align 8
  %602 = getelementptr inbounds i8, i8* %601, i64 1
  %603 = call i64 @strspn(i8* %602, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %604 = trunc i64 %603 to i32
  %605 = add nsw i32 %604, 1
  %606 = load i32*, i32** %7, align 8
  %607 = load i32, i32* %606, align 4
  %608 = icmp eq i32 %605, %607
  br i1 %608, label %609, label %611

609:                                              ; preds = %599
  %610 = load i32, i32* @ESCAPE_UNICODE, align 4
  store i32 %610, i32* %13, align 4
  br label %611

611:                                              ; preds = %609, %599
  br label %613

612:                                              ; preds = %454
  br label %613

613:                                              ; preds = %612, %611, %598, %579, %567, %548, %526, %525, %491, %456
  %614 = load i32, i32* %13, align 4
  store i32 %614, i32* %4, align 4
  br label %615

615:                                              ; preds = %613, %445, %429, %398, %388, %286, %250, %239, %211, %179, %78, %76, %74, %72, %70, %63, %51
  %616 = load i32, i32* %4, align 4
  ret i32 %616
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @isdigit(i8 zeroext) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @mandoc_font(i8*, i32) #1

declare dso_local i64 @strspn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
