; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/locale/extr_t_mbrtowc.c_h_ctype2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/locale/extr_t_mbrtowc.c_h_ctype2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i8*, i8*, i32*, i32*, i32 }

@SIZE = common dso_local global i32 0, align 4
@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1
@LC_CTYPE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Locale %s not found.\0A\00", align 1
@VIS_WHITE = common dso_local global i32 0, align 4
@VIS_OCTAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Checking string: \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Using locale: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Using mbstate: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@errno = common dso_local global i8* null, align 8
@EILSEQ = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"Invalid sequence\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"At position %zd:\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"  expected: 0x%04X (%u)\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"  got     : 0x%04X (%u)\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Test failed\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"Incorrect terminating character: 0x%04X (expected: 0x00)\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"Incorrect length: %zd (expected: %zd)\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"At position %d:\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"  expected: 0x%04X\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"  got     : 0x%04X\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Incorrect length: %d (expected: %zd)\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"Ok.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.test*, i32)* @h_ctype2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h_ctype2(%struct.test* %0, i32 %1) #0 {
  %3 = alloca %struct.test*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store %struct.test* %0, %struct.test** %3, align 8
  store i32 %1, i32* %4, align 4
  %22 = load i32, i32* @SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %7, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %8, align 8
  %26 = load i32, i32* @LC_ALL, align 4
  %27 = call i8* @setlocale(i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @ATF_REQUIRE_STREQ(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @LC_CTYPE, align 4
  %30 = load %struct.test*, %struct.test** %3, align 8
  %31 = getelementptr inbounds %struct.test, %struct.test* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @setlocale(i32 %29, i8* %32)
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %2
  %36 = load i32, i32* @stderr, align 4
  %37 = load %struct.test*, %struct.test** %3, align 8
  %38 = getelementptr inbounds %struct.test, %struct.test* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  store i32 1, i32* %11, align 4
  br label %255

41:                                               ; preds = %2
  %42 = load %struct.test*, %struct.test** %3, align 8
  %43 = getelementptr inbounds %struct.test, %struct.test* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* @VIS_WHITE, align 4
  %46 = load i32, i32* @VIS_OCTAL, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @strvis(i8* %25, i8* %44, i32 %47)
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  %50 = load i32, i32* @LC_ALL, align 4
  %51 = call i8* @setlocale(i32 %50, i8* null)
  store i8* %51, i8** %9, align 8
  %52 = icmp ne i8* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i32 @ATF_REQUIRE(i32 %53)
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %60)
  %62 = call i32 @memset(i32* %6, i32 0, i32 4)
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %41
  br label %67

66:                                               ; preds = %41
  br label %67

67:                                               ; preds = %66, %65
  %68 = phi i32* [ %6, %65 ], [ null, %66 ]
  store i32* %68, i32** %5, align 8
  store i64 9, i64* %10, align 8
  br label %69

69:                                               ; preds = %173, %67
  %70 = load i64, i64* %10, align 8
  %71 = icmp ugt i64 %70, 0
  br i1 %71, label %72, label %176

72:                                               ; preds = %69
  %73 = load %struct.test*, %struct.test** %3, align 8
  %74 = getelementptr inbounds %struct.test, %struct.test* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %12, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = call i64 @mbsinit(i32* %76)
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @ATF_REQUIRE(i32 %79)
  br label %81

81:                                               ; preds = %155, %92, %72
  %82 = load i8*, i8** %12, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = call i64 @mbrtowc(i32* %13, i8* %82, i64 %83, i32* %84)
  store i64 %85, i64* %16, align 8
  %86 = load i64, i64* %16, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %158

89:                                               ; preds = %81
  %90 = load i64, i64* %16, align 8
  %91 = icmp eq i64 %90, -2
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load i64, i64* %10, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 %93
  store i8* %95, i8** %12, align 8
  %96 = load i64, i64* %10, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = add i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %15, align 4
  br label %81

101:                                              ; preds = %89
  %102 = load i64, i64* %16, align 8
  %103 = icmp eq i64 %102, -1
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i8*, i8** @errno, align 8
  %106 = load i32*, i32** @EILSEQ, align 8
  %107 = call i32 @ATF_REQUIRE_EQ(i8* %105, i32* %106)
  %108 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %109

109:                                              ; preds = %104, %101
  %110 = load i64, i64* %16, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = add i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %15, align 4
  %115 = load i64, i64* %16, align 8
  %116 = load i8*, i8** %12, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 %115
  store i8* %117, i8** %12, align 8
  %118 = load i32, i32* %13, align 4
  %119 = load %struct.test*, %struct.test** %3, align 8
  %120 = getelementptr inbounds %struct.test, %struct.test* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* %14, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %118, %124
  br i1 %125, label %135, label %126

126:                                              ; preds = %109
  %127 = load i32, i32* %15, align 4
  %128 = load %struct.test*, %struct.test** %3, align 8
  %129 = getelementptr inbounds %struct.test, %struct.test* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* %14, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %127, %133
  br i1 %134, label %135, label %155

135:                                              ; preds = %126, %109
  %136 = load i64, i64* %14, align 8
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i64 %136)
  %138 = load %struct.test*, %struct.test** %3, align 8
  %139 = getelementptr inbounds %struct.test, %struct.test* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = load i64, i64* %14, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.test*, %struct.test** %3, align 8
  %145 = getelementptr inbounds %struct.test, %struct.test* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* %14, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %143, i32 %149)
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %15, align 4
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %151, i32 %152)
  %154 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  br label %155

