; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_pwhash_argon2i.c_str_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_pwhash_argon2i.c_str_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Correct Horse Battery Staple\00", align 1
@crypto_pwhash_SALTBYTES = common dso_local global i32 0, align 4
@crypto_pwhash_STRBYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c">A 16-bytes salt\00", align 1
@OPSLIMIT = common dso_local global i32 0, align 4
@MEMLIMIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"pwhash_argon2i_str failure\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"pwhash_argon2i_str(2) failure\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"pwhash_argon2i_str() doesn't generate different salts\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"needs_rehash() false positive\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"needs_rehash() false negative\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"pwhash_str_needs_rehash() didn't handle argon2i\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"needs_rehash() didn't fail with an invalid hash string\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"pwhash_str() doesn't properly pad with zeros\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"pwhash_str_verify(1) failure\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"pwhash_str_verify(2) failure\0A\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"pwhash_str() with a large password should have failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"pwhash_str() with a small opslimit should have failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [80 x i8] c"$argon2i$m=65536,t=2,p=1c29tZXNhbHQ$9sTbSlTio3Biev89thdrlKKiCaYsjjYVJxGAL3swxpQ\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"pwhash_str_verify(invalid(0)) failure\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"pwhash_str_verify(invalid(1)) failure %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [80 x i8] c"$argon2i$m=65536,t=2,p=1$c29tZXNhbHQ9sTbSlTio3Biev89thdrlKKiCaYsjjYVJxGAL3swxpQ\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"pwhash_str_verify(invalid(2)) failure\0A\00", align 1
@.str.20 = private unnamed_addr constant [81 x i8] c"$argon2i$m=65536,t=2,p=1$c29tZXNhbHQ$b2G3seW+uPzerwQQC+/E1K50CLLO7YXy0JRcaTuswRo\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"pwhash_str_verify(invalid(3)) failure\0A\00", align 1
@.str.22 = private unnamed_addr constant [85 x i8] c"$argon2i$v=19$m=65536,t=2,p=1c29tZXNhbHQ$wWKIMhR9lyDFvRz9YTZweHKfbftvj+qf+YFY4NeBbtA\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"pwhash_str_verify(invalid(4)) failure\0A\00", align 1
@.str.24 = private unnamed_addr constant [85 x i8] c"$argon2i$v=19$m=65536,t=2,p=1$c29tZXNhbHQwWKIMhR9lyDFvRz9YTZweHKfbftvj+qf+YFY4NeBbtA\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"pwhash_str_verify(invalid(5)) failure\0A\00", align 1
@.str.26 = private unnamed_addr constant [86 x i8] c"$argon2i$v=19$m=65536,t=2,p=1$c29tZXNhbHQ$8iIuixkI73Js3G1uMbezQXD0b8LG4SXGsOwoQkdAQIM\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"pwhash_str_verify(invalid(6)) failure\0A\00", align 1
@.str.28 = private unnamed_addr constant [96 x i8] c"$argon2i$v=19$m=4096,t=3,p=2$b2RpZHVlamRpc29kaXNrdw$TNnWIwlu1061JHrnCqIAmjs3huSxYIU+0jWipu7Kc9M\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"pwhash_str_verify(valid(7)) failure\0A\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"passwore\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [39 x i8] c"pwhash_str_verify(invalid(7)) failure\0A\00", align 1
@.str.32 = private unnamed_addr constant [96 x i8] c"$Argon2i$v=19$m=4096,t=3,p=2$b2RpZHVlamRpc29kaXNrdw$TNnWIwlu1061JHrnCqIAmjs3huSxYIU+0jWipu7Kc9M\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"pwhash_str_verify(invalid(8)) failure\0A\00", align 1
@.str.34 = private unnamed_addr constant [95 x i8] c"$argon2i$v=1$m=4096,t=3,p=2$b2RpZHVlamRpc29kaXNrdw$TNnWIwlu1061JHrnCqIAmjs3huSxYIU+0jWipu7Kc9M\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"pwhash_str_verify(invalid(9)) failure\0A\00", align 1
@.str.36 = private unnamed_addr constant [97 x i8] c"$argon2i$v=1$m=4096,t=3,p=2$b2RpZHVla~=mRpc29kaXNrdw$TNnWIwlu1061JHrnCqIAmjs3huSxYIU+0jWipu7Kc9M\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"pwhash_str_verify(invalid(10)) failure\0A\00", align 1
@.str.38 = private unnamed_addr constant [97 x i8] c"$argon2i$v=1$m=4096,t=3,p=2$b2RpZHVlamRpc29kaXNrdw$TNnWIwlu1061JHrnCqIAmjs3huSxYI~=U+0jWipu7Kc9M\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"pwhash_str_verify(invalid(11)) failure\0A\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@crypto_pwhash_ALG_ARGON2I13 = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@crypto_pwhash_ALG_ARGON2ID13 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @str_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @str_tests() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %5 = load i32, i32* @crypto_pwhash_SALTBYTES, align 4
  %6 = call i64 @sodium_malloc(i32 %5)
  %7 = inttoptr i64 %6 to i8*
  store i8* %7, i8** %3, align 8
  %8 = load i32, i32* @crypto_pwhash_STRBYTES, align 4
  %9 = call i64 @sodium_malloc(i32 %8)
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %1, align 8
  %11 = load i32, i32* @crypto_pwhash_STRBYTES, align 4
  %12 = call i64 @sodium_malloc(i32 %11)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %2, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* @crypto_pwhash_SALTBYTES, align 4
  %16 = call i32 @memcpy(i8* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i8*, i8** %1, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = load i32, i32* @OPSLIMIT, align 4
  %22 = load i32, i32* @MEMLIMIT, align 4
  %23 = call i32 @crypto_pwhash_argon2i_str(i8* %17, i8* %18, i32 %20, i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %0
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %0
  %28 = load i8*, i8** %2, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = load i32, i32* @OPSLIMIT, align 4
  %33 = load i32, i32* @MEMLIMIT, align 4
  %34 = call i32 @crypto_pwhash_argon2i_str(i8* %28, i8* %29, i32 %31, i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %27
  %39 = load i8*, i8** %1, align 8
  %40 = load i8*, i8** %2, align 8
  %41 = call i64 @strcmp(i8* %39, i8* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %38
  %46 = load i8*, i8** %1, align 8
  %47 = load i32, i32* @OPSLIMIT, align 4
  %48 = load i32, i32* @MEMLIMIT, align 4
  %49 = call i32 @crypto_pwhash_argon2i_str_needs_rehash(i8* %46, i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %45
  %54 = load i8*, i8** %1, align 8
  %55 = load i32, i32* @OPSLIMIT, align 4
  %56 = load i32, i32* @MEMLIMIT, align 4
  %57 = sdiv i32 %56, 2
  %58 = call i32 @crypto_pwhash_argon2i_str_needs_rehash(i8* %54, i32 %55, i32 %57)
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %81, label %60

60:                                               ; preds = %53
  %61 = load i8*, i8** %1, align 8
  %62 = load i32, i32* @OPSLIMIT, align 4
  %63 = sdiv i32 %62, 2
  %64 = load i32, i32* @MEMLIMIT, align 4
  %65 = call i32 @crypto_pwhash_argon2i_str_needs_rehash(i8* %61, i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 1
  br i1 %66, label %81, label %67

67:                                               ; preds = %60
  %68 = load i8*, i8** %1, align 8
  %69 = load i32, i32* @OPSLIMIT, align 4
  %70 = load i32, i32* @MEMLIMIT, align 4
  %71 = mul nsw i32 %70, 2
  %72 = call i32 @crypto_pwhash_argon2i_str_needs_rehash(i8* %68, i32 %69, i32 %71)
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %81, label %74

74:                                               ; preds = %67
  %75 = load i8*, i8** %1, align 8
  %76 = load i32, i32* @OPSLIMIT, align 4
  %77 = mul nsw i32 %76, 2
  %78 = load i32, i32* @MEMLIMIT, align 4
  %79 = call i32 @crypto_pwhash_argon2i_str_needs_rehash(i8* %75, i32 %77, i32 %78)
  %80 = icmp ne i32 %79, 1
  br i1 %80, label %81, label %83

81:                                               ; preds = %74, %67, %60, %53
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %74
  %84 = load i8*, i8** %1, align 8
  %85 = load i32, i32* @OPSLIMIT, align 4
  %86 = load i32, i32* @MEMLIMIT, align 4
  %87 = sdiv i32 %86, 2
  %88 = call i32 @crypto_pwhash_str_needs_rehash(i8* %84, i32 %85, i32 %87)
  %89 = icmp ne i32 %88, 1
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %83
  %93 = load i8*, i8** %1, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i32, i32* @OPSLIMIT, align 4
  %96 = load i32, i32* @MEMLIMIT, align 4
  %97 = call i32 @crypto_pwhash_str_needs_rehash(i8* %94, i32 %95, i32 %96)
  %98 = icmp ne i32 %97, -1
  br i1 %98, label %106, label %99

99:                                               ; preds = %92
  %100 = load i8*, i8** %1, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i32, i32* @OPSLIMIT, align 4
  %103 = load i32, i32* @MEMLIMIT, align 4
  %104 = call i32 @crypto_pwhash_argon2i_str_needs_rehash(i8* %101, i32 %102, i32 %103)
  %105 = icmp ne i32 %104, -1
  br i1 %105, label %106, label %108

106:                                              ; preds = %99, %92
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %99
  %109 = load i8*, i8** %1, align 8
  %110 = load i8*, i8** %1, align 8
  %111 = call i32 @strlen(i8* %110)
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  %114 = load i32, i32* @crypto_pwhash_STRBYTES, align 4
  %115 = load i8*, i8** %1, align 8
  %116 = call i32 @strlen(i8* %115)
  %117 = sub i32 %114, %116
  %118 = call i32 @sodium_is_zero(i8* %113, i32 %117)
  %119 = icmp ne i32 %118, 1
  br i1 %119, label %132, label %120

120:                                              ; preds = %108
  %121 = load i8*, i8** %2, align 8
  %122 = load i8*, i8** %2, align 8
  %123 = call i32 @strlen(i8* %122)
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %121, i64 %124
  %126 = load i32, i32* @crypto_pwhash_STRBYTES, align 4
  %127 = load i8*, i8** %2, align 8
  %128 = call i32 @strlen(i8* %127)
  %129 = sub i32 %126, %128
  %130 = call i32 @sodium_is_zero(i8* %125, i32 %129)
  %131 = icmp ne i32 %130, 1
  br i1 %131, label %132, label %134

132:                                              ; preds = %120, %108
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %120
  %135 = load i8*, i8** %1, align 8
  %136 = load i8*, i8** %4, align 8
  %137 = load i8*, i8** %4, align 8
  %138 = call i32 @strlen(i8* %137)
  %139 = call i32 @crypto_pwhash_argon2i_str_verify(i8* %135, i8* %136, i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %134
  %144 = load i8*, i8** %1, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 14
  %146 = load i8, i8* %145, align 1
  %147 = add i8 %146, 1
  store i8 %147, i8* %145, align 1
  %148 = load i8*, i8** %1, align 8
  %149 = load i8*, i8** %4, align 8
  %150 = load i8*, i8** %4, align 8
  %151 = call i32 @strlen(i8* %150)
  %152 = call i32 @crypto_pwhash_argon2i_str_verify(i8* %148, i8* %149, i32 %151)
  %153 = icmp ne i32 %152, -1
  br i1 %153, label %154, label %156

154:                                              ; preds = %143
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %143
  %157 = load i8*, i8** %1, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 14
  %159 = load i8, i8* %158, align 1
  %160 = add i8 %159, -1
  store i8 %160, i8* %158, align 1
  %161 = load i8*, i8** %1, align 8
  %162 = load i32, i32* @crypto_pwhash_STRBYTES, align 4
  %163 = sub i32 %162, 1
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %161, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 0
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  %171 = load i8*, i8** %2, align 8
  %172 = load i8*, i8** %4, align 8
  %173 = load i32, i32* @OPSLIMIT, align 4
  %174 = load i32, i32* @MEMLIMIT, align 4
  %175 = call i32 @crypto_pwhash_argon2i_str(i8* %171, i8* %172, i32 0, i32 %173, i32 %174)
  %176 = icmp ne i32 %175, -1
  br i1 %176, label %177, label %179

177:                                              ; preds = %156
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0))
  br label %179

179:                                              ; preds = %177, %156
  %180 = load i8*, i8** %2, align 8
  %181 = load i8*, i8** %4, align 8
  %182 = load i8*, i8** %4, align 8
  %183 = call i32 @strlen(i8* %182)
  %184 = load i32, i32* @MEMLIMIT, align 4
  %185 = call i32 @crypto_pwhash_argon2i_str(i8* %180, i8* %181, i32 %183, i32 1, i32 %184)
  %186 = icmp ne i32 %185, -1
  br i1 %186, label %187, label %189

187:                                              ; preds = %179
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i64 0, i64 0))
  br label %189

189:                                              ; preds = %187, %179
  %190 = call i32 @crypto_pwhash_argon2i_str_verify(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 0)
  %191 = icmp ne i32 %190, -1
  br i1 %191, label %192, label %194

192:                                              ; preds = %189
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0))
  br label %194

194:                                              ; preds = %192, %189
  %195 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %196 = call i32 @crypto_pwhash_argon2i_str_verify(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %195)
  %197 = icmp ne i32 %196, -1
  br i1 %197, label %198, label %201

198:                                              ; preds = %194
  %199 = load i32, i32* @errno, align 4
  %200 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0), i32 %199)
  br label %201

