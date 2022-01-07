; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ts/extr_ts_rsp_sign.c_ess_cert_id_v2_new_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ts/extr_ts_rsp_sign.c_ess_cert_id_v2_new_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_15__*, i32, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i32*, i32 }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_18__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32* }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@GEN_DIRNAME = common dso_local global i32 0, align 4
@TS_F_ESS_CERT_ID_V2_NEW_INIT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (i32*, i32*, i32)* @ess_cert_id_v2_new_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @ess_cert_id_v2_new_init(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %9, align 8
  %15 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = trunc i64 %16 to i32
  store i32 %19, i32* %12, align 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %13, align 8
  %20 = trunc i64 %16 to i32
  %21 = call i32 @memset(i8* %18, i32 0, i32 %20)
  %22 = call %struct.TYPE_19__* (...) @ESS_CERT_ID_V2_new()
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %8, align 8
  %23 = icmp eq %struct.TYPE_19__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %123

25:                                               ; preds = %3
  %26 = load i32*, i32** %5, align 8
  %27 = call i32* (...) @EVP_sha256()
  %28 = icmp ne i32* %26, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %25
  %30 = call %struct.TYPE_17__* (...) @X509_ALGOR_new()
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %13, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %32 = icmp eq %struct.TYPE_17__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %123

34:                                               ; preds = %29
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @X509_ALGOR_set_md(%struct.TYPE_17__* %35, i32* %36)
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %123

43:                                               ; preds = %34
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 2
  store %struct.TYPE_17__* %44, %struct.TYPE_17__** %46, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %13, align 8
  br label %50

47:                                               ; preds = %25
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 2
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %49, align 8
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @X509_digest(i32* %51, i32* %52, i8* %18, i32* %12)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %123

56:                                               ; preds = %50
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @ASN1_OCTET_STRING_set(i32 %59, i8* %18, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  br label %123

64:                                               ; preds = %56
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %121

67:                                               ; preds = %64
  %68 = call %struct.TYPE_15__* (...) @ESS_ISSUER_SERIAL_new()
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  store %struct.TYPE_15__* %68, %struct.TYPE_15__** %70, align 8
  %71 = icmp eq %struct.TYPE_15__* %68, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %123

73:                                               ; preds = %67
  %74 = call %struct.TYPE_18__* (...) @GENERAL_NAME_new()
  store %struct.TYPE_18__* %74, %struct.TYPE_18__** %9, align 8
  %75 = icmp eq %struct.TYPE_18__* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %123

77:                                               ; preds = %73
  %78 = load i32, i32* @GEN_DIRNAME, align 4
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @X509_get_issuer_name(i32* %81)
  %83 = call i32* @X509_NAME_dup(i32 %82)
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  store i32* %83, i32** %86, align 8
  %87 = icmp eq i32* %83, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  br label %123

89:                                               ; preds = %77
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %96 = call i32 @sk_GENERAL_NAME_push(i32 %94, %struct.TYPE_18__* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %89
  br label %123

99:                                               ; preds = %89
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %9, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @ASN1_INTEGER_free(i32* %104)
  %106 = load i32*, i32** %6, align 8
  %107 = call i32 @X509_get_serialNumber(i32* %106)
  %108 = call i32* @ASN1_INTEGER_dup(i32 %107)
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  store i32* %108, i32** %112, align 8
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %99
  br label %123

120:                                              ; preds = %99
  br label %121

121:                                              ; preds = %120, %64
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %122, %struct.TYPE_19__** %4, align 8
  store i32 1, i32* %14, align 4
  br label %133

123:                                              ; preds = %119, %98, %88, %76, %72, %63, %55, %42, %33, %24
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %125 = call i32 @X509_ALGOR_free(%struct.TYPE_17__* %124)
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %127 = call i32 @GENERAL_NAME_free(%struct.TYPE_18__* %126)
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %129 = call i32 @ESS_CERT_ID_V2_free(%struct.TYPE_19__* %128)
  %130 = load i32, i32* @TS_F_ESS_CERT_ID_V2_NEW_INIT, align 4
  %131 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %132 = call i32 @TSerr(i32 %130, i32 %131)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  store i32 1, i32* %14, align 4
  br label %133

133:                                              ; preds = %123, %121
  %134 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %134)
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  ret %struct.TYPE_19__* %135
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local %struct.TYPE_19__* @ESS_CERT_ID_V2_new(...) #2

declare dso_local i32* @EVP_sha256(...) #2

declare dso_local %struct.TYPE_17__* @X509_ALGOR_new(...) #2

declare dso_local i32 @X509_ALGOR_set_md(%struct.TYPE_17__*, i32*) #2

declare dso_local i32 @X509_digest(i32*, i32*, i8*, i32*) #2

declare dso_local i32 @ASN1_OCTET_STRING_set(i32, i8*, i32) #2

declare dso_local %struct.TYPE_15__* @ESS_ISSUER_SERIAL_new(...) #2

declare dso_local %struct.TYPE_18__* @GENERAL_NAME_new(...) #2

declare dso_local i32* @X509_NAME_dup(i32) #2

declare dso_local i32 @X509_get_issuer_name(i32*) #2

declare dso_local i32 @sk_GENERAL_NAME_push(i32, %struct.TYPE_18__*) #2

declare dso_local i32 @ASN1_INTEGER_free(i32*) #2

declare dso_local i32* @ASN1_INTEGER_dup(i32) #2

declare dso_local i32 @X509_get_serialNumber(i32*) #2

declare dso_local i32 @X509_ALGOR_free(%struct.TYPE_17__*) #2

declare dso_local i32 @GENERAL_NAME_free(%struct.TYPE_18__*) #2

declare dso_local i32 @ESS_CERT_ID_V2_free(%struct.TYPE_19__*) #2

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
