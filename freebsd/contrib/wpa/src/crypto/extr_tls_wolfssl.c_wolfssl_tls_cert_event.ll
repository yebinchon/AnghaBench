; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_wolfssl_tls_cert_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_wolfssl_tls_cert_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32, i64, %struct.tls_context* }
%struct.tls_context = type { i32, i32 (i32, i32, %union.tls_event_data*)*, i64 }
%union.tls_event_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i8*, i8**, i32, i32*, %struct.wpabuf* }
%struct.wpabuf = type { i32 }
%struct.TYPE_5__ = type { i32, i8* }

@TLS_MAX_ALT_SUBJECT = common dso_local global i32 0, align 4
@TLS_CONN_EXT_CERT_CHECK = common dso_local global i32 0, align 4
@ALT_NAMES_OID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"EMAIL:\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"DNS:\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"URI:\00", align 1
@TLS_PEER_CERTIFICATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tls_connection*, i32*, i32, i8*)* @wolfssl_tls_cert_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wolfssl_tls_cert_event(%struct.tls_connection* %0, i32* %1, i32 %2, i8* %3) #0 {
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
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.tls_connection* %0, %struct.tls_connection** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %9, align 8
  %21 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %22 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %21, i32 0, i32 2
  %23 = load %struct.tls_context*, %struct.tls_context** %22, align 8
  store %struct.tls_context* %23, %struct.tls_context** %11, align 8
  %24 = load i32, i32* @TLS_MAX_ALT_SUBJECT, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %12, align 8
  %27 = alloca i8*, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %28 = load %struct.tls_context*, %struct.tls_context** %11, align 8
  %29 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %28, i32 0, i32 1
  %30 = load i32 (i32, i32, %union.tls_event_data*)*, i32 (i32, i32, %union.tls_event_data*)** %29, align 8
  %31 = icmp ne i32 (i32, i32, %union.tls_event_data*)* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %4
  store i32 1, i32* %19, align 4
  br label %206

33:                                               ; preds = %4
  %34 = call i32 @os_memset(%union.tls_event_data* %10, i32 0, i32 48)
  %35 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %36 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %33
  %40 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %41 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @TLS_CONN_EXT_CERT_CHECK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %39
  %47 = load %struct.tls_context*, %struct.tls_context** %11, align 8
  %48 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46, %39, %33
  %52 = load i32*, i32** %6, align 8
  %53 = call %struct.wpabuf* @get_x509_cert(i32* %52)
  store %struct.wpabuf* %53, %struct.wpabuf** %9, align 8
  %54 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %55 = bitcast %union.tls_event_data* %10 to %struct.TYPE_4__*
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 6
  store %struct.wpabuf* %54, %struct.wpabuf** %56, align 8
  br label %57

57:                                               ; preds = %51, %46
  %58 = load i32, i32* %7, align 4
  %59 = bitcast %union.tls_event_data* %10 to %struct.TYPE_4__*
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = bitcast %union.tls_event_data* %10 to %struct.TYPE_4__*
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* @ALT_NAMES_OID, align 4
  %66 = call i8* @wolfSSL_X509_get_ext_d2i(i32* %64, i32 %65, i32* null, i32* null)
  store i8* %66, i8** %17, align 8
  store i32 0, i32* %18, align 4
  br label %67

67:                                               ; preds = %154, %57
  %68 = load i8*, i8** %17, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32, i32* %18, align 4
  %72 = load i8*, i8** %17, align 8
  %73 = call i32 @wolfSSL_sk_num(i8* %72)
  %74 = icmp slt i32 %71, %73
  br label %75

75:                                               ; preds = %70, %67
  %76 = phi i1 [ false, %67 ], [ %74, %70 ]
  br i1 %76, label %77, label %157

77:                                               ; preds = %75
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* @TLS_MAX_ALT_SUBJECT, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %157

82:                                               ; preds = %77
  %83 = load i8*, i8** %17, align 8
  %84 = load i32, i32* %18, align 4
  %85 = call %struct.TYPE_5__* @wolfSSL_sk_value(i8* %83, i32 %84)
  store %struct.TYPE_5__* %85, %struct.TYPE_5__** %16, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 129
  br i1 %89, label %90, label %101

90:                                               ; preds = %82
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 130
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 128
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %154

101:                                              ; preds = %95, %90, %82
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @os_strlen(i8* %104)
  %106 = add nsw i32 10, %105
  %107 = add nsw i32 %106, 1
  %108 = call i8* @os_malloc(i32 %107)
  store i8* %108, i8** %20, align 8
  %109 = load i8*, i8** %20, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %101
  br label %157

