; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_dd.c_cms_DigestedData_do_final.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_dd.c_cms_DigestedData_do_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i64 }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@CMS_F_CMS_DIGESTEDDATA_DO_FINAL = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@CMS_R_MESSAGEDIGEST_WRONG_LENGTH = common dso_local global i32 0, align 4
@CMS_R_VERIFICATION_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cms_DigestedData_do_final(%struct.TYPE_8__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %13, i32** %7, align 8
  %14 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @CMS_F_CMS_DIGESTEDDATA_DO_FINAL, align 4
  %22 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %23 = call i32 @CMSerr(i32 %21, i32 %22)
  br label %83

24:                                               ; preds = %3
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %12, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @cms_DigestAlgorithm_find_ctx(i32* %29, i32* %30, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %24
  br label %83

37:                                               ; preds = %24
  %38 = load i32*, i32** %7, align 8
  %39 = call i64 @EVP_DigestFinal_ex(i32* %38, i8* %17, i32* %10)
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %83

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = icmp ne i32 %46, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load i32, i32* @CMS_F_CMS_DIGESTEDDATA_DO_FINAL, align 4
  %56 = load i32, i32* @CMS_R_MESSAGEDIGEST_WRONG_LENGTH, align 4
  %57 = call i32 @CMSerr(i32 %55, i32 %56)
  br label %83

58:                                               ; preds = %45
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i64 @memcmp(i8* %17, i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load i32, i32* @CMS_F_CMS_DIGESTEDDATA_DO_FINAL, align 4
  %69 = load i32, i32* @CMS_R_VERIFICATION_FAILURE, align 4
  %70 = call i32 @CMSerr(i32 %68, i32 %69)
  br label %72

71:                                               ; preds = %58
  store i32 1, i32* %11, align 4
  br label %72

72:                                               ; preds = %71, %67
  br label %82

73:                                               ; preds = %42
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @ASN1_STRING_set(%struct.TYPE_9__* %76, i8* %17, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  br label %83

81:                                               ; preds = %73
  store i32 1, i32* %11, align 4
  br label %82

82:                                               ; preds = %81, %72
  br label %83

83:                                               ; preds = %82, %80, %54, %41, %36, %20
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @EVP_MD_CTX_free(i32* %84)
  %86 = load i32, i32* %11, align 4
  %87 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %87)
  ret i32 %86
}

declare dso_local i32* @EVP_MD_CTX_new(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @CMSerr(i32, i32) #1

declare dso_local i32 @cms_DigestAlgorithm_find_ctx(i32*, i32*, i32) #1

declare dso_local i64 @EVP_DigestFinal_ex(i32*, i8*, i32*) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @ASN1_STRING_set(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
