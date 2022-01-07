; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_read.c_tlsv1_client_process_handshake.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_read.c_tlsv1_client_process_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32, i32 }

@TLS_CONTENT_TYPE_ALERT = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"TLSv1: Alert underflow\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_DECODE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"TLSv1: Received alert %d:%d\00", align 1
@FAILED = common dso_local global i32 0, align 4
@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i64 0, align 8
@TLS_HANDSHAKE_TYPE_HELLO_REQUEST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"TLSv1: HelloRequest underflow\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"TLSv1: Ignored HelloRequest\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"TLSv1: Unexpected state %d while processing received message\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tlsv1_client_process_handshake(%struct.tlsv1_client* %0, i64 %1, i64* %2, i64* %3, i64** %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tlsv1_client*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i64* %5, i64** %13, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @TLS_CONTENT_TYPE_ALERT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %6
  %19 = load i64*, i64** %11, align 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %20, 2
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = call i32 (i32, i8*, ...) @wpa_printf(i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.tlsv1_client*, %struct.tlsv1_client** %8, align 8
  %26 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %27 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %28 = call i32 @tls_alert(%struct.tlsv1_client* %25, i32 %26, i32 %27)
  store i32 -1, i32* %7, align 4
  br label %177

29:                                               ; preds = %18
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = load i64*, i64** %10, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %10, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (i32, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %33, i64 %36)
  %38 = load i64*, i64** %11, align 8
  store i64 2, i64* %38, align 8
  %39 = load i32, i32* @FAILED, align 4
  %40 = load %struct.tlsv1_client*, %struct.tlsv1_client** %8, align 8
  %41 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  store i32 -1, i32* %7, align 4
  br label %177

42:                                               ; preds = %6
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @TLS_CONTENT_TYPE_HANDSHAKE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %42
  %47 = load i64*, i64** %11, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp uge i64 %48, 4
  br i1 %49, label %50, label %78

50:                                               ; preds = %46
  %51 = load i64*, i64** %10, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TLS_HANDSHAKE_TYPE_HELLO_REQUEST, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %50
  %57 = load i64*, i64** %10, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 1
  %59 = call i64 @WPA_GET_BE24(i64* %58)
  store i64 %59, i64* %14, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load i64*, i64** %11, align 8
  %62 = load i64, i64* %61, align 8
  %63 = sub i64 %62, 4
  %64 = icmp ugt i64 %60, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load i32, i32* @MSG_DEBUG, align 4
  %67 = call i32 (i32, i8*, ...) @wpa_printf(i32 %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.tlsv1_client*, %struct.tlsv1_client** %8, align 8
  %69 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %70 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %71 = call i32 @tls_alert(%struct.tlsv1_client* %68, i32 %69, i32 %70)
  store i32 -1, i32* %7, align 4
  br label %177

72:                                               ; preds = %56
  %73 = load i32, i32* @MSG_DEBUG, align 4
  %74 = call i32 (i32, i8*, ...) @wpa_printf(i32 %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i64, i64* %14, align 8
  %76 = add i64 4, %75
  %77 = load i64*, i64** %11, align 8
  store i64 %76, i64* %77, align 8
  store i32 0, i32* %7, align 4
  br label %177

78:                                               ; preds = %50, %46, %42
  %79 = load %struct.tlsv1_client*, %struct.tlsv1_client** %8, align 8
  %80 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  switch i32 %81, label %159 [
    i32 130, label %82
    i32 134, label %91
    i32 128, label %100
    i32 133, label %109
    i32 129, label %118
    i32 132, label %127
    i32 131, label %136
    i32 135, label %145
  ]

82:                                               ; preds = %78
  %83 = load %struct.tlsv1_client*, %struct.tlsv1_client** %8, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i64*, i64** %10, align 8
  %86 = load i64*, i64** %11, align 8
  %87 = call i32 @tls_process_server_hello(%struct.tlsv1_client* %83, i64 %84, i64* %85, i64* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i32 -1, i32* %7, align 4
  br label %177

90:                                               ; preds = %82
  br label %165

91:                                               ; preds = %78
  %92 = load %struct.tlsv1_client*, %struct.tlsv1_client** %8, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load i64*, i64** %10, align 8
  %95 = load i64*, i64** %11, align 8
  %96 = call i32 @tls_process_certificate(%struct.tlsv1_client* %92, i64 %93, i64* %94, i64* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  store i32 -1, i32* %7, align 4
  br label %177

99:                                               ; preds = %91
  br label %165

100:                                              ; preds = %78
  %101 = load %struct.tlsv1_client*, %struct.tlsv1_client** %8, align 8
  %102 = load i64, i64* %9, align 8
  %103 = load i64*, i64** %10, align 8
  %104 = load i64*, i64** %11, align 8
  %105 = call i32 @tls_process_server_key_exchange(%struct.tlsv1_client* %101, i64 %102, i64* %103, i64* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  store i32 -1, i32* %7, align 4
  br label %177

108:                                              ; preds = %100
  br label %165

109:                                              ; preds = %78
  %110 = load %struct.tlsv1_client*, %struct.tlsv1_client** %8, align 8
  %111 = load i64, i64* %9, align 8
  %112 = load i64*, i64** %10, align 8
  %113 = load i64*, i64** %11, align 8
  %114 = call i32 @tls_process_certificate_request(%struct.tlsv1_client* %110, i64 %111, i64* %112, i64* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  store i32 -1, i32* %7, align 4
  br label %177

117:                                              ; preds = %109
  br label %165

118:                                              ; preds = %78
  %119 = load %struct.tlsv1_client*, %struct.tlsv1_client** %8, align 8
  %120 = load i64, i64* %9, align 8
  %121 = load i64*, i64** %10, align 8
  %122 = load i64*, i64** %11, align 8
  %123 = call i32 @tls_process_server_hello_done(%struct.tlsv1_client* %119, i64 %120, i64* %121, i64* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  store i32 -1, i32* %7, align 4
  br label %177

126:                                              ; preds = %118
  br label %165

127:                                              ; preds = %78
  %128 = load %struct.tlsv1_client*, %struct.tlsv1_client** %8, align 8
  %129 = load i64, i64* %9, align 8
  %130 = load i64*, i64** %10, align 8
  %131 = load i64*, i64** %11, align 8
  %132 = call i32 @tls_process_server_change_cipher_spec(%struct.tlsv1_client* %128, i64 %129, i64* %130, i64* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  store i32 -1, i32* %7, align 4
  br label %177

135:                                              ; preds = %127
  br label %165

136:                                              ; preds = %78
  %137 = load %struct.tlsv1_client*, %struct.tlsv1_client** %8, align 8
  %138 = load i64, i64* %9, align 8
  %139 = load i64*, i64** %10, align 8
  %140 = load i64*, i64** %11, align 8
  %141 = call i32 @tls_process_server_finished(%struct.tlsv1_client* %137, i64 %138, i64* %139, i64* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  store i32 -1, i32* %7, align 4
  br label %177

144:                                              ; preds = %136
  br label %165

145:                                              ; preds = %78
  %146 = load i64**, i64*** %12, align 8
  %147 = icmp ne i64** %146, null
  br i1 %147, label %148, label %158

148:                                              ; preds = %145
  %149 = load %struct.tlsv1_client*, %struct.tlsv1_client** %8, align 8
  %150 = load i64, i64* %9, align 8
  %151 = load i64*, i64** %10, align 8
  %152 = load i64*, i64** %11, align 8
  %153 = load i64**, i64*** %12, align 8
  %154 = load i64*, i64** %13, align 8
  %155 = call i32 @tls_process_application_data(%struct.tlsv1_client* %149, i64 %150, i64* %151, i64* %152, i64** %153, i64* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %148
  store i32 -1, i32* %7, align 4
  br label %177

158:                                              ; preds = %148, %145
  br label %165

159:                                              ; preds = %78
  %160 = load i32, i32* @MSG_DEBUG, align 4
  %161 = load %struct.tlsv1_client*, %struct.tlsv1_client** %8, align 8
  %162 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i32, i8*, ...) @wpa_printf(i32 %160, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %163)
  store i32 -1, i32* %7, align 4
  br label %177

165:                                              ; preds = %158, %144, %135, %126, %117, %108, %99, %90
  %166 = load i64, i64* %9, align 8
  %167 = load i64, i64* @TLS_CONTENT_TYPE_HANDSHAKE, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %165
  %170 = load %struct.tlsv1_client*, %struct.tlsv1_client** %8, align 8
  %171 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %170, i32 0, i32 1
  %172 = load i64*, i64** %10, align 8
  %173 = load i64*, i64** %11, align 8
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @tls_verify_hash_add(i32* %171, i64* %172, i64 %174)
  br label %176

176:                                              ; preds = %169, %165
  store i32 0, i32* %7, align 4
  br label %177

177:                                              ; preds = %176, %159, %157, %143, %134, %125, %116, %107, %98, %89, %72, %65, %29, %22
  %178 = load i32, i32* %7, align 4
  ret i32 %178
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @tls_alert(%struct.tlsv1_client*, i32, i32) #1

declare dso_local i64 @WPA_GET_BE24(i64*) #1

declare dso_local i32 @tls_process_server_hello(%struct.tlsv1_client*, i64, i64*, i64*) #1

declare dso_local i32 @tls_process_certificate(%struct.tlsv1_client*, i64, i64*, i64*) #1

declare dso_local i32 @tls_process_server_key_exchange(%struct.tlsv1_client*, i64, i64*, i64*) #1

declare dso_local i32 @tls_process_certificate_request(%struct.tlsv1_client*, i64, i64*, i64*) #1

declare dso_local i32 @tls_process_server_hello_done(%struct.tlsv1_client*, i64, i64*, i64*) #1

declare dso_local i32 @tls_process_server_change_cipher_spec(%struct.tlsv1_client*, i64, i64*, i64*) #1

declare dso_local i32 @tls_process_server_finished(%struct.tlsv1_client*, i64, i64*, i64*) #1

declare dso_local i32 @tls_process_application_data(%struct.tlsv1_client*, i64, i64*, i64*, i64**, i64*) #1

declare dso_local i32 @tls_verify_hash_add(i32*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
