; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_env.c_cms_RecipientInfo_kekri_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_env.c_cms_RecipientInfo_kekri_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32 }

@CMS_F_CMS_RECIPIENTINFO_KEKRI_ENCRYPT = common dso_local global i32 0, align 4
@CMS_R_NO_KEY = common dso_local global i32 0, align 4
@CMS_R_ERROR_SETTING_KEY = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@CMS_R_WRAP_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_13__*)* @cms_RecipientInfo_kekri_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cms_RecipientInfo_kekri_encrypt(%struct.TYPE_16__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %6, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %7, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @CMS_F_CMS_RECIPIENTINFO_KEKRI_ENCRYPT, align 4
  %28 = load i32, i32* @CMS_R_NO_KEY, align 4
  %29 = call i32 @CMSerr(i32 %27, i32 %28)
  store i32 0, i32* %3, align 4
  br label %87

30:                                               ; preds = %2
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 3
  %38 = call i64 @AES_set_encrypt_key(i32 %33, i32 %37, i32* %8)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load i32, i32* @CMS_F_CMS_RECIPIENTINFO_KEKRI_ENCRYPT, align 4
  %42 = load i32, i32* @CMS_R_ERROR_SETTING_KEY, align 4
  %43 = call i32 @CMSerr(i32 %41, i32 %42)
  br label %78

44:                                               ; preds = %30
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 8
  %49 = call i8* @OPENSSL_malloc(i64 %48)
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load i32, i32* @CMS_F_CMS_RECIPIENTINFO_KEKRI_ENCRYPT, align 4
  %54 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %55 = call i32 @CMSerr(i32 %53, i32 %54)
  br label %78

56:                                               ; preds = %44
  %57 = load i8*, i8** %9, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @AES_wrap_key(i32* %8, i32* null, i8* %57, i32 %60, i64 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp sle i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %56
  %68 = load i32, i32* @CMS_F_CMS_RECIPIENTINFO_KEKRI_ENCRYPT, align 4
  %69 = load i32, i32* @CMS_R_WRAP_ERROR, align 4
  %70 = call i32 @CMSerr(i32 %68, i32 %69)
  br label %78

71:                                               ; preds = %56
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @ASN1_STRING_set0(i32 %74, i8* %75, i32 %76)
  store i32 1, i32* %11, align 4
  br label %78

78:                                               ; preds = %71, %67, %52, %40
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @OPENSSL_free(i8* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = call i32 @OPENSSL_cleanse(i32* %8, i32 4)
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %84, %26
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @CMSerr(i32, i32) #1

declare dso_local i64 @AES_set_encrypt_key(i32, i32, i32*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @AES_wrap_key(i32*, i32*, i8*, i32, i64) #1

declare dso_local i32 @ASN1_STRING_set0(i32, i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @OPENSSL_cleanse(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
