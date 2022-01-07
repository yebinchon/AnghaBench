; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/hash/extr_t_hmac.c_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/hash/extr_t_hmac.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"md2\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"md4\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"rmd160\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"sha224\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"sha384\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1
@__const.test.names = private unnamed_addr constant [9 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)], align 16
@.str.9 = private unnamed_addr constant [22 x i8] c"hash %s len %u != %zu\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"hash %s failed for keylen=%zu, datalen=%zu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [256 x i64], align 16
  %5 = alloca [4096 x i64], align 16
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [9 x i8*], align 16
  %11 = alloca [9 x i8*], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %1, align 8
  %21 = alloca i64, i64 %19, align 16
  store i64 %19, i64* %2, align 8
  %22 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i64, i64 %23, align 16
  store i64 %23, i64* %3, align 8
  %25 = getelementptr inbounds [9 x i8*], [9 x i8*]* %10, i64 0, i64 0
  %26 = call i8* (...) @EVP_md2()
  store i8* %26, i8** %25, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 1
  %28 = call i8* (...) @EVP_md4()
  store i8* %28, i8** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 1
  %30 = call i8* (...) @EVP_md5()
  store i8* %30, i8** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 1
  %32 = call i8* (...) @EVP_ripemd160()
  store i8* %32, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %31, i64 1
  %34 = call i8* (...) @EVP_sha1()
  store i8* %34, i8** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 1
  %36 = call i8* (...) @EVP_sha224()
  store i8* %36, i8** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %35, i64 1
  %38 = call i8* (...) @EVP_sha256()
  store i8* %38, i8** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 1
  %40 = call i8* (...) @EVP_sha384()
  store i8* %40, i8** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %39, i64 1
  %42 = call i8* (...) @EVP_sha512()
  store i8* %42, i8** %41, align 8
  %43 = bitcast [9 x i8*]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %43, i8* align 16 bitcast ([9 x i8*]* @__const.test.names to i8*), i64 72, i1 false)
  store i64 0, i64* %12, align 8
  br label %44

44:                                               ; preds = %51, %0
  %45 = load i64, i64* %12, align 8
  %46 = icmp ult i64 %45, 2048
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %12, align 8
  %50 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %49
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %12, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %12, align 8
  br label %44

54:                                               ; preds = %44
  store i64 0, i64* %13, align 8
  br label %55

55:                                               ; preds = %63, %54
  %56 = load i64, i64* %13, align 8
  %57 = icmp ult i64 %56, 32768
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i64, i64* %13, align 8
  %60 = urem i64 %59, 256
  %61 = load i64, i64* %13, align 8
  %62 = getelementptr inbounds [4096 x i64], [4096 x i64]* %5, i64 0, i64 %61
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %58
  %64 = load i64, i64* %13, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %13, align 8
  br label %55

66:                                               ; preds = %55
  store i64 0, i64* %14, align 8
  br label %67

67:                                               ; preds = %157, %66
  %68 = load i64, i64* %14, align 8
  %69 = getelementptr inbounds [9 x i8*], [9 x i8*]* %11, i64 0, i64 0
  %70 = call i64 @__arraycount(i8** %69)
  %71 = icmp ult i64 %68, %70
  br i1 %71, label %72, label %160

72:                                               ; preds = %67
  store i64 1, i64* %15, align 8
  br label %73

73:                                               ; preds = %153, %72
  %74 = load i64, i64* %15, align 8
  %75 = icmp ult i64 %74, 2048
  br i1 %75, label %76, label %156

76:                                               ; preds = %73
  store i64 3, i64* %16, align 8
  br label %77

77:                                               ; preds = %149, %76
  %78 = load i64, i64* %16, align 8
  %79 = icmp ult i64 %78, 32768
  br i1 %79, label %80, label %152

