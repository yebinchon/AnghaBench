; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_enc.c_ssl3_generate_master_secret.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_enc.c_ssl3_generate_master_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8*, i8* }

@ssl3_generate_master_secret.salt = internal global [3 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"BB\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"CCC\00", align 1
@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_SSL3_GENERATE_MASTER_SECRET = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SSL3_RANDOM_SIZE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_generate_master_secret(%struct.TYPE_8__* %0, i8* %1, i8* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %20 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %24, i32** %14, align 8
  store i32 1, i32* %16, align 4
  store i64 0, i64* %18, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %5
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %30 = load i32, i32* @SSL_F_SSL3_GENERATE_MASTER_SECRET, align 4
  %31 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %32 = call i32 @SSLfatal(%struct.TYPE_8__* %28, i32 %29, i32 %30, i32 %31)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %148

33:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  br label %34

34:                                               ; preds = %133, %33
  %35 = load i32, i32* %15, align 4
  %36 = icmp slt i32 %35, 3
  br i1 %36, label %37, label %136

37:                                               ; preds = %34
  %38 = load i32*, i32** %14, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @EVP_DigestInit_ex(i32* %38, i32 %43, i32* null)
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %118, label %46

46:                                               ; preds = %37
  %47 = load i32*, i32** %14, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [3 x i8*], [3 x i8*]* @ssl3_generate_master_secret.salt, i64 0, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [3 x i8*], [3 x i8*]* @ssl3_generate_master_secret.salt, i64 0, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = call i64 @EVP_DigestUpdate(i32* %47, i8* %51, i32 %56)
  %58 = icmp sle i64 %57, 0
  br i1 %58, label %118, label %59

59:                                               ; preds = %46
  %60 = load i32*, i32** %14, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i64 @EVP_DigestUpdate(i32* %60, i8* %61, i32 %63)
  %65 = icmp sle i64 %64, 0
  br i1 %65, label %118, label %66

66:                                               ; preds = %59
  %67 = load i32*, i32** %14, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %75 = call i64 @EVP_DigestUpdate(i32* %67, i8* %73, i32 %74)
  %76 = icmp sle i64 %75, 0
  br i1 %76, label %118, label %77

77:                                               ; preds = %66
  %78 = load i32*, i32** %14, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %86 = call i64 @EVP_DigestUpdate(i32* %78, i8* %84, i32 %85)
  %87 = icmp sle i64 %86, 0
  br i1 %87, label %118, label %88

88:                                               ; preds = %77
  %89 = load i32*, i32** %14, align 8
  %90 = call i64 @EVP_DigestFinal_ex(i32* %89, i8* %23, i32* %17)
  %91 = icmp sle i64 %90, 0
  br i1 %91, label %118, label %92

92:                                               ; preds = %88
  %93 = load i32*, i32** %14, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @EVP_DigestInit_ex(i32* %93, i32 %98, i32* null)
  %100 = icmp sle i64 %99, 0
  br i1 %100, label %118, label %101

101:                                              ; preds = %92
  %102 = load i32*, i32** %14, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = load i64, i64* %10, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i64 @EVP_DigestUpdate(i32* %102, i8* %103, i32 %105)
  %107 = icmp sle i64 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %101
  %109 = load i32*, i32** %14, align 8
  %110 = load i32, i32* %17, align 4
  %111 = call i64 @EVP_DigestUpdate(i32* %109, i8* %23, i32 %110)
  %112 = icmp sle i64 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = load i32*, i32** %14, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = call i64 @EVP_DigestFinal_ex(i32* %114, i8* %115, i32* %17)
  %117 = icmp sle i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113, %108, %101, %92, %88, %77, %66, %59, %46, %37
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %120 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %121 = load i32, i32* @SSL_F_SSL3_GENERATE_MASTER_SECRET, align 4
  %122 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %123 = call i32 @SSLfatal(%struct.TYPE_8__* %119, i32 %120, i32 %121, i32 %122)
  store i32 0, i32* %16, align 4
  br label %136

124:                                              ; preds = %113
  %125 = load i32, i32* %17, align 4
  %126 = load i8*, i8** %8, align 8
  %127 = zext i32 %125 to i64
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8* %128, i8** %8, align 8
  %129 = load i32, i32* %17, align 4
  %130 = zext i32 %129 to i64
  %131 = load i64, i64* %18, align 8
  %132 = add i64 %131, %130
  store i64 %132, i64* %18, align 8
  br label %133

133:                                              ; preds = %124
  %134 = load i32, i32* %15, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %15, align 4
  br label %34

136:                                              ; preds = %118, %34
  %137 = load i32*, i32** %14, align 8
  %138 = call i32 @EVP_MD_CTX_free(i32* %137)
  %139 = trunc i64 %21 to i32
  %140 = call i32 @OPENSSL_cleanse(i8* %23, i32 %139)
  %141 = load i32, i32* %16, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %136
  %144 = load i64, i64* %18, align 8
  %145 = load i64*, i64** %11, align 8
  store i64 %144, i64* %145, align 8
  br label %146

146:                                              ; preds = %143, %136
  %147 = load i32, i32* %16, align 4
  store i32 %147, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %148

148:                                              ; preds = %146, %27
  %149 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %149)
  %150 = load i32, i32* %6, align 4
  ret i32 %150
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @EVP_MD_CTX_new(...) #2

declare dso_local i32 @SSLfatal(%struct.TYPE_8__*, i32, i32, i32) #2

declare dso_local i64 @EVP_DigestInit_ex(i32*, i32, i32*) #2

declare dso_local i64 @EVP_DigestUpdate(i32*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @EVP_DigestFinal_ex(i32*, i8*, i32*) #2

declare dso_local i32 @EVP_MD_CTX_free(i32*) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
