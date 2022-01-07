; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_enc.c_ssl3_final_finish_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_enc.c_ssl3_final_finish_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32 }

@NID_md5_sha1 = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_SSL3_FINAL_FINISH_MAC = common dso_local global i32 0, align 4
@SSL_R_NO_REQUIRED_DIGEST = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EVP_CTRL_SSL3_MASTER_SECRET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ssl3_final_finish_mac(%struct.TYPE_9__* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* null, i32** %11, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = call i32 @ssl3_digest_cached_records(%struct.TYPE_9__* %12, i32 0)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %109

16:                                               ; preds = %4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @EVP_MD_CTX_type(i32 %21)
  %23 = load i64, i64* @NID_md5_sha1, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %28 = load i32, i32* @SSL_F_SSL3_FINAL_FINISH_MAC, align 4
  %29 = load i32, i32* @SSL_R_NO_REQUIRED_DIGEST, align 4
  %30 = call i32 @SSLfatal(%struct.TYPE_9__* %26, i32 %27, i32 %28, i32 %29)
  store i64 0, i64* %5, align 8
  br label %109

31:                                               ; preds = %16
  %32 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %32, i32** %11, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %38 = load i32, i32* @SSL_F_SSL3_FINAL_FINISH_MAC, align 4
  %39 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %40 = call i32 @SSLfatal(%struct.TYPE_9__* %36, i32 %37, i32 %38, i32 %39)
  store i64 0, i64* %5, align 8
  br label %109

41:                                               ; preds = %31
  %42 = load i32*, i32** %11, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @EVP_MD_CTX_copy_ex(i32* %42, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %41
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %53 = load i32, i32* @SSL_F_SSL3_FINAL_FINISH_MAC, align 4
  %54 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %55 = call i32 @SSLfatal(%struct.TYPE_9__* %51, i32 %52, i32 %53, i32 %54)
  store i32 0, i32* %10, align 4
  br label %104

56:                                               ; preds = %41
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @EVP_MD_CTX_size(i32* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %64 = load i32, i32* @SSL_F_SSL3_FINAL_FINISH_MAC, align 4
  %65 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %66 = call i32 @SSLfatal(%struct.TYPE_9__* %62, i32 %63, i32 %64, i32 %65)
  store i32 0, i32* %10, align 4
  br label %104

67:                                               ; preds = %56
  %68 = load i8*, i8** %7, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i32*, i32** %11, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i64 @EVP_DigestUpdate(i32* %71, i8* %72, i64 %73)
  %75 = icmp sle i64 %74, 0
  br i1 %75, label %97, label %76

76:                                               ; preds = %70, %67
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* @EVP_CTRL_SSL3_MASTER_SECRET, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @EVP_MD_CTX_ctrl(i32* %77, i32 %78, i32 %84, i32 %89)
  %91 = icmp sle i64 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %76
  %93 = load i32*, i32** %11, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = call i64 @EVP_DigestFinal_ex(i32* %93, i8* %94, i32* null)
  %96 = icmp sle i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92, %76, %70
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %99 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %100 = load i32, i32* @SSL_F_SSL3_FINAL_FINISH_MAC, align 4
  %101 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %102 = call i32 @SSLfatal(%struct.TYPE_9__* %98, i32 %99, i32 %100, i32 %101)
  store i32 0, i32* %10, align 4
  br label %103

103:                                              ; preds = %97, %92
  br label %104

104:                                              ; preds = %103, %61, %50
  %105 = load i32*, i32** %11, align 8
  %106 = call i32 @EVP_MD_CTX_free(i32* %105)
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %5, align 8
  br label %109

109:                                              ; preds = %104, %35, %25, %15
  %110 = load i64, i64* %5, align 8
  ret i64 %110
}

declare dso_local i32 @ssl3_digest_cached_records(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @EVP_MD_CTX_type(i32) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i32 @EVP_MD_CTX_copy_ex(i32*, i32) #1

declare dso_local i32 @EVP_MD_CTX_size(i32*) #1

declare dso_local i64 @EVP_DigestUpdate(i32*, i8*, i64) #1

declare dso_local i64 @EVP_MD_CTX_ctrl(i32*, i32, i32, i32) #1

declare dso_local i64 @EVP_DigestFinal_ex(i32*, i8*, i32*) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