201:                                              ; preds = %198, %194
  %202 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %203 = call i32 @crypto_pwhash_argon2i_str_verify(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %202)
  %204 = icmp ne i32 %203, -1
  br i1 %204, label %205, label %207

205:                                              ; preds = %201
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i64 0, i64 0))
  br label %207

207:                                              ; preds = %205, %201
  %208 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %209 = call i32 @crypto_pwhash_str_verify(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %208)
  %210 = icmp ne i32 %209, -1
  br i1 %210, label %211, label %213

211:                                              ; preds = %207
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0))
  br label %213

213:                                              ; preds = %211, %207
  %214 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %215 = call i32 @crypto_pwhash_str_verify(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %214)
  %216 = icmp ne i32 %215, -1
  br i1 %216, label %217, label %219

217:                                              ; preds = %213
  %218 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0))
  br label %219

219:                                              ; preds = %217, %213
  %220 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %221 = call i32 @crypto_pwhash_str_verify(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %220)
  %222 = icmp ne i32 %221, -1
  br i1 %222, label %223, label %225

223:                                              ; preds = %219
  %224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0))
  br label %225

225:                                              ; preds = %223, %219
  %226 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %227 = call i32 @crypto_pwhash_str_verify(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %226)
  %228 = icmp ne i32 %227, -1
  br i1 %228, label %229, label %231