112:                                              ; preds = %101
  %113 = load i8*, i8** %20, align 8
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %15, align 4
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i8*, i8** %27, i64 %116
  store i8* %113, i8** %117, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  switch i32 %120, label %136 [
    i32 129, label %121
    i32 130, label %126
    i32 128, label %131
  ]

121:                                              ; preds = %112
  %122 = load i8*, i8** %20, align 8
  %123 = call i32 @os_memcpy(i8* %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %124 = load i8*, i8** %20, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 6
  store i8* %125, i8** %20, align 8
  br label %136

126:                                              ; preds = %112
  %127 = load i8*, i8** %20, align 8
  %128 = call i32 @os_memcpy(i8* %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %129 = load i8*, i8** %20, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 4
  store i8* %130, i8** %20, align 8
  br label %136

131:                                              ; preds = %112
  %132 = load i8*, i8** %20, align 8
  %133 = call i32 @os_memcpy(i8* %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %134 = load i8*, i8** %20, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 4
  store i8* %135, i8** %20, align 8
  br label %136

136:                                              ; preds = %112, %131, %126, %121
  %137 = load i8*, i8** %20, align 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @os_strlen(i8* %143)
  %145 = call i32 @os_memcpy(i8* %137, i8* %140, i32 %144)
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @os_strlen(i8* %148)
  %150 = load i8*, i8** %20, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  store i8* %152, i8** %20, align 8
  %153 = load i8*, i8** %20, align 8
  store i8 0, i8* %153, align 1
  br label %154

154:                                              ; preds = %136, %100
  %155 = load i32, i32* %18, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %18, align 4
  br label %67

157:                                              ; preds = %111, %81, %75
  %158 = load i8*, i8** %17, align 8
  %159 = call i32 @wolfSSL_sk_ASN1_OBJECT_free(i8* %158)
  store i32 0, i32* %14, align 4
  br label %160

160:                                              ; preds = %175, %157
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* %15, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %178

164:                                              ; preds = %160
  %165 = load i32, i32* %14, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8*, i8** %27, i64 %166
  %168 = load i8*, i8** %167, align 8
  %169 = bitcast %union.tls_event_data* %10 to %struct.TYPE_4__*
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 3
  %171 = load i8**, i8*** %170, align 8
  %172 = load i32, i32* %14, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  store i8* %168, i8** %174, align 8
  br label %175

175:                                              ; preds = %164
  %176 = load i32, i32* %14, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %14, align 4
  br label %160

178:                                              ; preds = %160
  %179 = load i32, i32* %15, align 4
  %180 = bitcast %union.tls_event_data* %10 to %struct.TYPE_4__*
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 4
  store i32 %179, i32* %181, align 8
  %182 = load %struct.tls_context*, %struct.tls_context** %11, align 8
  %183 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %182, i32 0, i32 1
  %184 = load i32 (i32, i32, %union.tls_event_data*)*, i32 (i32, i32, %union.tls_event_data*)** %183, align 8
  %185 = load %struct.tls_context*, %struct.tls_context** %11, align 8
  %186 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @TLS_PEER_CERTIFICATE, align 4
  %189 = call i32 %184(i32 %187, i32 %188, %union.tls_event_data* %10)
  %190 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %191 = call i32 @wpabuf_free(%struct.wpabuf* %190)
  store i32 0, i32* %14, align 4
  br label %192

192:                                              ; preds = %202, %178
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* %15, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %205

196:                                              ; preds = %192
  %197 = load i32, i32* %14, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8*, i8** %27, i64 %198
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @os_free(i8* %200)
  br label %202

202:                                              ; preds = %196
  %203 = load i32, i32* %14, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %14, align 4
  br label %192

205:                                              ; preds = %192
  store i32 0, i32* %19, align 4
  br label %206

206:                                              ; preds = %205, %32
  %207 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %207)
  %208 = load i32, i32* %19, align 4
  switch i32 %208, label %210 [
    i32 0, label %209
    i32 1, label %209
  ]

209:                                              ; preds = %206, %206
  ret void

210:                                              ; preds = %206
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_memset(%union.tls_event_data*, i32, i32) #2

declare dso_local %struct.wpabuf* @get_x509_cert(i32*) #2

declare dso_local i8* @wolfSSL_X509_get_ext_d2i(i32*, i32, i32*, i32*) #2

declare dso_local i32 @wolfSSL_sk_num(i8*) #2

declare dso_local %struct.TYPE_5__* @wolfSSL_sk_value(i8*, i32) #2

declare dso_local i8* @os_malloc(i32) #2

declare dso_local i32 @os_strlen(i8*) #2

declare dso_local i32 @os_memcpy(i8*, i8*, i32) #2

declare dso_local i32 @wolfSSL_sk_ASN1_OBJECT_free(i8*) #2

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
