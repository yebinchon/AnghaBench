; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_write.c_tls_write_client_certificate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_write.c_tls_write_client_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.x509_certificate*, i32 }
%struct.x509_certificate = type { i32, i32, i32 }

@TLS_RECORD_HEADER_LEN = common dso_local global i32 0, align 4
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"TLSv1: Send Certificate\00", align 1
@TLS_HANDSHAKE_TYPE_CERTIFICATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"TLSv1: Not enough buffer space for Certificate (cert_len=%lu left=%lu)\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"TLSv1: Full client certificate chain not configured - validation may fail\00", align 1
@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"TLSv1: Failed to generate a record\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_client*, i32**, i32*)* @tls_write_client_certificate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_write_client_certificate(%struct.tlsv1_client* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_client*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.x509_certificate*, align 8
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32**, i32*** %6, align 8
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %8, align 8
  %17 = load i32, i32* @TLS_RECORD_HEADER_LEN, align 4
  %18 = add nsw i32 %17, 1
  %19 = add nsw i32 %18, 3
  %20 = add nsw i32 %19, 3
  %21 = sext i32 %20 to i64
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = ptrtoint i32* %22 to i64
  %25 = ptrtoint i32* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 4
  %28 = icmp sgt i64 %21, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %31 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %32 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %33 = call i32 @tls_alert(%struct.tlsv1_client* %30, i32 %31, i32 %32)
  store i32 -1, i32* %4, align 4
  br label %218

34:                                               ; preds = %3
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %37 = load i32*, i32** %8, align 8
  store i32* %37, i32** %9, align 8
  %38 = load i32, i32* @TLS_RECORD_HEADER_LEN, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32* %41, i32** %8, align 8
  %42 = load i32*, i32** %8, align 8
  store i32* %42, i32** %10, align 8
  %43 = load i32, i32* @TLS_HANDSHAKE_TYPE_CERTIFICATE, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  %46 = load i32*, i32** %8, align 8
  store i32* %46, i32** %11, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  store i32* %48, i32** %8, align 8
  %49 = load i32*, i32** %8, align 8
  store i32* %49, i32** %12, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  store i32* %51, i32** %8, align 8
  %52 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %53 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = icmp ne %struct.TYPE_2__* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %34
  %57 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %58 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load %struct.x509_certificate*, %struct.x509_certificate** %60, align 8
  br label %63

62:                                               ; preds = %34
  br label %63

63:                                               ; preds = %62, %56
  %64 = phi %struct.x509_certificate* [ %61, %56 ], [ null, %62 ]
  store %struct.x509_certificate* %64, %struct.x509_certificate** %14, align 8
  br label %65

65:                                               ; preds = %124, %63
  %66 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %67 = icmp ne %struct.x509_certificate* %66, null
  br i1 %67, label %68, label %133

68:                                               ; preds = %65
  %69 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %70 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 3, %71
  %73 = sext i32 %72 to i64
  %74 = load i32*, i32** %7, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = ptrtoint i32* %74 to i64
  %77 = ptrtoint i32* %75 to i64
  %78 = sub i64 %76, %77
  %79 = sdiv exact i64 %78, 4
  %80 = icmp ugt i64 %73, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %68
  %82 = load i32, i32* @MSG_DEBUG, align 4
  %83 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %84 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = load i32*, i32** %7, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = ptrtoint i32* %87 to i64
  %90 = ptrtoint i32* %88 to i64
  %91 = sub i64 %89, %90
  %92 = sdiv exact i64 %91, 4
  %93 = call i32 (i32, i8*, ...) @wpa_printf(i32 %82, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i64 %86, i64 %92)
  %94 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %95 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %96 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %97 = call i32 @tls_alert(%struct.tlsv1_client* %94, i32 %95, i32 %96)
  store i32 -1, i32* %4, align 4
  br label %218

98:                                               ; preds = %68
  %99 = load i32*, i32** %8, align 8
  %100 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %101 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @WPA_PUT_BE24(i32* %99, i32 %102)
  %104 = load i32*, i32** %8, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  store i32* %105, i32** %8, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %108 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %111 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @os_memcpy(i32* %106, i32 %109, i32 %112)
  %114 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %115 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %8, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %8, align 8
  %120 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %121 = call i64 @x509_certificate_self_signed(%struct.x509_certificate* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %98
  br label %133

124:                                              ; preds = %98
  %125 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %126 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %125, i32 0, i32 2
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %131 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %130, i32 0, i32 1
  %132 = call %struct.x509_certificate* @x509_certificate_get_subject(i32 %129, i32* %131)
  store %struct.x509_certificate* %132, %struct.x509_certificate** %14, align 8
  br label %65

133:                                              ; preds = %123, %65
  %134 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %135 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %134, i32 0, i32 2
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = icmp eq %struct.TYPE_2__* %136, null
  br i1 %137, label %149, label %138

138:                                              ; preds = %133
  %139 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %140 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %141 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %140, i32 0, i32 2
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load %struct.x509_certificate*, %struct.x509_certificate** %143, align 8
  %145 = icmp eq %struct.x509_certificate* %139, %144
  br i1 %145, label %149, label %146

146:                                              ; preds = %138
  %147 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %148 = icmp eq %struct.x509_certificate* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %146, %138, %133
  %150 = load i32, i32* @MSG_DEBUG, align 4
  %151 = call i32 (i32, i8*, ...) @wpa_printf(i32 %150, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0))
  br label %152

