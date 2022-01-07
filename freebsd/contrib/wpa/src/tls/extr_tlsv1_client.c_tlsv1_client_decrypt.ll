; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client.c_tlsv1_client_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client.c_tlsv1_client_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.tlsv1_client = type { %struct.wpabuf*, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"TLSv1: Failed to allocate memory for pending record\00", align 1
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"TLSv1: Record layer processing failed\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"TLSv1: Need more data\00", align 1
@TLS_CONTENT_TYPE_ALERT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"TLSv1: Alert underflow\00", align 1
@TLS_ALERT_DECODE_ERROR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"TLSv1: Received alert %d:%d\00", align 1
@TLS_ALERT_LEVEL_WARNING = common dso_local global i64 0, align 8
@TLS_CONTENT_TYPE_APPLICATION_DATA = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [69 x i8] c"TLSv1: Unexpected content type 0x%x when decrypting application data\00", align 1
@TLS_ALERT_UNEXPECTED_MESSAGE = common dso_local global i64 0, align 8
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @tlsv1_client_decrypt(%struct.tlsv1_client* %0, i64* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.tlsv1_client*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.wpabuf*, align 8
  %18 = alloca %struct.wpabuf*, align 8
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %17, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32*, i32** %9, align 8
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %21, %4
  %24 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %25 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %24, i32 0, i32 0
  %26 = load %struct.wpabuf*, %struct.wpabuf** %25, align 8
  %27 = icmp ne %struct.wpabuf* %26, null
  br i1 %27, label %28, label %54

28:                                               ; preds = %23
  %29 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %30 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %29, i32 0, i32 0
  %31 = load i64, i64* %8, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i64 @wpabuf_resize(%struct.wpabuf** %30, i32 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = call i32 (i32, i8*, ...) @wpa_printf(i32 %36, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %38 = load i64, i64* @TLS_ALERT_INTERNAL_ERROR, align 8
  store i64 %38, i64* %13, align 8
  br label %198

39:                                               ; preds = %28
  %40 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %41 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %40, i32 0, i32 0
  %42 = load %struct.wpabuf*, %struct.wpabuf** %41, align 8
  %43 = load i64*, i64** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @wpabuf_put_data(%struct.wpabuf* %42, i64* %43, i64 %44)
  %46 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %47 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %46, i32 0, i32 0
  %48 = load %struct.wpabuf*, %struct.wpabuf** %47, align 8
  %49 = call i64* @wpabuf_head(%struct.wpabuf* %48)
  store i64* %49, i64** %7, align 8
  %50 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %51 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %50, i32 0, i32 0
  %52 = load %struct.wpabuf*, %struct.wpabuf** %51, align 8
  %53 = call i64 @wpabuf_len(%struct.wpabuf* %52)
  store i64 %53, i64* %8, align 8
  br label %54

54:                                               ; preds = %39, %23
  %55 = load i64*, i64** %7, align 8
  store i64* %55, i64** %11, align 8
  %56 = load i64*, i64** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  store i64* %58, i64** %10, align 8
  br label %59

59:                                               ; preds = %182, %162, %54
  %60 = load i64*, i64** %11, align 8
  %61 = load i64*, i64** %10, align 8
  %62 = icmp ult i64* %60, %61
  br i1 %62, label %63, label %190

63:                                               ; preds = %59
  %64 = load i64*, i64** %11, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %15, align 8
  %67 = load i64*, i64** %10, align 8
  %68 = load i64*, i64** %11, align 8
  %69 = ptrtoint i64* %67 to i64
  %70 = ptrtoint i64* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 8
  %73 = trunc i64 %72 to i32
  %74 = call i64 @wpabuf_resize(%struct.wpabuf** %17, i32 %73)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %63
  %77 = load i64, i64* @TLS_ALERT_INTERNAL_ERROR, align 8
  store i64 %77, i64* %13, align 8
  br label %198

78:                                               ; preds = %63
  %79 = load %struct.wpabuf*, %struct.wpabuf** %17, align 8
  %80 = call i64* @wpabuf_put(%struct.wpabuf* %79, i64 0)
  store i64* %80, i64** %14, align 8
  %81 = load %struct.wpabuf*, %struct.wpabuf** %17, align 8
  %82 = call i64 @wpabuf_tailroom(%struct.wpabuf* %81)
  store i64 %82, i64* %16, align 8
  %83 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %84 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %83, i32 0, i32 1
  %85 = load i64*, i64** %11, align 8
  %86 = load i64*, i64** %10, align 8
  %87 = load i64*, i64** %11, align 8
  %88 = ptrtoint i64* %86 to i64
  %89 = ptrtoint i64* %87 to i64
  %90 = sub i64 %88, %89
  %91 = sdiv exact i64 %90, 8
  %92 = trunc i64 %91 to i32
  %93 = load i64*, i64** %14, align 8
  %94 = call i32 @tlsv1_record_receive(i32* %84, i64* %85, i32 %92, i64* %93, i64* %16, i64* %13)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %78
  %98 = load i32, i32* @MSG_DEBUG, align 4
  %99 = call i32 (i32, i8*, ...) @wpa_printf(i32 %98, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %198

100:                                              ; preds = %78
  %101 = load i32, i32* %12, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %137

103:                                              ; preds = %100
  %104 = load i32, i32* @MSG_DEBUG, align 4
  %105 = call i32 (i32, i8*, ...) @wpa_printf(i32 %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i64*, i64** %11, align 8
  %107 = load i64*, i64** %10, align 8
  %108 = load i64*, i64** %11, align 8
  %109 = ptrtoint i64* %107 to i64
  %110 = ptrtoint i64* %108 to i64
  %111 = sub i64 %109, %110
  %112 = sdiv exact i64 %111, 8
  %113 = trunc i64 %112 to i32
  %114 = call %struct.wpabuf* @wpabuf_alloc_copy(i64* %106, i32 %113)
  store %struct.wpabuf* %114, %struct.wpabuf** %18, align 8
  %115 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %116 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %115, i32 0, i32 0
  %117 = load %struct.wpabuf*, %struct.wpabuf** %116, align 8
  %118 = call i32 @wpabuf_free(%struct.wpabuf* %117)
  %119 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %120 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %121 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %120, i32 0, i32 0
  store %struct.wpabuf* %119, %struct.wpabuf** %121, align 8
  %122 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %123 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %122, i32 0, i32 0
  %124 = load %struct.wpabuf*, %struct.wpabuf** %123, align 8
  %125 = icmp eq %struct.wpabuf* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %103
  %127 = load i32, i32* @MSG_DEBUG, align 4
  %128 = call i32 (i32, i8*, ...) @wpa_printf(i32 %127, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %129 = load i64, i64* @TLS_ALERT_INTERNAL_ERROR, align 8
  store i64 %129, i64* %13, align 8
  br label %198

130:                                              ; preds = %103
  %131 = load i32*, i32** %9, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i32*, i32** %9, align 8
  store i32 1, i32* %134, align 4
  br label %135

135:                                              ; preds = %133, %130
  %136 = load %struct.wpabuf*, %struct.wpabuf** %17, align 8
  store %struct.wpabuf* %136, %struct.wpabuf** %5, align 8
  br label %211

137:                                              ; preds = %100
  %138 = load i64, i64* %15, align 8
  %139 = load i64, i64* @TLS_CONTENT_TYPE_ALERT, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %171

141:                                              ; preds = %137
  %142 = load i64, i64* %16, align 8
  %143 = icmp ult i64 %142, 2
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load i32, i32* @MSG_DEBUG, align 4
  %146 = call i32 (i32, i8*, ...) @wpa_printf(i32 %145, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %147 = load i64, i64* @TLS_ALERT_DECODE_ERROR, align 8
  store i64 %147, i64* %13, align 8
  br label %198

148:                                              ; preds = %141
  %149 = load i32, i32* @MSG_DEBUG, align 4
  %150 = load i64*, i64** %14, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64*, i64** %14, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 1
  %155 = load i64, i64* %154, align 8
  %156 = call i32 (i32, i8*, ...) @wpa_printf(i32 %149, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %152, i64 %155)
  %157 = load i64*, i64** %14, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @TLS_ALERT_LEVEL_WARNING, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %148
  %163 = load i32, i32* %12, align 4
  %164 = load i64*, i64** %11, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i64, i64* %164, i64 %165
  store i64* %166, i64** %11, align 8
  br label %59

167:                                              ; preds = %148
  %168 = load i64*, i64** %14, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 1
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %13, align 8
  br label %198

171:                                              ; preds = %137
  %172 = load i64, i64* %15, align 8
  %173 = load i64, i64* @TLS_CONTENT_TYPE_APPLICATION_DATA, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %182

175:                                              ; preds = %171
  %176 = load i32, i32* @MSG_DEBUG, align 4
  %177 = load i64*, i64** %11, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 0
  %179 = load i64, i64* %178, align 8
  %180 = call i32 (i32, i8*, ...) @wpa_printf(i32 %176, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i64 %179)
  %181 = load i64, i64* @TLS_ALERT_UNEXPECTED_MESSAGE, align 8
  store i64 %181, i64* %13, align 8
  br label %198

182:                                              ; preds = %171
  %183 = load %struct.wpabuf*, %struct.wpabuf** %17, align 8
  %184 = load i64, i64* %16, align 8
  %185 = call i64* @wpabuf_put(%struct.wpabuf* %183, i64 %184)
  %186 = load i32, i32* %12, align 4
  %187 = load i64*, i64** %11, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i64, i64* %187, i64 %188
  store i64* %189, i64** %11, align 8
  br label %59

190:                                              ; preds = %59
  %191 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %192 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %191, i32 0, i32 0
  %193 = load %struct.wpabuf*, %struct.wpabuf** %192, align 8
  %194 = call i32 @wpabuf_free(%struct.wpabuf* %193)
  %195 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %196 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %195, i32 0, i32 0
  store %struct.wpabuf* null, %struct.wpabuf** %196, align 8
  %197 = load %struct.wpabuf*, %struct.wpabuf** %17, align 8
  store %struct.wpabuf* %197, %struct.wpabuf** %5, align 8
  br label %211

198:                                              ; preds = %175, %167, %144, %126, %97, %76, %35
  %199 = load %struct.wpabuf*, %struct.wpabuf** %17, align 8
  %200 = call i32 @wpabuf_free(%struct.wpabuf* %199)
  %201 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %202 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %201, i32 0, i32 0
  %203 = load %struct.wpabuf*, %struct.wpabuf** %202, align 8
  %204 = call i32 @wpabuf_free(%struct.wpabuf* %203)
  %205 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %206 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %205, i32 0, i32 0
  store %struct.wpabuf* null, %struct.wpabuf** %206, align 8
  %207 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %208 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %209 = load i64, i64* %13, align 8
  %210 = call i32 @tls_alert(%struct.tlsv1_client* %207, i32 %208, i64 %209)
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %211

211:                                              ; preds = %198, %190, %135
  %212 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %212
}

declare dso_local i64 @wpabuf_resize(%struct.wpabuf**, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i64*, i64) #1

declare dso_local i64* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i64* @wpabuf_put(%struct.wpabuf*, i64) #1

declare dso_local i64 @wpabuf_tailroom(%struct.wpabuf*) #1

declare dso_local i32 @tlsv1_record_receive(i32*, i64*, i32, i64*, i64*, i64*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc_copy(i64*, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @tls_alert(%struct.tlsv1_client*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
