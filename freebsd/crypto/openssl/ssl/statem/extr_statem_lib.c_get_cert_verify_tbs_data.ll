; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_lib.c_get_cert_verify_tbs_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_lib.c_get_cert_verify_tbs_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__*, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@get_cert_verify_tbs_data.servercontext = internal global i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [34 x i8] c"TLS 1.3, server CertificateVerify\00", align 1
@get_cert_verify_tbs_data.clientcontext = internal global i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"TLS 1.3, client CertificateVerify\00", align 1
@TLS13_TBS_START_SIZE = common dso_local global i32 0, align 4
@TLS_ST_CR_CERT_VRFY = common dso_local global i64 0, align 8
@TLS_ST_SW_CERT_VRFY = common dso_local global i64 0, align 8
@TLS_ST_SR_CERT_VRFY = common dso_local global i64 0, align 8
@TLS13_TBS_PREAMBLE_SIZE = common dso_local global i64 0, align 8
@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_GET_CERT_VERIFY_TBS_DATA = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i8**, i64*)* @get_cert_verify_tbs_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cert_verify_tbs_data(%struct.TYPE_10__* %0, i8* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = call i64 @SSL_IS_TLS13(%struct.TYPE_10__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %92

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* @TLS13_TBS_START_SIZE, align 4
  %19 = call i32 @memset(i8* %17, i32 32, i32 %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TLS_ST_CR_CERT_VRFY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %16
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TLS_ST_SW_CERT_VRFY, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %26, %16
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @TLS13_TBS_START_SIZE, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8*, i8** @get_cert_verify_tbs_data.servercontext, align 8
  %39 = call i32 @strcpy(i8* %37, i8* %38)
  br label %47

40:                                               ; preds = %26
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* @TLS13_TBS_START_SIZE, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8*, i8** @get_cert_verify_tbs_data.clientcontext, align 8
  %46 = call i32 @strcpy(i8* %44, i8* %45)
  br label %47

47:                                               ; preds = %40, %33
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TLS_ST_CR_CERT_VRFY, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %61, label %54

54:                                               ; preds = %47
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @TLS_ST_SR_CERT_VRFY, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %54, %47
  %62 = load i8*, i8** %7, align 8
  %63 = load i64, i64* @TLS13_TBS_PREAMBLE_SIZE, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @memcpy(i8* %64, i32 %67, i64 %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %10, align 8
  br label %85

75:                                               ; preds = %54
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load i64, i64* @TLS13_TBS_PREAMBLE_SIZE, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %81 = call i32 @ssl_handshake_hash(%struct.TYPE_10__* %76, i8* %79, i32 %80, i64* %10)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %112

84:                                               ; preds = %75
  br label %85

85:                                               ; preds = %84, %61
  %86 = load i8*, i8** %7, align 8
  %87 = load i8**, i8*** %8, align 8
  store i8* %86, i8** %87, align 8
  %88 = load i64, i64* @TLS13_TBS_PREAMBLE_SIZE, align 8
  %89 = load i64, i64* %10, align 8
  %90 = add i64 %88, %89
  %91 = load i64*, i64** %9, align 8
  store i64 %90, i64* %91, align 8
  br label %111

92:                                               ; preds = %4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i8**, i8*** %8, align 8
  %99 = call i64 @BIO_get_mem_data(i32 %97, i8** %98)
  store i64 %99, i64* %12, align 8
  store i64 %99, i64* %11, align 8
  %100 = load i64, i64* %12, align 8
  %101 = icmp sle i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %92
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %104 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %105 = load i32, i32* @SSL_F_GET_CERT_VERIFY_TBS_DATA, align 4
  %106 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %107 = call i32 @SSLfatal(%struct.TYPE_10__* %103, i32 %104, i32 %105, i32 %106)
  store i32 0, i32* %5, align 4
  br label %112

108:                                              ; preds = %92
  %109 = load i64, i64* %11, align 8
  %110 = load i64*, i64** %9, align 8
  store i64 %109, i64* %110, align 8
  br label %111

111:                                              ; preds = %108, %85
  store i32 1, i32* %5, align 4
  br label %112

112:                                              ; preds = %111, %102, %83
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_10__*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @ssl_handshake_hash(%struct.TYPE_10__*, i8*, i32, i64*) #1

declare dso_local i64 @BIO_get_mem_data(i32, i8**) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_10__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
