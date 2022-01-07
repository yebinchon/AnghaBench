; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_write.c_tls_write_client_key_exchange.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_write.c_tls_write_client_key_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tls_cipher_suite = type { i64 }

@TLS_KEY_X_NULL = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"TLSv1: Send ClientKeyExchange\00", align 1
@TLS_RECORD_HEADER_LEN = common dso_local global i32 0, align 4
@TLS_HANDSHAKE_TYPE_CLIENT_KEY_EXCHANGE = common dso_local global i32 0, align 4
@TLS_KEY_X_DH_anon = common dso_local global i64 0, align 8
@TLS_KEY_X_DHE_RSA = common dso_local global i64 0, align 8
@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"TLSv1: Failed to create a record\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_client*, i32**, i32*)* @tls_write_client_key_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_write_client_key_exchange(%struct.tlsv1_client* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_client*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.tls_cipher_suite*, align 8
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %16 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.tls_cipher_suite* @tls_get_cipher_suite(i32 %18)
  store %struct.tls_cipher_suite* %19, %struct.tls_cipher_suite** %14, align 8
  %20 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** %14, align 8
  %21 = icmp eq %struct.tls_cipher_suite* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i64, i64* @TLS_KEY_X_NULL, align 8
  store i64 %23, i64* %13, align 8
  br label %28

24:                                               ; preds = %3
  %25 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** %14, align 8
  %26 = getelementptr inbounds %struct.tls_cipher_suite, %struct.tls_cipher_suite* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %13, align 8
  br label %28

28:                                               ; preds = %24, %22
  %29 = load i32**, i32*** %6, align 8
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %8, align 8
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = call i32 @wpa_printf(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %33 = load i32*, i32** %8, align 8
  store i32* %33, i32** %9, align 8
  %34 = load i32, i32* @TLS_RECORD_HEADER_LEN, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  store i32* %38, i32** %10, align 8
  %39 = load i32, i32* @TLS_HANDSHAKE_TYPE_CLIENT_KEY_EXCHANGE, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  %42 = load i32*, i32** %8, align 8
  store i32* %42, i32** %11, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  store i32* %44, i32** %8, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* @TLS_KEY_X_DH_anon, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %28
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* @TLS_KEY_X_DHE_RSA, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48, %28
  %53 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i64 @tlsv1_key_x_dh(%struct.tlsv1_client* %53, i32** %8, i32* %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 -1, i32* %4, align 4
  br label %122

58:                                               ; preds = %52
  br label %66

59:                                               ; preds = %48
  %60 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i64 @tlsv1_key_x_rsa(%struct.tlsv1_client* %60, i32** %8, i32* %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 -1, i32* %4, align 4
  br label %122

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %58
  %67 = load i32*, i32** %11, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = ptrtoint i32* %68 to i64
  %71 = ptrtoint i32* %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 4
  %74 = sub nsw i64 %73, 3
  %75 = trunc i64 %74 to i32
  %76 = call i32 @WPA_PUT_BE24(i32* %67, i32 %75)
  %77 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %78 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %77, i32 0, i32 1
  %79 = load i32, i32* @TLS_CONTENT_TYPE_HANDSHAKE, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = ptrtoint i32* %81 to i64
  %84 = ptrtoint i32* %82 to i64
  %85 = sub i64 %83, %84
  %86 = sdiv exact i64 %85, 4
  %87 = trunc i64 %86 to i32
  %88 = load i32*, i32** %10, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = ptrtoint i32* %89 to i64
  %92 = ptrtoint i32* %90 to i64
  %93 = sub i64 %91, %92
  %94 = sdiv exact i64 %93, 4
  %95 = trunc i64 %94 to i32
  %96 = call i64 @tlsv1_record_send(%struct.TYPE_2__* %78, i32 %79, i32* %80, i32 %87, i32* %88, i32 %95, i64* %12)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %66
  %99 = load i32, i32* @MSG_DEBUG, align 4
  %100 = call i32 @wpa_printf(i32 %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %101 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %102 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %103 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %104 = call i32 @tls_alert(%struct.tlsv1_client* %101, i32 %102, i32 %103)
  store i32 -1, i32* %4, align 4
  br label %122

105:                                              ; preds = %66
  %106 = load i32*, i32** %9, align 8
  %107 = load i64, i64* %12, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %8, align 8
  %109 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %110 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %109, i32 0, i32 0
  %111 = load i32*, i32** %10, align 8
  %112 = load i32*, i32** %8, align 8
  %113 = load i32*, i32** %10, align 8
  %114 = ptrtoint i32* %112 to i64
  %115 = ptrtoint i32* %113 to i64
  %116 = sub i64 %114, %115
  %117 = sdiv exact i64 %116, 4
  %118 = trunc i64 %117 to i32
  %119 = call i32 @tls_verify_hash_add(i32* %110, i32* %111, i32 %118)
  %120 = load i32*, i32** %8, align 8
  %121 = load i32**, i32*** %6, align 8
  store i32* %120, i32** %121, align 8
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %105, %98, %64, %57
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.tls_cipher_suite* @tls_get_cipher_suite(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @tlsv1_key_x_dh(%struct.tlsv1_client*, i32**, i32*) #1

declare dso_local i64 @tlsv1_key_x_rsa(%struct.tlsv1_client*, i32**, i32*) #1

declare dso_local i32 @WPA_PUT_BE24(i32*, i32) #1

declare dso_local i64 @tlsv1_record_send(%struct.TYPE_2__*, i32, i32*, i32, i32*, i32, i64*) #1

declare dso_local i32 @tls_alert(%struct.tlsv1_client*, i32, i32) #1

declare dso_local i32 @tls_verify_hash_add(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
