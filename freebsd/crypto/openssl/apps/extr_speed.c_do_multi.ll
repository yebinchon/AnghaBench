; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_speed.c_do_multi.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_speed.c_do_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@do_multi.sep = internal global [2 x i8] c":\00", align 1
@.str = private unnamed_addr constant [23 x i8] c"fd buffer for do_multi\00", align 1
@bio_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"pipe failure\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"dup failed\0A\00", align 1
@mr = common dso_local global i32 0, align 4
@usertime = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"Forked child %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Don't understand line '%s' from child %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Got: %s from %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"+F:\00", align 1
@results = common dso_local global double** null, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"+F2:\00", align 1
@rsa_results = common dso_local global double** null, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"+F3:\00", align 1
@dsa_results = common dso_local global double** null, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"+F4:\00", align 1
@ecdsa_results = common dso_local global double** null, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"+F5:\00", align 1
@ecdh_results = common dso_local global double** null, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"+F6:\00", align 1
@eddsa_results = common dso_local global double** null, align 8
@.str.13 = private unnamed_addr constant [4 x i8] c"+H:\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Unknown type '%s' from child %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @do_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_multi(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 4, %25
  %27 = trunc i64 %26 to i32
  %28 = call i32* @app_malloc(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32* %28, i32** %8, align 8
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %80, %2
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %83

33:                                               ; preds = %29
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %35 = call i32 @pipe(i32* %34)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @bio_err, align 4
  %39 = call i32 (i32, i8*, ...) @BIO_printf(i32 %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @exit(i32 1) #3
  unreachable

41:                                               ; preds = %33
  %42 = load i32, i32* @stdout, align 4
  %43 = call i32 @fflush(i32 %42)
  %44 = load i32, i32* @bio_err, align 4
  %45 = call i32 @BIO_flush(i32 %44)
  %46 = call i64 (...) @fork()
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @close(i32 %50)
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  br label %77

58:                                               ; preds = %41
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @close(i32 %60)
  %62 = call i32 @close(i32 1)
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dup(i32 %64)
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load i32, i32* @bio_err, align 4
  %69 = call i32 (i32, i8*, ...) @BIO_printf(i32 %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %70 = call i32 @exit(i32 1) #3
  unreachable

71:                                               ; preds = %58
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @close(i32 %73)
  store i32 1, i32* @mr, align 4
  store i64 0, i64* @usertime, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @free(i32* %75)
  store i32 0, i32* %3, align 4
  br label %326

77:                                               ; preds = %48
  %78 = load i32, i32* %6, align 4
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %29

83:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %320, %83
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %323

88:                                               ; preds = %84
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32* @fdopen(i32 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %94, i32** %9, align 8
  br label %95

95:                                               ; preds = %316, %112, %88
  %96 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %97 = load i32*, i32** %9, align 8
  %98 = call i64 @fgets(i8* %96, i32 1024, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %317

100:                                              ; preds = %95
  %101 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %102 = call i8* @strchr(i8* %101, i8 signext 10)
  store i8* %102, i8** %11, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i8*, i8** %11, align 8
  store i8 0, i8* %106, align 1
  br label %107

107:                                              ; preds = %105, %100
  %108 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %109 = load i8, i8* %108, align 16
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 43
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load i32, i32* @bio_err, align 4
  %114 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %115 = load i32, i32* %6, align 4
  %116 = call i32 (i32, i8*, ...) @BIO_printf(i32 %113, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %114, i32 %115)
  br label %95

117:                                              ; preds = %107
  %118 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %119 = load i32, i32* %6, align 4
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %118, i32 %119)
  %121 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %122 = call i64 @strncmp(i8* %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 3)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %151

124:                                              ; preds = %117
  %125 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %126 = getelementptr inbounds i8, i8* %125, i64 3
  store i8* %126, i8** %11, align 8
  %127 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %128 = call i32 @atoi(i32 %127)
  store i32 %128, i32* %12, align 4
  %129 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %130

130:                                              ; preds = %147, %124
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %5, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %150

134:                                              ; preds = %130
  %135 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %136 = call double @atof(i32 %135)
  %137 = load double**, double*** @results, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds double*, double** %137, i64 %139
  %141 = load double*, double** %140, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds double, double* %141, i64 %143
  %145 = load double, double* %144, align 8
  %146 = fadd double %145, %136
  store double %146, double* %144, align 8
  br label %147

147:                                              ; preds = %134
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %13, align 4
  br label %130

150:                                              ; preds = %130
  br label %316

151:                                              ; preds = %117
  %152 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %153 = call i64 @strncmp(i8* %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 4)
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %183

155:                                              ; preds = %151
  %156 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %157 = getelementptr inbounds i8, i8* %156, i64 4
  store i8* %157, i8** %11, align 8
  %158 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %159 = call i32 @atoi(i32 %158)
  store i32 %159, i32* %14, align 4
  %160 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %161 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %162 = call double @atof(i32 %161)
  store double %162, double* %15, align 8
  %163 = load double, double* %15, align 8
  %164 = load double**, double*** @rsa_results, align 8
  %165 = load i32, i32* %14, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds double*, double** %164, i64 %166
  %168 = load double*, double** %167, align 8
  %169 = getelementptr inbounds double, double* %168, i64 0
  %170 = load double, double* %169, align 8
  %171 = fadd double %170, %163
  store double %171, double* %169, align 8
  %172 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %173 = call double @atof(i32 %172)
  store double %173, double* %15, align 8
  %174 = load double, double* %15, align 8
  %175 = load double**, double*** @rsa_results, align 8
  %176 = load i32, i32* %14, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds double*, double** %175, i64 %177
  %179 = load double*, double** %178, align 8
  %180 = getelementptr inbounds double, double* %179, i64 1
  %181 = load double, double* %180, align 8
  %182 = fadd double %181, %174
  store double %182, double* %180, align 8
  br label %315

183:                                              ; preds = %151
  %184 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %185 = call i64 @strncmp(i8* %184, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4)
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %215

187:                                              ; preds = %183
  %188 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %189 = getelementptr inbounds i8, i8* %188, i64 4
  store i8* %189, i8** %11, align 8
  %190 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %191 = call i32 @atoi(i32 %190)
  store i32 %191, i32* %16, align 4
  %192 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %193 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %194 = call double @atof(i32 %193)
  store double %194, double* %17, align 8
  %195 = load double, double* %17, align 8
  %196 = load double**, double*** @dsa_results, align 8
  %197 = load i32, i32* %16, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds double*, double** %196, i64 %198
  %200 = load double*, double** %199, align 8
  %201 = getelementptr inbounds double, double* %200, i64 0
  %202 = load double, double* %201, align 8
  %203 = fadd double %202, %195
  store double %203, double* %201, align 8
  %204 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %205 = call double @atof(i32 %204)
  store double %205, double* %17, align 8
  %206 = load double, double* %17, align 8
  %207 = load double**, double*** @dsa_results, align 8
  %208 = load i32, i32* %16, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds double*, double** %207, i64 %209
  %211 = load double*, double** %210, align 8
  %212 = getelementptr inbounds double, double* %211, i64 1
  %213 = load double, double* %212, align 8
  %214 = fadd double %213, %206
  store double %214, double* %212, align 8
  br label %314

215:                                              ; preds = %183
  %216 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %217 = call i64 @strncmp(i8* %216, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 4)
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %247

219:                                              ; preds = %215
  %220 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %221 = getelementptr inbounds i8, i8* %220, i64 4
  store i8* %221, i8** %11, align 8
  %222 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %223 = call i32 @atoi(i32 %222)
  store i32 %223, i32* %18, align 4
  %224 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %225 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %226 = call double @atof(i32 %225)
  store double %226, double* %19, align 8
  %227 = load double, double* %19, align 8
  %228 = load double**, double*** @ecdsa_results, align 8
  %229 = load i32, i32* %18, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds double*, double** %228, i64 %230
  %232 = load double*, double** %231, align 8
  %233 = getelementptr inbounds double, double* %232, i64 0
  %234 = load double, double* %233, align 8
  %235 = fadd double %234, %227
  store double %235, double* %233, align 8
  %236 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %237 = call double @atof(i32 %236)
  store double %237, double* %19, align 8
  %238 = load double, double* %19, align 8
  %239 = load double**, double*** @ecdsa_results, align 8
  %240 = load i32, i32* %18, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds double*, double** %239, i64 %241
  %243 = load double*, double** %242, align 8
  %244 = getelementptr inbounds double, double* %243, i64 1
  %245 = load double, double* %244, align 8
  %246 = fadd double %245, %238
  store double %246, double* %244, align 8
  br label %313

247:                                              ; preds = %215
  %248 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %249 = call i64 @strncmp(i8* %248, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 4)
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %268

251:                                              ; preds = %247
  %252 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %253 = getelementptr inbounds i8, i8* %252, i64 4
  store i8* %253, i8** %11, align 8
  %254 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %255 = call i32 @atoi(i32 %254)
  store i32 %255, i32* %20, align 4
  %256 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %257 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %258 = call double @atof(i32 %257)
  store double %258, double* %21, align 8
  %259 = load double, double* %21, align 8
  %260 = load double**, double*** @ecdh_results, align 8
  %261 = load i32, i32* %20, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds double*, double** %260, i64 %262
  %264 = load double*, double** %263, align 8
  %265 = getelementptr inbounds double, double* %264, i64 0
  %266 = load double, double* %265, align 8
  %267 = fadd double %266, %259
  store double %267, double* %265, align 8
  br label %312

268:                                              ; preds = %247
  %269 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %270 = call i64 @strncmp(i8* %269, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 4)
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %300

272:                                              ; preds = %268
  %273 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %274 = getelementptr inbounds i8, i8* %273, i64 4
  store i8* %274, i8** %11, align 8
  %275 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %276 = call i32 @atoi(i32 %275)
  store i32 %276, i32* %22, align 4
  %277 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %278 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %279 = call double @atof(i32 %278)
  store double %279, double* %23, align 8
  %280 = load double, double* %23, align 8
  %281 = load double**, double*** @eddsa_results, align 8
  %282 = load i32, i32* %22, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds double*, double** %281, i64 %283
  %285 = load double*, double** %284, align 8
  %286 = getelementptr inbounds double, double* %285, i64 0
  %287 = load double, double* %286, align 8
  %288 = fadd double %287, %280
  store double %288, double* %286, align 8
  %289 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %290 = call double @atof(i32 %289)
  store double %290, double* %23, align 8
  %291 = load double, double* %23, align 8
  %292 = load double**, double*** @eddsa_results, align 8
  %293 = load i32, i32* %22, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds double*, double** %292, i64 %294
  %296 = load double*, double** %295, align 8
  %297 = getelementptr inbounds double, double* %296, i64 1
  %298 = load double, double* %297, align 8
  %299 = fadd double %298, %291
  store double %299, double* %297, align 8
  br label %311

300:                                              ; preds = %268
  %301 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %302 = call i64 @strncmp(i8* %301, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 3)
  %303 = icmp eq i64 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %300
  br label %310

305:                                              ; preds = %300
  %306 = load i32, i32* @bio_err, align 4
  %307 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %308 = load i32, i32* %6, align 4
  %309 = call i32 (i32, i8*, ...) @BIO_printf(i32 %306, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i8* %307, i32 %308)
  br label %310

310:                                              ; preds = %305, %304
  br label %311

311:                                              ; preds = %310, %272
  br label %312

312:                                              ; preds = %311, %251
  br label %313

313:                                              ; preds = %312, %219
  br label %314

314:                                              ; preds = %313, %187
  br label %315

315:                                              ; preds = %314, %155
  br label %316

316:                                              ; preds = %315, %150
  br label %95

317:                                              ; preds = %95
  %318 = load i32*, i32** %9, align 8
  %319 = call i32 @fclose(i32* %318)
  br label %320

320:                                              ; preds = %317
  %321 = load i32, i32* %6, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %6, align 4
  br label %84

323:                                              ; preds = %84
  %324 = load i32*, i32** %8, align 8
  %325 = call i32 @free(i32* %324)
  store i32 1, i32* %3, align 4
  br label %326

326:                                              ; preds = %323, %71
  %327 = load i32, i32* %3, align 4
  ret i32 %327
}

declare dso_local i32* @app_malloc(i32, i8*) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @BIO_flush(i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @dup(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @sstrsep(i8**, i8*) #1

declare dso_local double @atof(i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
