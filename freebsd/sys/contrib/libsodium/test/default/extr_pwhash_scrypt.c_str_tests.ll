; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_pwhash_scrypt.c_str_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_pwhash_scrypt.c_str_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Correct Horse Battery Staple\00", align 1
@crypto_pwhash_scryptsalsa208sha256_SALTBYTES = common dso_local global i32 0, align 4
@crypto_pwhash_scryptsalsa208sha256_STRBYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"[<~A 32-bytes salt for scrypt~>]\00", align 1
@OPSLIMIT = common dso_local global i32 0, align 4
@MEMLIMIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"pwhash_str failure\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"pwhash_str(2) failure\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"pwhash_str doesn't generate different salts\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"needs_rehash() false positive\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"needs_rehash() false negative\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"needs_rehash() didn't fail with an invalid hash string\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"pwhash_str_verify failure\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"pwhash_str_verify(2) failure\0A\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @str_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @str_tests() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %5 = load i32, i32* @crypto_pwhash_scryptsalsa208sha256_SALTBYTES, align 4
  %6 = call i64 @sodium_malloc(i32 %5)
  %7 = inttoptr i64 %6 to i8*
  store i8* %7, i8** %3, align 8
  %8 = load i32, i32* @crypto_pwhash_scryptsalsa208sha256_STRBYTES, align 4
  %9 = call i64 @sodium_malloc(i32 %8)
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %1, align 8
  %11 = load i32, i32* @crypto_pwhash_scryptsalsa208sha256_STRBYTES, align 4
  %12 = call i64 @sodium_malloc(i32 %11)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %2, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* @crypto_pwhash_scryptsalsa208sha256_SALTBYTES, align 4
  %16 = call i32 @memcpy(i8* %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i8*, i8** %1, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = load i32, i32* @OPSLIMIT, align 4
  %22 = load i32, i32* @MEMLIMIT, align 4
  %23 = call i64 @crypto_pwhash_scryptsalsa208sha256_str(i8* %17, i8* %18, i32 %20, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %0
  %26 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %0
  %28 = load i8*, i8** %2, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = load i32, i32* @OPSLIMIT, align 4
  %33 = load i32, i32* @MEMLIMIT, align 4
  %34 = call i64 @crypto_pwhash_scryptsalsa208sha256_str(i8* %28, i8* %29, i32 %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %27
  %39 = load i8*, i8** %1, align 8
  %40 = load i8*, i8** %2, align 8
  %41 = call i64 @strcmp(i8* %39, i8* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %38
  %46 = load i8*, i8** %1, align 8
  %47 = load i32, i32* @OPSLIMIT, align 4
  %48 = load i32, i32* @MEMLIMIT, align 4
  %49 = call i32 @crypto_pwhash_scryptsalsa208sha256_str_needs_rehash(i8* %46, i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %45
  %54 = load i8*, i8** %1, align 8
  %55 = load i32, i32* @OPSLIMIT, align 4
  %56 = load i32, i32* @MEMLIMIT, align 4
  %57 = sdiv i32 %56, 2
  %58 = call i32 @crypto_pwhash_scryptsalsa208sha256_str_needs_rehash(i8* %54, i32 %55, i32 %57)
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %81, label %60

60:                                               ; preds = %53
  %61 = load i8*, i8** %1, align 8
  %62 = load i32, i32* @OPSLIMIT, align 4
  %63 = sdiv i32 %62, 2
  %64 = load i32, i32* @MEMLIMIT, align 4
  %65 = call i32 @crypto_pwhash_scryptsalsa208sha256_str_needs_rehash(i8* %61, i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 1
  br i1 %66, label %81, label %67

67:                                               ; preds = %60
  %68 = load i8*, i8** %1, align 8
  %69 = load i32, i32* @OPSLIMIT, align 4
  %70 = load i32, i32* @MEMLIMIT, align 4
  %71 = mul nsw i32 %70, 2
  %72 = call i32 @crypto_pwhash_scryptsalsa208sha256_str_needs_rehash(i8* %68, i32 %69, i32 %71)
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %81, label %74

74:                                               ; preds = %67
  %75 = load i8*, i8** %1, align 8
  %76 = load i32, i32* @OPSLIMIT, align 4
  %77 = mul nsw i32 %76, 2
  %78 = load i32, i32* @MEMLIMIT, align 4
  %79 = call i32 @crypto_pwhash_scryptsalsa208sha256_str_needs_rehash(i8* %75, i32 %77, i32 %78)
  %80 = icmp ne i32 %79, 1
  br i1 %80, label %81, label %83

81:                                               ; preds = %74, %67, %60, %53
  %82 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %74
  %84 = load i8*, i8** %1, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i32, i32* @OPSLIMIT, align 4
  %87 = load i32, i32* @MEMLIMIT, align 4
  %88 = call i32 @crypto_pwhash_scryptsalsa208sha256_str_needs_rehash(i8* %85, i32 %86, i32 %87)
  %89 = icmp ne i32 %88, -1
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %83
  %93 = load i8*, i8** %1, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = call i64 @crypto_pwhash_scryptsalsa208sha256_str_verify(i8* %93, i8* %94, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %92
  %102 = load i8*, i8** %1, align 8
  %103 = load i8*, i8** %4, align 8
  %104 = load i8*, i8** %4, align 8
  %105 = call i32 @strlen(i8* %104)
  %106 = call i64 @crypto_pwhash_scryptsalsa208sha256_str_verify(i8* %102, i8* %103, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %101
  %111 = load i8*, i8** %1, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 14
  %113 = load i8, i8* %112, align 1
  %114 = add i8 %113, 1
  store i8 %114, i8* %112, align 1
  %115 = load i8*, i8** %1, align 8
  %116 = load i8*, i8** %4, align 8
  %117 = load i8*, i8** %4, align 8
  %118 = call i32 @strlen(i8* %117)
  %119 = call i64 @crypto_pwhash_scryptsalsa208sha256_str_verify(i8* %115, i8* %116, i32 %118)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %110
  %122 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %110
  %124 = load i8*, i8** %1, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 14
  %126 = load i8, i8* %125, align 1
  %127 = add i8 %126, -1
  store i8 %127, i8* %125, align 1
  %128 = load i8*, i8** %1, align 8
  %129 = load i32, i32* @crypto_pwhash_scryptsalsa208sha256_STRBYTES, align 4
  %130 = sub i32 %129, 1
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %128, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  %138 = load i8*, i8** %1, align 8
  %139 = call i32 @crypto_pwhash_scryptsalsa208sha256_str_needs_rehash(i8* %138, i32 0, i32 0)
  %140 = icmp eq i32 %139, 1
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = load i8*, i8** %1, align 8
  %144 = call i32 @crypto_pwhash_str_needs_rehash(i8* %143, i32 0, i32 0)
  %145 = icmp eq i32 %144, -1
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = load i8*, i8** %1, align 8
  %149 = load i32, i32* @OPSLIMIT, align 4
  %150 = load i32, i32* @MEMLIMIT, align 4
  %151 = call i32 @crypto_pwhash_str_needs_rehash(i8* %148, i32 %149, i32 %150)
  %152 = icmp eq i32 %151, -1
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = load i32, i32* @OPSLIMIT, align 4
  %156 = load i32, i32* @MEMLIMIT, align 4
  %157 = call i32 @crypto_pwhash_scryptsalsa208sha256_str_needs_rehash(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i32 %155, i32 %156)
  %158 = icmp eq i32 %157, -1
  %159 = zext i1 %158 to i32
  %160 = call i32 @assert(i32 %159)
  %161 = load i8*, i8** %3, align 8
  %162 = call i32 @sodium_free(i8* %161)
  %163 = load i8*, i8** %1, align 8
  %164 = call i32 @sodium_free(i8* %163)
  %165 = load i8*, i8** %2, align 8
  %166 = call i32 @sodium_free(i8* %165)
  ret void
}

declare dso_local i64 @sodium_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @crypto_pwhash_scryptsalsa208sha256_str(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @crypto_pwhash_scryptsalsa208sha256_str_needs_rehash(i8*, i32, i32) #1

declare dso_local i64 @crypto_pwhash_scryptsalsa208sha256_str_verify(i8*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @crypto_pwhash_str_needs_rehash(i8*, i32, i32) #1

declare dso_local i32 @sodium_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
