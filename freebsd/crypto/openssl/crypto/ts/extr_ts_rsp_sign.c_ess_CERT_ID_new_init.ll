; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ts/extr_ts_rsp_sign.c_ess_CERT_ID_new_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ts/extr_ts_rsp_sign.c_ess_CERT_ID_new_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32* }

@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@GEN_DIRNAME = common dso_local global i32 0, align 4
@TS_F_ESS_CERT_ID_NEW_INIT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i32*, i32)* @ess_CERT_ID_new_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @ess_CERT_ID_new_init(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  %11 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @X509_check_purpose(i32* %15, i32 -1, i32 0)
  %17 = call %struct.TYPE_13__* (...) @ESS_CERT_ID_new()
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %6, align 8
  %18 = icmp eq %struct.TYPE_13__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %90

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 (...) @EVP_sha1()
  %23 = call i32 @X509_digest(i32* %21, i32 %22, i8* %14, i32* null)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %28 = call i32 @ASN1_OCTET_STRING_set(i32 %26, i8* %14, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  br label %90

31:                                               ; preds = %20
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %88

34:                                               ; preds = %31
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = icmp eq %struct.TYPE_14__* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = call %struct.TYPE_14__* (...) @ESS_ISSUER_SERIAL_new()
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %42, align 8
  %43 = icmp eq %struct.TYPE_14__* %40, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %90

45:                                               ; preds = %39, %34
  %46 = call %struct.TYPE_12__* (...) @GENERAL_NAME_new()
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %7, align 8
  %47 = icmp eq %struct.TYPE_12__* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %90

49:                                               ; preds = %45
  %50 = load i32, i32* @GEN_DIRNAME, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @X509_get_issuer_name(i32* %53)
  %55 = call i32* @X509_NAME_dup(i32 %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  store i32* %55, i32** %58, align 8
  %59 = icmp eq i32* %55, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %90

61:                                               ; preds = %49
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %68 = call i32 @sk_GENERAL_NAME_push(i32 %66, %struct.TYPE_12__* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %61
  br label %90

71:                                               ; preds = %61
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ASN1_INTEGER_free(i32 %76)
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @X509_get_serialNumber(i32* %78)
  %80 = call i32 @ASN1_INTEGER_dup(i32 %79)
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 4
  %85 = icmp ne i32 %80, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %71
  br label %90

87:                                               ; preds = %71
  br label %88

88:                                               ; preds = %87, %31
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %89, %struct.TYPE_13__** %3, align 8
  store i32 1, i32* %10, align 4
  br label %98

90:                                               ; preds = %86, %70, %60, %48, %44, %30, %19
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %92 = call i32 @GENERAL_NAME_free(%struct.TYPE_12__* %91)
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %94 = call i32 @ESS_CERT_ID_free(%struct.TYPE_13__* %93)
  %95 = load i32, i32* @TS_F_ESS_CERT_ID_NEW_INIT, align 4
  %96 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %97 = call i32 @TSerr(i32 %95, i32 %96)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  store i32 1, i32* %10, align 4
  br label %98

98:                                               ; preds = %90, %88
  %99 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @X509_check_purpose(i32*, i32, i32) #2

declare dso_local %struct.TYPE_13__* @ESS_CERT_ID_new(...) #2

declare dso_local i32 @X509_digest(i32*, i32, i8*, i32*) #2

declare dso_local i32 @EVP_sha1(...) #2

declare dso_local i32 @ASN1_OCTET_STRING_set(i32, i8*, i32) #2

declare dso_local %struct.TYPE_14__* @ESS_ISSUER_SERIAL_new(...) #2

declare dso_local %struct.TYPE_12__* @GENERAL_NAME_new(...) #2

declare dso_local i32* @X509_NAME_dup(i32) #2

declare dso_local i32 @X509_get_issuer_name(i32*) #2

declare dso_local i32 @sk_GENERAL_NAME_push(i32, %struct.TYPE_12__*) #2

declare dso_local i32 @ASN1_INTEGER_free(i32) #2

declare dso_local i32 @ASN1_INTEGER_dup(i32) #2

declare dso_local i32 @X509_get_serialNumber(i32*) #2

declare dso_local i32 @GENERAL_NAME_free(%struct.TYPE_12__*) #2

declare dso_local i32 @ESS_CERT_ID_free(%struct.TYPE_13__*) #2

declare dso_local i32 @TSerr(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
