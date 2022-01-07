; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_write.c_tls_write_server_certificate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_write.c_tls_write_server_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.x509_certificate*, i32 }
%struct.x509_certificate = type { i32, i32, i32 }
%struct.tls_cipher_suite = type { i64 }

@TLS_KEY_X_DH_anon = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"TLSv1: Do not send Certificate when using anonymous DH\00", align 1
@TLS_RECORD_HEADER_LEN = common dso_local global i32 0, align 4
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Send Certificate\00", align 1
@TLS_HANDSHAKE_TYPE_CERTIFICATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"TLSv1: Not enough buffer space for Certificate (cert_len=%lu left=%lu)\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"TLSv1: Full server certificate chain not configured - validation may fail\00", align 1
@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"TLSv1: Failed to generate a record\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_server*, i32**, i32*)* @tls_write_server_certificate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_write_server_certificate(%struct.tlsv1_server* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_server*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.x509_certificate*, align 8
  %15 = alloca %struct.tls_cipher_suite*, align 8
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %17 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.tls_cipher_suite* @tls_get_cipher_suite(i32 %19)
  store %struct.tls_cipher_suite* %20, %struct.tls_cipher_suite** %15, align 8
  %21 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** %15, align 8
  %22 = icmp ne %struct.tls_cipher_suite* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** %15, align 8
  %25 = getelementptr inbounds %struct.tls_cipher_suite, %struct.tls_cipher_suite* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TLS_KEY_X_DH_anon, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = call i32 (i32, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %223

32:                                               ; preds = %23, %3
  %33 = load i32**, i32*** %6, align 8
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %8, align 8
  %35 = load i32, i32* @TLS_RECORD_HEADER_LEN, align 4
  %36 = add nsw i32 %35, 1
  %37 = add nsw i32 %36, 3
  %38 = add nsw i32 %37, 3
  %39 = sext i32 %38 to i64
  %40 = load i32*, i32** %7, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = ptrtoint i32* %40 to i64
  %43 = ptrtoint i32* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 4
  %46 = icmp sgt i64 %39, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %32
  %48 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %49 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %50 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %51 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %48, i32 %49, i32 %50)
  store i32 -1, i32* %4, align 4
  br label %223

52:                                               ; preds = %32
  %53 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %54 = call i32 @tlsv1_server_log(%struct.tlsv1_server* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32*, i32** %8, align 8
  store i32* %55, i32** %9, align 8
  %56 = load i32, i32* @TLS_RECORD_HEADER_LEN, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32* %59, i32** %8, align 8
  %60 = load i32*, i32** %8, align 8
  store i32* %60, i32** %10, align 8
  %61 = load i32, i32* @TLS_HANDSHAKE_TYPE_CERTIFICATE, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  %64 = load i32*, i32** %8, align 8
  store i32* %64, i32** %11, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  store i32* %66, i32** %8, align 8
  %67 = load i32*, i32** %8, align 8
  store i32* %67, i32** %12, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  store i32* %69, i32** %8, align 8
  %70 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %71 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %70, i32 0, i32 2
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load %struct.x509_certificate*, %struct.x509_certificate** %73, align 8
  store %struct.x509_certificate* %74, %struct.x509_certificate** %14, align 8
  br label %75

75:                                               ; preds = %134, %52
  %76 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %77 = icmp ne %struct.x509_certificate* %76, null
  br i1 %77, label %78, label %143

78:                                               ; preds = %75
  %79 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %80 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 3, %81
  %83 = sext i32 %82 to i64
  %84 = load i32*, i32** %7, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = ptrtoint i32* %84 to i64
  %87 = ptrtoint i32* %85 to i64
  %88 = sub i64 %86, %87
  %89 = sdiv exact i64 %88, 4
  %90 = icmp ugt i64 %83, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %78
  %92 = load i32, i32* @MSG_DEBUG, align 4
  %93 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %94 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = load i32*, i32** %7, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = ptrtoint i32* %97 to i64
  %100 = ptrtoint i32* %98 to i64
  %101 = sub i64 %99, %100
  %102 = sdiv exact i64 %101, 4
  %103 = call i32 (i32, i8*, ...) @wpa_printf(i32 %92, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i64 %96, i64 %102)
  %104 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %105 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %106 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %107 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %104, i32 %105, i32 %106)
  store i32 -1, i32* %4, align 4
  br label %223

108:                                              ; preds = %78
  %109 = load i32*, i32** %8, align 8
  %110 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %111 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @WPA_PUT_BE24(i32* %109, i32 %112)
  %114 = load i32*, i32** %8, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  store i32* %115, i32** %8, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %118 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %121 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @os_memcpy(i32* %116, i32 %119, i32 %122)
  %124 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %125 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %8, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32* %129, i32** %8, align 8
  %130 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %131 = call i64 @x509_certificate_self_signed(%struct.x509_certificate* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %108
  br label %143

134:                                              ; preds = %108
  %135 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %136 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %135, i32 0, i32 2
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %141 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %140, i32 0, i32 1
  %142 = call %struct.x509_certificate* @x509_certificate_get_subject(i32 %139, i32* %141)
  store %struct.x509_certificate* %142, %struct.x509_certificate** %14, align 8
  br label %75

143:                                              ; preds = %133, %75
  %144 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %145 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %146 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %145, i32 0, i32 2
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load %struct.x509_certificate*, %struct.x509_certificate** %148, align 8
  %150 = icmp eq %struct.x509_certificate* %144, %149
  br i1 %150, label %154, label %151

151:                                              ; preds = %143
  %152 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %153 = icmp eq %struct.x509_certificate* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %151, %143
  %155 = load i32, i32* @MSG_DEBUG, align 4
  %156 = call i32 (i32, i8*, ...) @wpa_printf(i32 %155, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0))
  br label %157

