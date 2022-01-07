; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_record.c_tlsv1_record_set_cipher_suite.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_record.c_tlsv1_record_set_cipher_suite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_record_layer = type { i32, i32, i32, i32, i32, i32 }
%struct.tls_cipher_suite = type { i64, i32 }
%struct.tls_cipher_data = type { i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"TLSv1: Selected cipher suite: 0x%04x\00", align 1
@TLS_HASH_MD5 = common dso_local global i64 0, align 8
@CRYPTO_HASH_ALG_HMAC_MD5 = common dso_local global i32 0, align 4
@MD5_MAC_LEN = common dso_local global i32 0, align 4
@TLS_HASH_SHA = common dso_local global i64 0, align 8
@CRYPTO_HASH_ALG_HMAC_SHA1 = common dso_local global i32 0, align 4
@SHA1_MAC_LEN = common dso_local global i32 0, align 4
@TLS_HASH_SHA256 = common dso_local global i64 0, align 8
@CRYPTO_HASH_ALG_HMAC_SHA256 = common dso_local global i32 0, align 4
@SHA256_MAC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tlsv1_record_set_cipher_suite(%struct.tlsv1_record_layer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tlsv1_record_layer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tls_cipher_suite*, align 8
  %7 = alloca %struct.tls_cipher_data*, align 8
  store %struct.tlsv1_record_layer* %0, %struct.tlsv1_record_layer** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @wpa_printf(i32 %8, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %4, align 8
  %13 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.tls_cipher_suite* @tls_get_cipher_suite(i32 %14)
  store %struct.tls_cipher_suite* %15, %struct.tls_cipher_suite** %6, align 8
  %16 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** %6, align 8
  %17 = icmp eq %struct.tls_cipher_suite* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %84

19:                                               ; preds = %2
  %20 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** %6, align 8
  %21 = getelementptr inbounds %struct.tls_cipher_suite, %struct.tls_cipher_suite* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TLS_HASH_MD5, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load i32, i32* @CRYPTO_HASH_ALG_HMAC_MD5, align 4
  %27 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %4, align 8
  %28 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @MD5_MAC_LEN, align 4
  %30 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %4, align 8
  %31 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  br label %60

32:                                               ; preds = %19
  %33 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** %6, align 8
  %34 = getelementptr inbounds %struct.tls_cipher_suite, %struct.tls_cipher_suite* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TLS_HASH_SHA, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load i32, i32* @CRYPTO_HASH_ALG_HMAC_SHA1, align 4
  %40 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %4, align 8
  %41 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @SHA1_MAC_LEN, align 4
  %43 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %4, align 8
  %44 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  br label %59

45:                                               ; preds = %32
  %46 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** %6, align 8
  %47 = getelementptr inbounds %struct.tls_cipher_suite, %struct.tls_cipher_suite* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TLS_HASH_SHA256, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i32, i32* @CRYPTO_HASH_ALG_HMAC_SHA256, align 4
  %53 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %4, align 8
  %54 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @SHA256_MAC_LEN, align 4
  %56 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %4, align 8
  %57 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %51, %45
  br label %59

59:                                               ; preds = %58, %38
  br label %60

60:                                               ; preds = %59, %25
  %61 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** %6, align 8
  %62 = getelementptr inbounds %struct.tls_cipher_suite, %struct.tls_cipher_suite* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call %struct.tls_cipher_data* @tls_get_cipher_data(i32 %63)
  store %struct.tls_cipher_data* %64, %struct.tls_cipher_data** %7, align 8
  %65 = load %struct.tls_cipher_data*, %struct.tls_cipher_data** %7, align 8
  %66 = icmp eq %struct.tls_cipher_data* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 -1, i32* %3, align 4
  br label %84

68:                                               ; preds = %60
  %69 = load %struct.tls_cipher_data*, %struct.tls_cipher_data** %7, align 8
  %70 = getelementptr inbounds %struct.tls_cipher_data, %struct.tls_cipher_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %4, align 8
  %73 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load %struct.tls_cipher_data*, %struct.tls_cipher_data** %7, align 8
  %75 = getelementptr inbounds %struct.tls_cipher_data, %struct.tls_cipher_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %4, align 8
  %78 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.tls_cipher_data*, %struct.tls_cipher_data** %7, align 8
  %80 = getelementptr inbounds %struct.tls_cipher_data, %struct.tls_cipher_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %4, align 8
  %83 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %68, %67, %18
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local %struct.tls_cipher_suite* @tls_get_cipher_suite(i32) #1

declare dso_local %struct.tls_cipher_data* @tls_get_cipher_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
