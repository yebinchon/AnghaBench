; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_openssl_tls_cert_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_openssl_tls_cert_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32, i64, %struct.tls_context* }
%struct.tls_context = type { i32, i32 (i32, i32, %union.tls_event_data*)*, i64 }
%union.tls_event_data = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i8*, i8*, i8**, i32, i32, i32*, %struct.wpabuf* }
%struct.wpabuf = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i8* }

@TLS_MAX_ALT_SUBJECT = common dso_local global i32 0, align 4
@TLS_CONN_EXT_CERT_CHECK = common dso_local global i32 0, align 4
@NID_subject_alt_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"EMAIL:\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"DNS:\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"URI:\00", align 1
@GENERAL_NAME_free = common dso_local global i32 0, align 4
@TLS_PEER_CERTIFICATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tls_connection*, i32*, i32, i8*)* @openssl_tls_cert_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @openssl_tls_cert_event(%struct.tls_connection* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.tls_connection*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %union.tls_event_data, align 8
  %11 = alloca %struct.tls_context*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca [128 x i8], align 16
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store %struct.tls_connection* %0, %struct.tls_connection** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %9, align 8
  %23 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %24 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %23, i32 0, i32 2
  %25 = load %struct.tls_context*, %struct.tls_context** %24, align 8
  store %struct.tls_context* %25, %struct.tls_context** %11, align 8
  %26 = load i32, i32* @TLS_MAX_ALT_SUBJECT, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %12, align 8
  %29 = alloca i8*, i64 %27, align 16
  store i64 %27, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %30 = load %struct.tls_context*, %struct.tls_context** %11, align 8
  %31 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %30, i32 0, i32 1
  %32 = load i32 (i32, i32, %union.tls_event_data*)*, i32 (i32, i32, %union.tls_event_data*)** %31, align 8
  %33 = icmp eq i32 (i32, i32, %union.tls_event_data*)* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  store i32 1, i32* %21, align 4
  br label %238

35:                                               ; preds = %4
  %36 = call i32 @os_memset(%union.tls_event_data* %10, i32 0, i32 56)
  %37 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %38 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %43 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @TLS_CONN_EXT_CERT_CHECK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %41
  %49 = load %struct.tls_context*, %struct.tls_context** %11, align 8
  %50 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48, %41, %35
  %54 = load i32*, i32** %6, align 8
  %55 = call %struct.wpabuf* @get_x509_cert(i32* %54)
  store %struct.wpabuf* %55, %struct.wpabuf** %9, align 8
  %56 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %57 = bitcast %union.tls_event_data* %10 to %struct.TYPE_8__*
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 8
  store %struct.wpabuf* %56, %struct.wpabuf** %58, align 8
  br label %59

59:                                               ; preds = %53, %48
  %60 = load i32, i32* %7, align 4
  %61 = bitcast %union.tls_event_data* %10 to %struct.TYPE_8__*
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = bitcast %union.tls_event_data* %10 to %struct.TYPE_8__*
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = call i32* @X509_get_serialNumber(i32* %66)
  store i32* %67, i32** %19, align 8
  %68 = load i32*, i32** %19, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %80

70:                                               ; preds = %59
  %71 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %72 = load i32*, i32** %19, align 8
  %73 = call i32 @ASN1_STRING_get0_data(i32* %72)
  %74 = load i32*, i32** %19, align 8
  %75 = call i32 @ASN1_STRING_length(i32* %74)
  %76 = call i32 @wpa_snprintf_hex_uppercase(i8* %71, i32 128, i32 %73, i32 %75)
  %77 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %78 = bitcast %union.tls_event_data* %10 to %struct.TYPE_8__*
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 3
  store i8* %77, i8** %79, align 8
  br label %80

80:                                               ; preds = %70, %59
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* @NID_subject_alt_name, align 4
  %83 = call i8* @X509_get_ext_d2i(i32* %81, i32 %82, i32* null, i32* null)
  store i8* %83, i8** %17, align 8
  store i64 0, i64* %18, align 8
  br label %84

84:                                               ; preds = %181, %80
  %85 = load i8*, i8** %17, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i64, i64* %18, align 8
  %89 = load i8*, i8** %17, align 8
  %90 = call i64 @sk_GENERAL_NAME_num(i8* %89)
  %91 = icmp slt i64 %88, %90
  br label %92

92:                                               ; preds = %87, %84
  %93 = phi i1 [ false, %84 ], [ %91, %87 ]
  br i1 %93, label %94, label %184

94:                                               ; preds = %92
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* @TLS_MAX_ALT_SUBJECT, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %184

99:                                               ; preds = %94
  %100 = load i8*, i8** %17, align 8
  %101 = load i64, i64* %18, align 8
  %102 = call %struct.TYPE_9__* @sk_GENERAL_NAME_value(i8* %100, i64 %101)
  store %struct.TYPE_9__* %102, %struct.TYPE_9__** %16, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 129
  br i1 %106, label %107, label %118

107:                                              ; preds = %99
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 130
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 128
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %181

118:                                              ; preds = %112, %107, %99
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 10, %124
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = call i8* @os_malloc(i64 %127)
  store i8* %128, i8** %22, align 8
  %129 = load i8*, i8** %22, align 8
  %130 = icmp eq i8* %129, null
  br i1 %130, label %131, label %132

131:                                              ; preds = %118
  br label %184

132:                                              ; preds = %118
  %133 = load i8*, i8** %22, align 8
  %134 = load i32, i32* %15, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %15, align 4
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i8*, i8** %29, i64 %136
  store i8* %133, i8** %137, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  switch i32 %140, label %156 [
    i32 129, label %141
    i32 130, label %146
    i32 128, label %151
  ]

141:                                              ; preds = %132
  %142 = load i8*, i8** %22, align 8
  %143 = call i32 @os_memcpy(i8* %142, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %144 = load i8*, i8** %22, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 6
  store i8* %145, i8** %22, align 8
  br label %156

146:                                              ; preds = %132
  %147 = load i8*, i8** %22, align 8
  %148 = call i32 @os_memcpy(i8* %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %149 = load i8*, i8** %22, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 4
  store i8* %150, i8** %22, align 8
  br label %156

151:                                              ; preds = %132
  %152 = load i8*, i8** %22, align 8
  %153 = call i32 @os_memcpy(i8* %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %154 = load i8*, i8** %22, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 4
  store i8* %155, i8** %22, align 8
  br label %156

156:                                              ; preds = %132, %151, %146, %141
  %157 = load i8*, i8** %22, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @os_memcpy(i8* %157, i8* %163, i32 %169)
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i8*, i8** %22, align 8
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i8, i8* %177, i64 %178
  store i8* %179, i8** %22, align 8
  %180 = load i8*, i8** %22, align 8
  store i8 0, i8* %180, align 1
  br label %181

181:                                              ; preds = %156, %117
  %182 = load i64, i64* %18, align 8
  %183 = add nsw i64 %182, 1
  store i64 %183, i64* %18, align 8
  br label %84

184:                                              ; preds = %131, %98, %92
  %185 = load i8*, i8** %17, align 8
  %186 = load i32, i32* @GENERAL_NAME_free, align 4
  %187 = call i32 @sk_GENERAL_NAME_pop_free(i8* %185, i32 %186)
  store i32 0, i32* %14, align 4
  br label %188

188:                                              ; preds = %203, %184
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* %15, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %206

192:                                              ; preds = %188
  %193 = load i32, i32* %14, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8*, i8** %29, i64 %194
  %196 = load i8*, i8** %195, align 8
  %197 = bitcast %union.tls_event_data* %10 to %struct.TYPE_8__*
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 4
  %199 = load i8**, i8*** %198, align 8
  %200 = load i32, i32* %14, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8*, i8** %199, i64 %201
  store i8* %196, i8** %202, align 8
  br label %203

203:                                              ; preds = %192
  %204 = load i32, i32* %14, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %14, align 4
  br label %188

206:                                              ; preds = %188
  %207 = load i32, i32* %15, align 4
  %208 = bitcast %union.tls_event_data* %10 to %struct.TYPE_8__*
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 5
  store i32 %207, i32* %209, align 8
  %210 = load i32*, i32** %6, align 8
  %211 = call i32 @openssl_cert_tod(i32* %210)
  %212 = bitcast %union.tls_event_data* %10 to %struct.TYPE_8__*
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 6
  store i32 %211, i32* %213, align 4
  %214 = load %struct.tls_context*, %struct.tls_context** %11, align 8
  %215 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %214, i32 0, i32 1
  %216 = load i32 (i32, i32, %union.tls_event_data*)*, i32 (i32, i32, %union.tls_event_data*)** %215, align 8
  %217 = load %struct.tls_context*, %struct.tls_context** %11, align 8
  %218 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @TLS_PEER_CERTIFICATE, align 4
  %221 = call i32 %216(i32 %219, i32 %220, %union.tls_event_data* %10)
  %222 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %223 = call i32 @wpabuf_free(%struct.wpabuf* %222)
  store i32 0, i32* %14, align 4
  br label %224

224:                                              ; preds = %234, %206
  %225 = load i32, i32* %14, align 4
  %226 = load i32, i32* %15, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %237

228:                                              ; preds = %224
  %229 = load i32, i32* %14, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8*, i8** %29, i64 %230
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 @os_free(i8* %232)
  br label %234

234:                                              ; preds = %228
  %235 = load i32, i32* %14, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %14, align 4
  br label %224

237:                                              ; preds = %224
  store i32 0, i32* %21, align 4
  br label %238

238:                                              ; preds = %237, %34
  %239 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %239)
  %240 = load i32, i32* %21, align 4
  switch i32 %240, label %242 [
    i32 0, label %241
    i32 1, label %241
  ]

241:                                              ; preds = %238, %238
  ret void

242:                                              ; preds = %238
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_memset(%union.tls_event_data*, i32, i32) #2

declare dso_local %struct.wpabuf* @get_x509_cert(i32*) #2

declare dso_local i32* @X509_get_serialNumber(i32*) #2

declare dso_local i32 @wpa_snprintf_hex_uppercase(i8*, i32, i32, i32) #2

declare dso_local i32 @ASN1_STRING_get0_data(i32*) #2

declare dso_local i32 @ASN1_STRING_length(i32*) #2

declare dso_local i8* @X509_get_ext_d2i(i32*, i32, i32*, i32*) #2

declare dso_local i64 @sk_GENERAL_NAME_num(i8*) #2

declare dso_local %struct.TYPE_9__* @sk_GENERAL_NAME_value(i8*, i64) #2

declare dso_local i8* @os_malloc(i64) #2

declare dso_local i32 @os_memcpy(i8*, i8*, i32) #2

declare dso_local i32 @sk_GENERAL_NAME_pop_free(i8*, i32) #2

declare dso_local i32 @openssl_cert_tod(i32*) #2

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #2

declare dso_local i32 @os_free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