80:                                               ; preds = %77
  store i32 0, i32* %8, align 4
  %81 = mul nuw i64 8, %19
  %82 = trunc i64 %81 to i32
  %83 = call i32 @memset(i64* %21, i32 0, i32 %82)
  %84 = mul nuw i64 8, %23
  %85 = trunc i64 %84 to i32
  %86 = call i32 @memset(i64* %24, i32 0, i32 %85)
  %87 = load i64, i64* %14, align 8
  %88 = getelementptr inbounds [9 x i8*], [9 x i8*]* %10, i64 0, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 0
  %91 = load i64, i64* %15, align 8
  %92 = getelementptr inbounds [4096 x i64], [4096 x i64]* %5, i64 0, i64 0
  %93 = load i64, i64* %16, align 8
  %94 = call i8* @HMAC(i8* %89, i64* %90, i64 %91, i64* %92, i64 %93, i64* %21, i32* %6)
  store i8* %94, i8** %9, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = icmp ne i8* %95, null
  %97 = zext i1 %96 to i32
  %98 = call i32 @ATF_REQUIRE(i32 %97)
  %99 = load i64, i64* %14, align 8
  %100 = getelementptr inbounds [9 x i8*], [9 x i8*]* %11, i64 0, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 0
  %103 = load i64, i64* %15, align 8
  %104 = getelementptr inbounds [4096 x i64], [4096 x i64]* %5, i64 0, i64 0
  %105 = load i64, i64* %16, align 8
  %106 = mul nuw i64 8, %23
  %107 = trunc i64 %106 to i32
  %108 = call i64 @hmac(i8* %101, i64* %102, i64 %103, i64* %104, i64 %105, i64* %24, i32 %107)
  store i64 %108, i64* %7, align 8
  %109 = load i32, i32* %6, align 4
  %110 = zext i32 %109 to i64
  %111 = load i64, i64* %7, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = load i64, i64* %14, align 8
  %115 = getelementptr inbounds [9 x i8*], [9 x i8*]* %11, i64 0, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = zext i32 %117 to i64
  %119 = load i64, i64* %7, align 8
  %120 = call i32 @ATF_REQUIRE_MSG(i32 %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* %116, i64 %118, i64 %119)
  store i64 0, i64* %17, align 8
  br label %121

121:                                              ; preds = %135, %80
  %122 = load i64, i64* %17, align 8
  %123 = load i64, i64* %7, align 8
  %124 = icmp ult i64 %122, %123
  br i1 %124, label %125, label %138

125:                                              ; preds = %121
  %126 = load i64, i64* %17, align 8
  %127 = getelementptr inbounds i64, i64* %21, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %17, align 8
  %130 = getelementptr inbounds i64, i64* %24, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %128, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  store i32 1, i32* %8, align 4
  br label %138

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134
  %136 = load i64, i64* %17, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %17, align 8
  br label %121

138:                                              ; preds = %133, %121
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = load i64, i64* %14, align 8
  %144 = getelementptr inbounds [9 x i8*], [9 x i8*]* %11, i64 0, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = load i64, i64* %15, align 8
  %147 = load i64, i64* %16, align 8
  %148 = call i32 @ATF_REQUIRE_MSG(i32 %142, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i8* %145, i64 %146, i64 %147)
  br label %149

149:                                              ; preds = %138
  %150 = load i64, i64* %16, align 8
  %151 = add i64 %150, 111
  store i64 %151, i64* %16, align 8
  br label %77

152:                                              ; preds = %77
  br label %153

153:                                              ; preds = %152
  %154 = load i64, i64* %15, align 8
  %155 = add i64 %154, 9
  store i64 %155, i64* %15, align 8
  br label %73

156:                                              ; preds = %73
  br label %157

157:                                              ; preds = %156
  %158 = load i64, i64* %14, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %14, align 8
  br label %67

160:                                              ; preds = %67
  %161 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %161)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @EVP_md2(...) #2

declare dso_local i8* @EVP_md4(...) #2

declare dso_local i8* @EVP_md5(...) #2

declare dso_local i8* @EVP_ripemd160(...) #2

declare dso_local i8* @EVP_sha1(...) #2

declare dso_local i8* @EVP_sha224(...) #2

declare dso_local i8* @EVP_sha256(...) #2

declare dso_local i8* @EVP_sha384(...) #2

declare dso_local i8* @EVP_sha512(...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @__arraycount(i8**) #2

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i8* @HMAC(i8*, i64*, i64, i64*, i64, i64*, i32*) #2

declare dso_local i32 @ATF_REQUIRE(i32) #2

declare dso_local i64 @hmac(i8*, i64*, i64, i64*, i64, i64*, i32) #2

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i8*, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