152:                                              ; preds = %149, %146
  %153 = load i32*, i32** %12, align 8
  %154 = load i32*, i32** %8, align 8
  %155 = load i32*, i32** %12, align 8
  %156 = ptrtoint i32* %154 to i64
  %157 = ptrtoint i32* %155 to i64
  %158 = sub i64 %156, %157
  %159 = sdiv exact i64 %158, 4
  %160 = sub nsw i64 %159, 3
  %161 = trunc i64 %160 to i32
  %162 = call i32 @WPA_PUT_BE24(i32* %153, i32 %161)
  %163 = load i32*, i32** %11, align 8
  %164 = load i32*, i32** %8, align 8
  %165 = load i32*, i32** %11, align 8
  %166 = ptrtoint i32* %164 to i64
  %167 = ptrtoint i32* %165 to i64
  %168 = sub i64 %166, %167
  %169 = sdiv exact i64 %168, 4
  %170 = sub nsw i64 %169, 3
  %171 = trunc i64 %170 to i32
  %172 = call i32 @WPA_PUT_BE24(i32* %163, i32 %171)
  %173 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %174 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %173, i32 0, i32 1
  %175 = load i32, i32* @TLS_CONTENT_TYPE_HANDSHAKE, align 4
  %176 = load i32*, i32** %9, align 8
  %177 = load i32*, i32** %7, align 8
  %178 = load i32*, i32** %9, align 8
  %179 = ptrtoint i32* %177 to i64
  %180 = ptrtoint i32* %178 to i64
  %181 = sub i64 %179, %180
  %182 = sdiv exact i64 %181, 4
  %183 = trunc i64 %182 to i32
  %184 = load i32*, i32** %10, align 8
  %185 = load i32*, i32** %8, align 8
  %186 = load i32*, i32** %10, align 8
  %187 = ptrtoint i32* %185 to i64
  %188 = ptrtoint i32* %186 to i64
  %189 = sub i64 %187, %188
  %190 = sdiv exact i64 %189, 4
  %191 = trunc i64 %190 to i32
  %192 = call i64 @tlsv1_record_send(i32* %174, i32 %175, i32* %176, i32 %183, i32* %184, i32 %191, i64* %13)
  %193 = icmp slt i64 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %152
  %195 = load i32, i32* @MSG_DEBUG, align 4
  %196 = call i32 (i32, i8*, ...) @wpa_printf(i32 %195, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %197 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %198 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %199 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %200 = call i32 @tls_alert(%struct.tlsv1_client* %197, i32 %198, i32 %199)
  store i32 -1, i32* %4, align 4
  br label %218

201:                                              ; preds = %152
  %202 = load i32*, i32** %9, align 8
  %203 = load i64, i64* %13, align 8
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  store i32* %204, i32** %8, align 8
  %205 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %206 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %205, i32 0, i32 0
  %207 = load i32*, i32** %10, align 8
  %208 = load i32*, i32** %8, align 8
  %209 = load i32*, i32** %10, align 8
  %210 = ptrtoint i32* %208 to i64
  %211 = ptrtoint i32* %209 to i64
  %212 = sub i64 %210, %211
  %213 = sdiv exact i64 %212, 4
  %214 = trunc i64 %213 to i32
  %215 = call i32 @tls_verify_hash_add(i32* %206, i32* %207, i32 %214)
  %216 = load i32*, i32** %8, align 8
  %217 = load i32**, i32*** %6, align 8
  store i32* %216, i32** %217, align 8
  store i32 0, i32* %4, align 4
  br label %218

218:                                              ; preds = %201, %194, %81, %29
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local i32 @tls_alert(%struct.tlsv1_client*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @WPA_PUT_BE24(i32*, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

declare dso_local i64 @x509_certificate_self_signed(%struct.x509_certificate*) #1

declare dso_local %struct.x509_certificate* @x509_certificate_get_subject(i32, i32*) #1

declare dso_local i64 @tlsv1_record_send(i32*, i32, i32*, i32, i32*, i32, i64*) #1

declare dso_local i32 @tls_verify_hash_add(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