157:                                              ; preds = %154, %151
  %158 = load i32*, i32** %12, align 8
  %159 = load i32*, i32** %8, align 8
  %160 = load i32*, i32** %12, align 8
  %161 = ptrtoint i32* %159 to i64
  %162 = ptrtoint i32* %160 to i64
  %163 = sub i64 %161, %162
  %164 = sdiv exact i64 %163, 4
  %165 = sub nsw i64 %164, 3
  %166 = trunc i64 %165 to i32
  %167 = call i32 @WPA_PUT_BE24(i32* %158, i32 %166)
  %168 = load i32*, i32** %11, align 8
  %169 = load i32*, i32** %8, align 8
  %170 = load i32*, i32** %11, align 8
  %171 = ptrtoint i32* %169 to i64
  %172 = ptrtoint i32* %170 to i64
  %173 = sub i64 %171, %172
  %174 = sdiv exact i64 %173, 4
  %175 = sub nsw i64 %174, 3
  %176 = trunc i64 %175 to i32
  %177 = call i32 @WPA_PUT_BE24(i32* %168, i32 %176)
  %178 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %179 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %178, i32 0, i32 1
  %180 = load i32, i32* @TLS_CONTENT_TYPE_HANDSHAKE, align 4
  %181 = load i32*, i32** %9, align 8
  %182 = load i32*, i32** %7, align 8
  %183 = load i32*, i32** %9, align 8
  %184 = ptrtoint i32* %182 to i64
  %185 = ptrtoint i32* %183 to i64
  %186 = sub i64 %184, %185
  %187 = sdiv exact i64 %186, 4
  %188 = trunc i64 %187 to i32
  %189 = load i32*, i32** %10, align 8
  %190 = load i32*, i32** %8, align 8
  %191 = load i32*, i32** %10, align 8
  %192 = ptrtoint i32* %190 to i64
  %193 = ptrtoint i32* %191 to i64
  %194 = sub i64 %192, %193
  %195 = sdiv exact i64 %194, 4
  %196 = trunc i64 %195 to i32
  %197 = call i64 @tlsv1_record_send(%struct.TYPE_4__* %179, i32 %180, i32* %181, i32 %188, i32* %189, i32 %196, i64* %13)
  %198 = icmp slt i64 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %157
  %200 = load i32, i32* @MSG_DEBUG, align 4
  %201 = call i32 (i32, i8*, ...) @wpa_printf(i32 %200, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %202 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %203 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %204 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %205 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %202, i32 %203, i32 %204)
  store i32 -1, i32* %4, align 4
  br label %223

206:                                              ; preds = %157
  %207 = load i32*, i32** %9, align 8
  %208 = load i64, i64* %13, align 8
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  store i32* %209, i32** %8, align 8
  %210 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %211 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %210, i32 0, i32 0
  %212 = load i32*, i32** %10, align 8
  %213 = load i32*, i32** %8, align 8
  %214 = load i32*, i32** %10, align 8
  %215 = ptrtoint i32* %213 to i64
  %216 = ptrtoint i32* %214 to i64
  %217 = sub i64 %215, %216
  %218 = sdiv exact i64 %217, 4
  %219 = trunc i64 %218 to i32
  %220 = call i32 @tls_verify_hash_add(i32* %211, i32* %212, i32 %219)
  %221 = load i32*, i32** %8, align 8
  %222 = load i32**, i32*** %6, align 8
  store i32* %221, i32** %222, align 8
  store i32 0, i32* %4, align 4
  br label %223

223:                                              ; preds = %206, %199, %91, %47, %29
  %224 = load i32, i32* %4, align 4
  ret i32 %224
}

declare dso_local %struct.tls_cipher_suite* @tls_get_cipher_suite(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @tlsv1_server_alert(%struct.tlsv1_server*, i32, i32) #1

declare dso_local i32 @tlsv1_server_log(%struct.tlsv1_server*, i8*) #1

declare dso_local i32 @WPA_PUT_BE24(i32*, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

declare dso_local i64 @x509_certificate_self_signed(%struct.x509_certificate*) #1

declare dso_local %struct.x509_certificate* @x509_certificate_get_subject(i32, i32*) #1

declare dso_local i64 @tlsv1_record_send(%struct.TYPE_4__*, i32, i32*, i32, i32*, i32, i64*) #1

declare dso_local i32 @tls_verify_hash_add(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