229:                                              ; preds = %225
  %230 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i64 0, i64 0))
  br label %231

231:                                              ; preds = %229, %225
  %232 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %233 = call i32 @crypto_pwhash_str_verify(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %231
  %236 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i64 0, i64 0))
  br label %237

237:                                              ; preds = %235, %231
  %238 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0))
  %239 = call i32 @crypto_pwhash_str_verify(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), i32 %238)
  %240 = icmp ne i32 %239, -1
  br i1 %240, label %245, label %241

241:                                              ; preds = %237
  %242 = load i32, i32* @errno, align 4
  %243 = load i32, i32* @EINVAL, align 4
  %244 = icmp ne i32 %242, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %241, %237
  %246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0))
  br label %247

247:                                              ; preds = %245, %241
  %248 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %249 = call i32 @crypto_pwhash_str_verify(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %248)
  %250 = icmp ne i32 %249, -1
  br i1 %250, label %255, label %251

251:                                              ; preds = %247
  %252 = load i32, i32* @errno, align 4
  %253 = load i32, i32* @EINVAL, align 4
  %254 = icmp ne i32 %252, %253
  br i1 %254, label %255, label %257

255:                                              ; preds = %251, %247
  %256 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i64 0, i64 0))
  br label %257

257:                                              ; preds = %255, %251
  %258 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %259 = call i32 @crypto_pwhash_str_verify(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %258)
  %260 = icmp ne i32 %259, -1
  br i1 %260, label %265, label %261

