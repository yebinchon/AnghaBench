; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/tests/extr_tvo.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/tests/extr_tvo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@Skip = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"Trust %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"dp:s:T:V\00", align 1
@DebugVe = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Local trust %s: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"unknown option: -%c\00", align 1
@optind = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@VE_GUESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"verify_file(%s) = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"sig\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Verified: %s: %.28s...\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"manifest\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"verify_open(%s) = %d %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@BUFSIZ = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"vectx_open(%s) failed: %d %s\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"vectx_close(%s) == %d %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"vectx_close: Verified: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.stat, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** @Skip, align 8
  %20 = call i32 (...) @ve_trust_init()
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %47, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = call i32 @getopt(i32 %24, i8** %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %8, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %48

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  switch i32 %29, label %44 [
    i32 100, label %30
    i32 112, label %33
    i32 115, label %35
    i32 84, label %37
    i32 86, label %43
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* @DebugVe, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @DebugVe, align 4
  br label %47

33:                                               ; preds = %28
  %34 = load i8*, i8** @optarg, align 8
  store i8* %34, i8** %11, align 8
  br label %47

35:                                               ; preds = %28
  %36 = load i8*, i8** @optarg, align 8
  store i8* %36, i8** @Skip, align 8
  br label %47

37:                                               ; preds = %28
  %38 = load i8*, i8** @optarg, align 8
  %39 = call i32 @ve_trust_add(i8* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i8*, i8** @optarg, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %40, i32 %41)
  br label %47

43:                                               ; preds = %28
  store i32 1, i32* %9, align 4
  br label %47

44:                                               ; preds = %28
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %43, %37, %35, %33, %30
  br label %23

48:                                               ; preds = %23
  %49 = call i32 (...) @ve_self_tests()
  br label %50

50:                                               ; preds = %275, %48
  %51 = load i32, i32* @optind, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %278

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %86

57:                                               ; preds = %54
  %58 = load i8**, i8*** %5, align 8
  %59 = load i32, i32* @optind, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* @O_RDONLY, align 4
  %64 = call i32 @open(i8* %62, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %57
  %68 = load i32, i32* %7, align 4
  %69 = load i8**, i8*** %5, align 8
  %70 = load i32, i32* @optind, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* @VE_GUESS, align 4
  %75 = call i32 @verify_file(i32 %68, i8* %73, i32 0, i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load i8**, i8*** %5, align 8
  %77 = load i32, i32* @optind, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %80, i32 %81)
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @close(i32 %83)
  br label %85

85:                                               ; preds = %67, %57
  br label %275

86:                                               ; preds = %54
  %87 = load i8**, i8*** %5, align 8
  %88 = load i32, i32* @optind, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @strstr(i8* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %131

94:                                               ; preds = %86
  %95 = load i8**, i8*** %5, align 8
  %96 = load i32, i32* @optind, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = call i64 @verify_sig(i8* %99, i32 1)
  %101 = inttoptr i64 %100 to i8*
  store i8* %101, i8** %10, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %121

104:                                              ; preds = %94
  %105 = load i8**, i8*** %5, align 8
  %106 = load i32, i32* @optind, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %109, i8* %110)
  %112 = load i8**, i8*** %5, align 8
  %113 = load i32, i32* @optind, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = load i8*, i8** @Skip, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = call i32 @fingerprint_info_add(i8* %116, i8* %117, i8* %118, i8* %119, i32* null)
  br label %130

121:                                              ; preds = %94
  %122 = load i32, i32* @stderr, align 4
  %123 = load i8**, i8*** %5, align 8
  %124 = load i32, i32* @optind, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = call i8* (...) @ve_error_get()
  %129 = call i32 @fprintf(i32 %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %127, i8* %128)
  br label %130

130:                                              ; preds = %121, %104
  br label %274

131:                                              ; preds = %86
  %132 = load i8**, i8*** %5, align 8
  %133 = load i32, i32* @optind, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = call i64 @strstr(i8* %136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %160

139:                                              ; preds = %131
  %140 = load i8**, i8*** %5, align 8
  %141 = load i32, i32* @optind, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = call i64 @read_file(i8* %144, i32* null)
  %146 = inttoptr i64 %145 to i8*
  store i8* %146, i8** %10, align 8
  %147 = load i8*, i8** %10, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %159

149:                                              ; preds = %139
  %150 = load i8**, i8*** %5, align 8
  %151 = load i32, i32* @optind, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %150, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = load i8*, i8** %11, align 8
  %156 = load i8*, i8** @Skip, align 8
  %157 = load i8*, i8** %10, align 8
  %158 = call i32 @fingerprint_info_add(i8* %154, i8* %155, i8* %156, i8* %157, i32* null)
  br label %159

159:                                              ; preds = %149, %139
  br label %273

160:                                              ; preds = %131
  %161 = load i8**, i8*** %5, align 8
  %162 = load i32, i32* @optind, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %161, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = load i32, i32* @O_RDONLY, align 4
  %167 = call i32 @verify_open(i8* %165, i32 %166)
  store i32 %167, i32* %7, align 4
  %168 = load i8**, i8*** %5, align 8
  %169 = load i32, i32* @optind, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %168, i64 %170
  %172 = load i8*, i8** %171, align 8
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %160
  %177 = call i8* (...) @ve_error_get()
  br label %179

178:                                              ; preds = %160
  br label %179

179:                                              ; preds = %178, %176
  %180 = phi i8* [ %177, %176 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), %178 ]
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %172, i32 %173, i8* %180)
  %182 = load i32, i32* %7, align 4
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %272

184:                                              ; preds = %179
  %185 = load i32, i32* @BUFSIZ, align 4
  %186 = zext i32 %185 to i64
  %187 = call i8* @llvm.stacksave()
  store i8* %187, i8** %14, align 8
  %188 = alloca i8, i64 %186, align 16
  store i64 %186, i64* %15, align 8
  %189 = load i32, i32* %7, align 4
  %190 = call i32 @fstat(i32 %189, %struct.stat* %16)
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* @SEEK_SET, align 4
  %193 = call i32 @lseek(i32 %191, i32 0, i32 %192)
  %194 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = srem i32 %195, 512
  %197 = sext i32 %196 to i64
  store i64 %197, i64* %18, align 8
  %198 = load i32, i32* %7, align 4
  %199 = load i8**, i8*** %5, align 8
  %200 = load i32, i32* @optind, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8*, i8** %199, i64 %201
  %203 = load i8*, i8** %202, align 8
  %204 = load i64, i64* %18, align 8
  %205 = call i8* @vectx_open(i32 %198, i8* %203, i64 %204, %struct.stat* %16, i32* %17)
  store i8* %205, i8** %13, align 8
  %206 = load i8*, i8** %13, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %217, label %208

208:                                              ; preds = %184
  %209 = load i8**, i8*** %5, align 8
  %210 = load i32, i32* @optind, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8*, i8** %209, i64 %211
  %213 = load i8*, i8** %212, align 8
  %214 = load i32, i32* %17, align 4
  %215 = call i8* (...) @ve_error_get()
  %216 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i8* %213, i32 %214, i8* %215)
  br label %268

217:                                              ; preds = %184
  %218 = load i8*, i8** %13, align 8
  %219 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = srem i32 %220, 1024
  %222 = load i32, i32* @SEEK_SET, align 4
  %223 = call i64 @vectx_lseek(i8* %218, i32 %221, i32 %222)
  store i64 %223, i64* %18, align 8
  %224 = load i64, i64* %18, align 8
  %225 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = sext i32 %226 to i64
  %228 = icmp ult i64 %224, %227
  br i1 %228, label %229, label %240

229:                                              ; preds = %217
  %230 = load i8*, i8** %13, align 8
  %231 = trunc i64 %186 to i32
  %232 = call i64 @vectx_read(i8* %230, i8* %188, i32 %231)
  store i64 %232, i64* %19, align 8
  %233 = load i64, i64* %19, align 8
  %234 = icmp ugt i64 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %229
  %236 = load i64, i64* %19, align 8
  %237 = load i64, i64* %18, align 8
  %238 = add i64 %237, %236
  store i64 %238, i64* %18, align 8
  br label %239

239:                                              ; preds = %235, %229
  br label %240

240:                                              ; preds = %239, %217
  %241 = load i8*, i8** %13, align 8
  %242 = load i32, i32* @SEEK_END, align 4
  %243 = call i64 @vectx_lseek(i8* %241, i32 0, i32 %242)
  store i64 %243, i64* %18, align 8
  %244 = load i8*, i8** %13, align 8
  %245 = load i32, i32* @SEEK_END, align 4
  %246 = call i64 @vectx_lseek(i8* %244, i32 0, i32 %245)
  store i64 %246, i64* %18, align 8
  %247 = load i8*, i8** %13, align 8
  %248 = call i32 @vectx_close(i8* %247)
  store i32 %248, i32* %17, align 4
  %249 = load i32, i32* %17, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %260

251:                                              ; preds = %240
  %252 = load i8**, i8*** %5, align 8
  %253 = load i32, i32* @optind, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8*, i8** %252, i64 %254
  %256 = load i8*, i8** %255, align 8
  %257 = load i32, i32* %17, align 4
  %258 = call i8* (...) @ve_error_get()
  %259 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i8* %256, i32 %257, i8* %258)
  br label %267

