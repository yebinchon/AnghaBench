; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/regex/extr_t_regex_att.c_att_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/regex/extr_t_regex_att.c_att_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atf_tc = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s/data/%s.dat\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"srcdir\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to open input file %s\00", align 1
@delim = common dso_local global i32 0, align 4
@sep = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"NOTE\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Missing pattern at line %zu\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Missing input at line %zu\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"SAME\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Missing matches at line %zu\00", align 1
@REG_BASIC = common dso_local global i32 0, align 4
@REG_EXTENDED = common dso_local global i32 0, align 4
@REG_NOSPEC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"Bad name %c\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"regcomp returned %d for pattern %s at line %zu\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Expected error %d, got %d at line %zu\00", align 1
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atf_tc*, i8*)* @att_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @att_test(%struct.atf_tc* %0, i8* %1) #0 {
  %3 = alloca %struct.atf_tc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.atf_tc* %0, %struct.atf_tc** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %7, align 8
  %27 = load i32, i32* @MAXPATHLEN, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %8, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %9, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %31 = trunc i64 %28 to i32
  %32 = load %struct.atf_tc*, %struct.atf_tc** %3, align 8
  %33 = call i8* @atf_tc_get_config_var(%struct.atf_tc* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @snprintf(i8* %30, i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %34)
  %36 = call i32* @fopen(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %36, i32** %13, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %30)
  br label %41

41:                                               ; preds = %39, %2
  br label %42

42:                                               ; preds = %285, %41
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* @delim, align 4
  %45 = call i8* @fparseln(i32* %43, i64* %10, i64* %11, i32 %44, i32 0)
  store i8* %45, i8** %6, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %288

47:                                               ; preds = %42
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* @sep, align 4
  %50 = call i8* @strtok(i8* %48, i32 %49)
  store i8* %50, i8** %14, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %285

53:                                               ; preds = %47
  %54 = load i8*, i8** %14, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 125
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 0, i32* %12, align 4
  br label %285

59:                                               ; preds = %53
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %285

63:                                               ; preds = %59
  %64 = load i8*, i8** %14, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 59
  br i1 %67, label %77, label %68

68:                                               ; preds = %63
  %69 = load i8*, i8** %14, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 35
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = load i8*, i8** %14, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73, %68, %63
  br label %285

78:                                               ; preds = %73
  %79 = load i8*, i8** %14, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 58
  br i1 %82, label %83, label %106

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %97, %83
  %85 = load i8*, i8** %14, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %14, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load i8*, i8** %14, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 58
  br label %95

95:                                               ; preds = %90, %84
  %96 = phi i1 [ false, %84 ], [ %94, %90 ]
  br i1 %96, label %97, label %98

97:                                               ; preds = %95
  br label %84

98:                                               ; preds = %95
  %99 = load i8*, i8** %14, align 8
  %100 = load i8, i8* %99, align 1
  %101 = icmp ne i8 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i8*, i8** %14, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %14, align 8
  br label %105

105:                                              ; preds = %102, %98
  br label %106

106:                                              ; preds = %105, %78
  %107 = load i32, i32* @sep, align 4
  %108 = call i8* @strtok(i8* null, i32 %107)
  store i8* %108, i8** %15, align 8
  %109 = icmp ne i8* %108, null
  %110 = zext i1 %109 to i32
  %111 = load i64, i64* %11, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 (i32, i8*, i32, ...) @ATF_REQUIRE_MSG(i32 %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @sep, align 4
  %115 = call i8* @strtok(i8* null, i32 %114)
  store i8* %115, i8** %16, align 8
  %116 = icmp ne i8* %115, null
  %117 = zext i1 %116 to i32
  %118 = load i64, i64* %11, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i32 (i32, i8*, i32, ...) @ATF_REQUIRE_MSG(i32 %117, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %119)
  %121 = load i8*, i8** %14, align 8
  %122 = call i64 @strchr(i8* %121, i8 signext 36)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %106
  %125 = load i8*, i8** %15, align 8
  %126 = load i8*, i8** %15, align 8
  %127 = call i32 @strunvis(i8* %125, i8* %126)
  %128 = icmp ne i32 %127, -1
  %129 = zext i1 %128 to i32
  %130 = call i32 @ATF_REQUIRE(i32 %129)
  %131 = load i8*, i8** %16, align 8
  %132 = load i8*, i8** %16, align 8
  %133 = call i32 @strunvis(i8* %131, i8* %132)
  %134 = icmp ne i32 %133, -1
  %135 = zext i1 %134 to i32
  %136 = call i32 @ATF_REQUIRE(i32 %135)
  br label %137

137:                                              ; preds = %124, %106
  %138 = load i8*, i8** %16, align 8
  %139 = call i64 @strcmp(i8* %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = load i8*, i8** %16, align 8
  store i8 0, i8* %142, align 1
  br label %143

143:                                              ; preds = %141, %137
  %144 = load i8*, i8** %15, align 8
  %145 = call i64 @strcmp(i8* %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %143
  %148 = load i8*, i8** %7, align 8
  %149 = icmp ne i8* %148, null
  %150 = zext i1 %149 to i32
  %151 = call i32 @ATF_REQUIRE(i32 %150)
  %152 = load i8*, i8** %7, align 8
  store i8* %152, i8** %15, align 8
  br label %161

153:                                              ; preds = %143
  %154 = load i8*, i8** %7, align 8
  %155 = call i32 @free(i8* %154)
  %156 = load i8*, i8** %15, align 8
  %157 = call i8* @strdup(i8* %156)
  store i8* %157, i8** %7, align 8
  %158 = icmp ne i8* %157, null
  %159 = zext i1 %158 to i32
  %160 = call i32 @ATF_REQUIRE(i32 %159)
  br label %161

161:                                              ; preds = %153, %147
  %162 = load i32, i32* @sep, align 4
  %163 = call i8* @strtok(i8* null, i32 %162)
  store i8* %163, i8** %17, align 8
  %164 = icmp ne i8* %163, null
  %165 = zext i1 %164 to i32
  %166 = load i64, i64* %11, align 8
  %167 = trunc i64 %166 to i32
  %168 = call i32 (i32, i8*, i32, ...) @ATF_REQUIRE_MSG(i32 %165, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* @sep, align 4
  %170 = call i8* @strtok(i8* null, i32 %169)
  store i8* %170, i8** %18, align 8
  %171 = load i8*, i8** %14, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  switch i32 %173, label %194 [
    i32 123, label %174
    i32 125, label %184
    i32 63, label %185
    i32 124, label %185
    i32 35, label %193
    i32 59, label %193
  ]

174:                                              ; preds = %161
  %175 = load i8*, i8** %18, align 8
  %176 = call i32 @optional(i8* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %174
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %12, align 4
  br label %285

181:                                              ; preds = %174
  %182 = load i8*, i8** %14, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %14, align 8
  br label %195

184:                                              ; preds = %161
  store i32 0, i32* %12, align 4
  br label %285

185:                                              ; preds = %161, %161
  %186 = load i8*, i8** %18, align 8
  %187 = call i32 @unsupported(i8* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  br label %285

190:                                              ; preds = %185
  %191 = load i8*, i8** %14, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %14, align 8
  br label %195

193:                                              ; preds = %161, %161
  br label %285

194:                                              ; preds = %161
  br label %195

195:                                              ; preds = %194, %190, %181
  %196 = load i8*, i8** %15, align 8
  %197 = load i8*, i8** %16, align 8
  %198 = load i64, i64* %11, align 8
  %199 = call i64 @bug(i8* %196, i8* %197, i64 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %195
  br label %285

202:                                              ; preds = %195
  %203 = load i8*, i8** %17, align 8
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp ne i32 %205, 40
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = load i8*, i8** %17, align 8
  %209 = call i32 @geterror(i8* %208, i32* %21, i32* %22)
  store i8* null, i8** %19, align 8
  store i64 0, i64* %20, align 8
  br label %218

210:                                              ; preds = %202
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  %211 = load i8*, i8** %17, align 8
  %212 = call i64 @getmatches(i8* %211)
  store i64 %212, i64* %20, align 8
  %213 = load i64, i64* %20, align 8
  %214 = call i8* @calloc(i64 %213, i32 1)
  store i8* %214, i8** %19, align 8
  %215 = icmp ne i8* %214, null
  %216 = zext i1 %215 to i32
  %217 = call i32 @ATF_REQUIRE(i32 %216)
  br label %218

218:                                              ; preds = %210, %207
  %219 = load i8*, i8** %14, align 8
  %220 = call i32 @getflags(i8* %219)
  store i32 %220, i32* %23, align 4
  br label %221

221:                                              ; preds = %279, %218
  %222 = load i8*, i8** %14, align 8
  %223 = load i8, i8* %222, align 1
  %224 = icmp ne i8 %223, 0
  br i1 %224, label %225, label %282

225:                                              ; preds = %221
  %226 = load i8*, i8** %14, align 8
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  switch i32 %228, label %235 [
    i32 66, label %229
    i32 69, label %231
    i32 76, label %233
  ]

229:                                              ; preds = %225
  %230 = load i32, i32* @REG_BASIC, align 4
  store i32 %230, i32* %24, align 4
  br label %240

231:                                              ; preds = %225
  %232 = load i32, i32* @REG_EXTENDED, align 4
  store i32 %232, i32* %24, align 4
  br label %240

233:                                              ; preds = %225
  %234 = load i32, i32* @REG_NOSPEC, align 4
  store i32 %234, i32* %24, align 4
  br label %240

235:                                              ; preds = %225
  %236 = load i8*, i8** %14, align 8
  %237 = load i8, i8* %236, align 1
  %238 = sext i8 %237 to i32
  %239 = call i32 (i32, i8*, i32, ...) @ATF_REQUIRE_MSG(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %238)
  br label %279

240:                                              ; preds = %233, %231, %229
  %241 = load i8*, i8** %15, align 8
  %242 = load i32, i32* %24, align 4
  %243 = load i32, i32* %23, align 4
  %244 = or i32 %242, %243
  %245 = call i32 @regcomp(i32* %5, i8* %241, i32 %244)
  store i32 %245, i32* %25, align 4
  %246 = load i32, i32* %25, align 4
  %247 = load i32, i32* %21, align 4
  %248 = icmp eq i32 %246, %247
  %249 = zext i1 %248 to i32
  %250 = load i32, i32* %25, align 4
  %251 = load i8*, i8** %15, align 8
  %252 = load i64, i64* %11, align 8
  %253 = call i32 (i32, i8*, i32, ...) @ATF_REQUIRE_MSG(i32 %249, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i32 %250, i8* %251, i64 %252)
  %254 = load i32, i32* %25, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %240
  br label %279

257:                                              ; preds = %240
  %258 = load i8*, i8** %16, align 8
  %259 = load i64, i64* %20, align 8
  %260 = load i8*, i8** %19, align 8
  %261 = call i32 @regexec(i32* %5, i8* %258, i64 %259, i8* %260, i32 0)
  store i32 %261, i32* %26, align 4
  %262 = load i32, i32* %26, align 4
  %263 = load i32, i32* %22, align 4
  %264 = icmp eq i32 %262, %263
  %265 = zext i1 %264 to i32
  %266 = load i32, i32* %22, align 4
  %267 = load i32, i32* %26, align 4
  %268 = load i64, i64* %11, align 8
  %269 = call i32 (i32, i8*, i32, ...) @ATF_REQUIRE_MSG(i32 %265, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32 %266, i32 %267, i64 %268)
  %270 = load i8*, i8** %17, align 8
  %271 = load i64, i64* %20, align 8
  %272 = load i8*, i8** %19, align 8
  %273 = load i64, i64* %11, align 8
  %274 = call i32 @checkmatches(i8* %270, i64 %271, i8* %272, i64 %273)
  %275 = load i8*, i8** %18, align 8
  %276 = load i64, i64* %11, align 8
  %277 = call i32 @checkcomment(i8* %275, i64 %276)
  %278 = call i32 @regfree(i32* %5)
  br label %279

279:                                              ; preds = %257, %256, %235
  %280 = load i8*, i8** %14, align 8
  %281 = getelementptr inbounds i8, i8* %280, i32 1
  store i8* %281, i8** %14, align 8
  br label %221

282:                                              ; preds = %221
  %283 = load i8*, i8** %19, align 8
  %284 = call i32 @free(i8* %283)
  br label %285

285:                                              ; preds = %282, %201, %193, %189, %184, %178, %77, %62, %58, %52
  %286 = load i8*, i8** %6, align 8
  %287 = call i32 @free(i8* %286)
  br label %42

288:                                              ; preds = %42
  %289 = load i32*, i32** %13, align 8
  %290 = call i32 @fclose(i32* %289)
  %291 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %291)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i8* @atf_tc_get_config_var(%struct.atf_tc*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @atf_tc_fail(i8*, i8*) #2

declare dso_local i8* @fparseln(i32*, i64*, i64*, i32, i32) #2

declare dso_local i8* @strtok(i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i32, ...) #2

declare dso_local i64 @strchr(i8*, i8 signext) #2

declare dso_local i32 @ATF_REQUIRE(i32) #2

declare dso_local i32 @strunvis(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @optional(i8*) #2

declare dso_local i32 @unsupported(i8*) #2

declare dso_local i64 @bug(i8*, i8*, i64) #2

declare dso_local i32 @geterror(i8*, i32*, i32*) #2

declare dso_local i64 @getmatches(i8*) #2

declare dso_local i8* @calloc(i64, i32) #2

declare dso_local i32 @getflags(i8*) #2

declare dso_local i32 @regcomp(i32*, i8*, i32) #2

declare dso_local i32 @regexec(i32*, i8*, i64, i8*, i32) #2

declare dso_local i32 @checkmatches(i8*, i64, i8*, i64) #2

declare dso_local i32 @checkcomment(i8*, i64) #2

declare dso_local i32 @regfree(i32*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