261:                                              ; preds = %257
  %262 = load i32, i32* @errno, align 4
  %263 = load i32, i32* @EINVAL, align 4
  %264 = icmp ne i32 %262, %263
  br i1 %264, label %265, label %267

265:                                              ; preds = %261, %257
  %266 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i64 0, i64 0))
  br label %267

267:                                              ; preds = %265, %261
  %268 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %269 = call i32 @crypto_pwhash_str_verify(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %268)
  %270 = icmp ne i32 %269, -1
  br i1 %270, label %275, label %271

271:                                              ; preds = %267
  %272 = load i32, i32* @errno, align 4
  %273 = load i32, i32* @EINVAL, align 4
  %274 = icmp ne i32 %272, %273
  br i1 %274, label %275, label %277

275:                                              ; preds = %271, %267
  %276 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0))
  br label %277

277:                                              ; preds = %275, %271
  %278 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %279 = call i32 @crypto_pwhash_str_verify(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %278)
  %280 = icmp ne i32 %279, -1
  br i1 %280, label %285, label %281

281:                                              ; preds = %277
  %282 = load i32, i32* @errno, align 4
  %283 = load i32, i32* @EINVAL, align 4
  %284 = icmp ne i32 %282, %283
  br i1 %284, label %285, label %287

285:                                              ; preds = %281, %277
  %286 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0))
  br label %287