260:                                              ; preds = %240
  %261 = load i8**, i8*** %5, align 8
  %262 = load i32, i32* @optind, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8*, i8** %261, i64 %263
  %265 = load i8*, i8** %264, align 8
  %266 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i8* %265)
  br label %267

267:                                              ; preds = %260, %251
  br label %268

268:                                              ; preds = %267, %208
  %269 = load i32, i32* %7, align 4
  %270 = call i32 @close(i32 %269)
  %271 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %271)
  br label %272

272:                                              ; preds = %268, %179
  br label %273

273:                                              ; preds = %272, %159
  br label %274

274:                                              ; preds = %273, %130
  br label %275

275:                                              ; preds = %274, %85
  %276 = load i32, i32* @optind, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* @optind, align 4
  br label %50

278:                                              ; preds = %50
  ret i32 0
}

declare dso_local i32 @ve_trust_init(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @ve_trust_add(i8*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @ve_self_tests(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @verify_file(i32, i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i64 @verify_sig(i8*, i32) #1

declare dso_local i32 @fingerprint_info_add(i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @ve_error_get(...) #1

declare dso_local i64 @read_file(i8*, i32*) #1

declare dso_local i32 @verify_open(i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i8* @vectx_open(i32, i8*, i64, %struct.stat*, i32*) #1

declare dso_local i64 @vectx_lseek(i8*, i32, i32) #1

declare dso_local i64 @vectx_read(i8*, i8*, i32) #1

declare dso_local i32 @vectx_close(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