155:                                              ; preds = %135, %126
  %156 = load i64, i64* %14, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %14, align 8
  store i32 0, i32* %15, align 4
  br label %81

158:                                              ; preds = %88
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = load i32, i32* %13, align 4
  %162 = call i32 (i64, i32, i8*, i32, ...) @ATF_REQUIRE_EQ_MSG(i64 %160, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.12, i64 0, i64 0), i32 %161)
  %163 = load i64, i64* %14, align 8
  %164 = load %struct.test*, %struct.test** %3, align 8
  %165 = getelementptr inbounds %struct.test, %struct.test* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load i64, i64* %14, align 8
  %168 = trunc i64 %167 to i32
  %169 = load %struct.test*, %struct.test** %3, align 8
  %170 = getelementptr inbounds %struct.test, %struct.test* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = call i32 (i64, i32, i8*, i32, ...) @ATF_REQUIRE_EQ_MSG(i64 %163, i32 %166, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i32 %168, i32 %171)
  br label %173

173:                                              ; preds = %158
  %174 = load i64, i64* %10, align 8
  %175 = add i64 %174, -1
  store i64 %175, i64* %10, align 8
  br label %69

176:                                              ; preds = %69
  %177 = load i32, i32* @SIZE, align 4
  %178 = zext i32 %177 to i64
  %179 = call i8* @llvm.stacksave()
  store i8* %179, i8** %17, align 8
  %180 = alloca i32, i64 %178, align 16
  store i64 %178, i64* %18, align 8
  %181 = load %struct.test*, %struct.test** %3, align 8
  %182 = getelementptr inbounds %struct.test, %struct.test* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  store i8* %183, i8** %20, align 8
  %184 = mul nuw i64 4, %178
  %185 = trunc i64 %184 to i32
  %186 = call i32 @memset(i32* %180, i32 255, i32 %185)
  %187 = load i32, i32* @SIZE, align 4
  %188 = load i32*, i32** %5, align 8
  %189 = call i64 @mbsrtowcs(i32* %180, i8** %20, i32 %187, i32* %188)
  store i64 %189, i64* %19, align 8
  %190 = load i64, i64* %19, align 8
  %191 = load %struct.test*, %struct.test** %3, align 8
  %192 = getelementptr inbounds %struct.test, %struct.test* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = load i64, i64* %19, align 8
  %195 = trunc i64 %194 to i32
  %196 = load %struct.test*, %struct.test** %3, align 8
  %197 = getelementptr inbounds %struct.test, %struct.test* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = call i32 (i64, i32, i8*, i32, ...) @ATF_REQUIRE_EQ_MSG(i64 %190, i32 %193, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i32 %195, i32 %198)
  %200 = load i8*, i8** %20, align 8
  %201 = call i32 @ATF_REQUIRE_EQ(i8* %200, i32* null)
  store i32 0, i32* %21, align 4
  br label %202

202:                                              ; preds = %239, %176
  %203 = load i32, i32* %21, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %180, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %242

208:                                              ; preds = %202
  %209 = load i32, i32* %21, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %180, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.test*, %struct.test** %3, align 8
  %214 = getelementptr inbounds %struct.test, %struct.test* %213, i32 0, i32 2
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %21, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %212, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %208
  br label %239

222:                                              ; preds = %208
  %223 = load i32, i32* %21, align 4
  %224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 %223)
  %225 = load %struct.test*, %struct.test** %3, align 8
  %226 = getelementptr inbounds %struct.test, %struct.test* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %21, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 %231)
  %233 = load i32, i32* %21, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %180, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 %236)
  %238 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  br label %239

239:                                              ; preds = %222, %221
  %240 = load i32, i32* %21, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %21, align 4
  br label %202

242:                                              ; preds = %202
  %243 = load i32, i32* %21, align 4
  %244 = sext i32 %243 to i64
  %245 = load %struct.test*, %struct.test** %3, align 8
  %246 = getelementptr inbounds %struct.test, %struct.test* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* %21, align 4
  %249 = load %struct.test*, %struct.test** %3, align 8
  %250 = getelementptr inbounds %struct.test, %struct.test* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = call i32 (i64, i32, i8*, i32, ...) @ATF_REQUIRE_EQ_MSG(i64 %244, i32 %247, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i32 %248, i32 %251)
  %253 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %253)
  %254 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %255

255:                                              ; preds = %242, %35
  %256 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %256)
  %257 = load i32, i32* %11, align 4
  switch i32 %257, label %259 [
    i32 0, label %258
    i32 1, label %258
  ]

258:                                              ; preds = %255, %255
  ret void

259:                                              ; preds = %255
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ATF_REQUIRE_STREQ(i8*, i8*) #2

declare dso_local i8* @setlocale(i32, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32 @strvis(i8*, i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @ATF_REQUIRE(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i64 @mbsinit(i32*) #2

declare dso_local i64 @mbrtowc(i32*, i8*, i64, i32*) #2

declare dso_local i32 @ATF_REQUIRE_EQ(i8*, i32*) #2

declare dso_local i32 @atf_tc_fail(i8*) #2

declare dso_local i32 @ATF_REQUIRE_EQ_MSG(i64, i32, i8*, i32, ...) #2

declare dso_local i64 @mbsrtowcs(i32*, i8**, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