287:                                              ; preds = %285, %281
  %288 = load i8*, i8** %1, align 8
  %289 = load i32, i32* @OPSLIMIT, align 4
  %290 = load i32, i32* @MEMLIMIT, align 4
  %291 = load i32, i32* @crypto_pwhash_ALG_ARGON2I13, align 4
  %292 = call i64 @crypto_pwhash_str_alg(i8* %288, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i32 4, i32 %289, i32 %290, i32 %291)
  %293 = icmp eq i64 %292, 0
  %294 = zext i1 %293 to i32
  %295 = call i32 @assert(i32 %294)
  %296 = load i8*, i8** %1, align 8
  %297 = call i32 @crypto_pwhash_argon2i_str_verify(i8* %296, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i32 4)
  %298 = icmp eq i32 %297, 0
  %299 = zext i1 %298 to i32
  %300 = call i32 @assert(i32 %299)
  %301 = load i8*, i8** %1, align 8
  %302 = load i32, i32* @OPSLIMIT, align 4
  %303 = load i32, i32* @MEMLIMIT, align 4
  %304 = call i32 @crypto_pwhash_argon2i_str_needs_rehash(i8* %301, i32 %302, i32 %303)
  %305 = icmp eq i32 %304, 0
  %306 = zext i1 %305 to i32
  %307 = call i32 @assert(i32 %306)
  %308 = load i8*, i8** %1, align 8
  %309 = load i32, i32* @OPSLIMIT, align 4
  %310 = sdiv i32 %309, 2
  %311 = load i32, i32* @MEMLIMIT, align 4
  %312 = call i32 @crypto_pwhash_argon2i_str_needs_rehash(i8* %308, i32 %310, i32 %311)
  %313 = icmp eq i32 %312, 1
  %314 = zext i1 %313 to i32
  %315 = call i32 @assert(i32 %314)
  %316 = load i8*, i8** %1, align 8
  %317 = load i32, i32* @OPSLIMIT, align 4
  %318 = load i32, i32* @MEMLIMIT, align 4
  %319 = sdiv i32 %318, 2
  %320 = call i32 @crypto_pwhash_argon2i_str_needs_rehash(i8* %316, i32 %317, i32 %319)
  %321 = icmp eq i32 %320, 1
  %322 = zext i1 %321 to i32
  %323 = call i32 @assert(i32 %322)
  %324 = load i8*, i8** %1, align 8
  %325 = call i32 @crypto_pwhash_argon2i_str_needs_rehash(i8* %324, i32 0, i32 0)
  %326 = icmp eq i32 %325, 1
  %327 = zext i1 %326 to i32
  %328 = call i32 @assert(i32 %327)
  %329 = load i8*, i8** %1, align 8
  %330 = call i32 @crypto_pwhash_argon2id_str_needs_rehash(i8* %329, i32 0, i32 0)
  %331 = icmp eq i32 %330, -1
  %332 = zext i1 %331 to i32
  %333 = call i32 @assert(i32 %332)
  %334 = load i8*, i8** %1, align 8
  %335 = getelementptr inbounds i8, i8* %334, i64 1
  %336 = load i32, i32* @OPSLIMIT, align 4
  %337 = load i32, i32* @MEMLIMIT, align 4
  %338 = call i32 @crypto_pwhash_argon2i_str_needs_rehash(i8* %335, i32 %336, i32 %337)
  %339 = icmp eq i32 %338, -1
  %340 = zext i1 %339 to i32
  %341 = call i32 @assert(i32 %340)
  %342 = load i8*, i8** %1, align 8
  %343 = call i32 @crypto_pwhash_argon2id_str_needs_rehash(i8* %342, i32 0, i32 0)
  %344 = icmp eq i32 %343, -1
  %345 = zext i1 %344 to i32
  %346 = call i32 @assert(i32 %345)
  %347 = load i32, i32* @OPSLIMIT, align 4
  %348 = load i32, i32* @MEMLIMIT, align 4
  %349 = call i32 @crypto_pwhash_argon2id_str_needs_rehash(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.41, i64 0, i64 0), i32 %347, i32 %348)
  %350 = icmp eq i32 %349, -1
  %351 = zext i1 %350 to i32
  %352 = call i32 @assert(i32 %351)
  %353 = load i8*, i8** %1, align 8
  %354 = load i32, i32* @OPSLIMIT, align 4
  %355 = load i32, i32* @MEMLIMIT, align 4
  %356 = load i32, i32* @crypto_pwhash_ALG_ARGON2ID13, align 4
  %357 = call i64 @crypto_pwhash_str_alg(i8* %353, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i32 4, i32 %354, i32 %355, i32 %356)
  %358 = icmp eq i64 %357, 0
  %359 = zext i1 %358 to i32
  %360 = call i32 @assert(i32 %359)
  %361 = load i8*, i8** %1, align 8
  %362 = call i64 @crypto_pwhash_argon2id_str_verify(i8* %361, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i32 4)
  %363 = icmp eq i64 %362, 0
  %364 = zext i1 %363 to i32
  %365 = call i32 @assert(i32 %364)
  %366 = load i8*, i8** %1, align 8
  %367 = load i32, i32* @OPSLIMIT, align 4
  %368 = load i32, i32* @MEMLIMIT, align 4
  %369 = call i32 @crypto_pwhash_argon2id_str_needs_rehash(i8* %366, i32 %367, i32 %368)
  %370 = icmp eq i32 %369, 0
  %371 = zext i1 %370 to i32
  %372 = call i32 @assert(i32 %371)
  %373 = load i8*, i8** %1, align 8
  %374 = load i32, i32* @OPSLIMIT, align 4
  %375 = sdiv i32 %374, 2
  %376 = load i32, i32* @MEMLIMIT, align 4
  %377 = call i32 @crypto_pwhash_argon2id_str_needs_rehash(i8* %373, i32 %375, i32 %376)
  %378 = icmp eq i32 %377, 1
  %379 = zext i1 %378 to i32
  %380 = call i32 @assert(i32 %379)
  %381 = load i8*, i8** %1, align 8
  %382 = load i32, i32* @OPSLIMIT, align 4
  %383 = load i32, i32* @MEMLIMIT, align 4
  %384 = sdiv i32 %383, 2
  %385 = call i32 @crypto_pwhash_argon2id_str_needs_rehash(i8* %381, i32 %382, i32 %384)
  %386 = icmp eq i32 %385, 1
  %387 = zext i1 %386 to i32
  %388 = call i32 @assert(i32 %387)
  %389 = load i8*, i8** %1, align 8
  %390 = call i32 @crypto_pwhash_argon2id_str_needs_rehash(i8* %389, i32 0, i32 0)
  %391 = icmp eq i32 %390, 1
  %392 = zext i1 %391 to i32
  %393 = call i32 @assert(i32 %392)
  %394 = load i8*, i8** %1, align 8
  %395 = call i32 @crypto_pwhash_argon2i_str_needs_rehash(i8* %394, i32 0, i32 0)
  %396 = icmp eq i32 %395, -1
  %397 = zext i1 %396 to i32
  %398 = call i32 @assert(i32 %397)
  %399 = load i32, i32* @OPSLIMIT, align 4
  %400 = load i32, i32* @MEMLIMIT, align 4
  %401 = call i32 @crypto_pwhash_argon2id_str_needs_rehash(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.41, i64 0, i64 0), i32 %399, i32 %400)
  %402 = icmp eq i32 %401, -1
  %403 = zext i1 %402 to i32
  %404 = call i32 @assert(i32 %403)
  %405 = load i8*, i8** %1, align 8
  %406 = getelementptr inbounds i8, i8* %405, i64 1
  %407 = load i32, i32* @OPSLIMIT, align 4
  %408 = load i32, i32* @MEMLIMIT, align 4
  %409 = call i32 @crypto_pwhash_argon2id_str_needs_rehash(i8* %406, i32 %407, i32 %408)
  %410 = icmp eq i32 %409, -1
  %411 = zext i1 %410 to i32
  %412 = call i32 @assert(i32 %411)
  %413 = load i8*, i8** %3, align 8
  %414 = call i32 @sodium_free(i8* %413)
  %415 = load i8*, i8** %1, align 8
  %416 = call i32 @sodium_free(i8* %415)
  %417 = load i8*, i8** %2, align 8
  %418 = call i32 @sodium_free(i8* %417)
  ret void
}

declare dso_local i64 @sodium_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @crypto_pwhash_argon2i_str(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @crypto_pwhash_argon2i_str_needs_rehash(i8*, i32, i32) #1

declare dso_local i32 @crypto_pwhash_str_needs_rehash(i8*, i32, i32) #1

declare dso_local i32 @sodium_is_zero(i8*, i32) #1

declare dso_local i32 @crypto_pwhash_argon2i_str_verify(i8*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @crypto_pwhash_str_verify(i8*, i8*, i32) #1

declare dso_local i64 @crypto_pwhash_str_alg(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @crypto_pwhash_argon2id_str_needs_rehash(i8*, i32, i32) #1

declare dso_local i64 @crypto_pwhash_argon2id_str_verify(i8*, i8*, i32) #1

declare dso_local i32 @sodium_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
