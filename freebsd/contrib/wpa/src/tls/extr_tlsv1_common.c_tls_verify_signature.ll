; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_common.c_tls_verify_signature.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_common.c_tls_verify_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_public_key = type { i32 }

@TLS_ALERT_DECODE_ERROR = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Additional data after Signature\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"TLSv1: Signature\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"TLSv1: No public key to verify signature\00", align 1
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"TLSv1: Failed to decrypt signature\00", align 1
@TLS_ALERT_DECRYPT_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"TLSv1: Decrypted Signature\00", align 1
@.str.5 = private unnamed_addr constant [78 x i8] c"TLSv1: Invalid Signature in CertificateVerify - did not match calculated hash\00", align 1
@TLS_VERSION_1_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_verify_signature(i32 %0, %struct.crypto_public_key* %1, i32* %2, i64 %3, i32* %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.crypto_public_key*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store %struct.crypto_public_key* %1, %struct.crypto_public_key** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = load i64, i64* %14, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32* %23, i32** %17, align 8
  %24 = load i32*, i32** %17, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = ptrtoint i32* %24 to i64
  %27 = ptrtoint i32* %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 4
  %30 = icmp slt i64 %29, 2
  br i1 %30, label %31, label %34

31:                                               ; preds = %7
  %32 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %33 = load i32*, i32** %15, align 8
  store i32 %32, i32* %33, align 4
  store i32 -1, i32* %8, align 4
  br label %165

34:                                               ; preds = %7
  %35 = load i32*, i32** %13, align 8
  %36 = call i32 @WPA_GET_BE16(i32* %35)
  store i32 %36, i32* %19, align 4
  %37 = load i32*, i32** %13, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32* %38, i32** %13, align 8
  %39 = load i32*, i32** %17, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = ptrtoint i32* %39 to i64
  %42 = ptrtoint i32* %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv exact i64 %43, 4
  %45 = load i32, i32* %19, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %50 = load i32*, i32** %15, align 8
  store i32 %49, i32* %50, align 4
  store i32 -1, i32* %8, align 4
  br label %165

51:                                               ; preds = %34
  %52 = load i32*, i32** %17, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = ptrtoint i32* %52 to i64
  %55 = ptrtoint i32* %53 to i64
  %56 = sub i64 %54, %55
  %57 = sdiv exact i64 %56, 4
  %58 = load i32, i32* %19, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp sgt i64 %57, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %51
  %62 = load i32, i32* @MSG_MSGDUMP, align 4
  %63 = load i32*, i32** %13, align 8
  %64 = load i32, i32* %19, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32*, i32** %17, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = ptrtoint i32* %67 to i64
  %70 = ptrtoint i32* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 4
  %73 = load i32, i32* %19, align 4
  %74 = sext i32 %73 to i64
  %75 = sub nsw i64 %72, %74
  %76 = trunc i64 %75 to i32
  %77 = call i32 @wpa_hexdump(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* %66, i32 %76)
  %78 = load i32*, i32** %13, align 8
  %79 = load i32, i32* %19, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32* %81, i32** %17, align 8
  br label %82

82:                                               ; preds = %61, %51
  %83 = load i32, i32* @MSG_MSGDUMP, align 4
  %84 = load i32*, i32** %13, align 8
  %85 = load i32*, i32** %17, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = ptrtoint i32* %85 to i64
  %88 = ptrtoint i32* %86 to i64
  %89 = sub i64 %87, %88
  %90 = sdiv exact i64 %89, 4
  %91 = trunc i64 %90 to i32
  %92 = call i32 @wpa_hexdump(i32 %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %84, i32 %91)
  %93 = load %struct.crypto_public_key*, %struct.crypto_public_key** %10, align 8
  %94 = icmp eq %struct.crypto_public_key* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %82
  %96 = load i32, i32* @MSG_DEBUG, align 4
  %97 = call i32 @wpa_printf(i32 %96, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %99 = load i32*, i32** %15, align 8
  store i32 %98, i32* %99, align 4
  store i32 -1, i32* %8, align 4
  br label %165

100:                                              ; preds = %82
  %101 = load i32*, i32** %17, align 8
  %102 = load i32*, i32** %13, align 8
  %103 = ptrtoint i32* %101 to i64
  %104 = ptrtoint i32* %102 to i64
  %105 = sub i64 %103, %104
  %106 = sdiv exact i64 %105, 4
  store i64 %106, i64* %20, align 8
  %107 = load i32*, i32** %17, align 8
  %108 = load i32*, i32** %13, align 8
  %109 = ptrtoint i32* %107 to i64
  %110 = ptrtoint i32* %108 to i64
  %111 = sub i64 %109, %110
  %112 = sdiv exact i64 %111, 4
  %113 = trunc i64 %112 to i32
  %114 = call i32* @os_malloc(i32 %113)
  store i32* %114, i32** %16, align 8
  %115 = load i32*, i32** %16, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %100
  %118 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %119 = load i32*, i32** %15, align 8
  store i32 %118, i32* %119, align 4
  store i32 -1, i32* %8, align 4
  br label %165

120:                                              ; preds = %100
  %121 = load %struct.crypto_public_key*, %struct.crypto_public_key** %10, align 8
  %122 = load i32*, i32** %13, align 8
  %123 = load i32*, i32** %17, align 8
  %124 = load i32*, i32** %13, align 8
  %125 = ptrtoint i32* %123 to i64
  %126 = ptrtoint i32* %124 to i64
  %127 = sub i64 %125, %126
  %128 = sdiv exact i64 %127, 4
  %129 = trunc i64 %128 to i32
  %130 = load i32*, i32** %16, align 8
  %131 = call i64 @crypto_public_key_decrypt_pkcs1(%struct.crypto_public_key* %121, i32* %122, i32 %129, i32* %130, i64* %20)
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %120
  %134 = load i32, i32* @MSG_DEBUG, align 4
  %135 = call i32 @wpa_printf(i32 %134, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %136 = load i32*, i32** %16, align 8
  %137 = call i32 @os_free(i32* %136)
  %138 = load i32, i32* @TLS_ALERT_DECRYPT_ERROR, align 4
  %139 = load i32*, i32** %15, align 8
  store i32 %138, i32* %139, align 4
  store i32 -1, i32* %8, align 4
  br label %165

140:                                              ; preds = %120
  %141 = load i32*, i32** %16, align 8
  store i32* %141, i32** %18, align 8
  %142 = load i32, i32* @MSG_MSGDUMP, align 4
  %143 = load i32*, i32** %18, align 8
  %144 = load i64, i64* %20, align 8
  %145 = call i32 @wpa_hexdump_key(i32 %142, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32* %143, i64 %144)
  %146 = load i64, i64* %20, align 8
  %147 = load i64, i64* %12, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %155, label %149

149:                                              ; preds = %140
  %150 = load i32*, i32** %18, align 8
  %151 = load i32*, i32** %11, align 8
  %152 = load i64, i64* %12, align 8
  %153 = call i64 @os_memcmp_const(i32* %150, i32* %151, i64 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %149, %140
  %156 = load i32, i32* @MSG_DEBUG, align 4
  %157 = call i32 @wpa_printf(i32 %156, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.5, i64 0, i64 0))
  %158 = load i32*, i32** %16, align 8
  %159 = call i32 @os_free(i32* %158)
  %160 = load i32, i32* @TLS_ALERT_DECRYPT_ERROR, align 4
  %161 = load i32*, i32** %15, align 8
  store i32 %160, i32* %161, align 4
  store i32 -1, i32* %8, align 4
  br label %165

162:                                              ; preds = %149
  %163 = load i32*, i32** %16, align 8
  %164 = call i32 @os_free(i32* %163)
  store i32 0, i32* %8, align 4
  br label %165

165:                                              ; preds = %162, %155, %133, %117, %95, %48, %31
  %166 = load i32, i32* %8, align 4
  ret i32 %166
}

declare dso_local i32 @WPA_GET_BE16(i32*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32* @os_malloc(i32) #1

declare dso_local i64 @crypto_public_key_decrypt_pkcs1(%struct.crypto_public_key*, i32*, i32, i32*, i64*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #1

declare dso_local i64 @os_memcmp_const(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
