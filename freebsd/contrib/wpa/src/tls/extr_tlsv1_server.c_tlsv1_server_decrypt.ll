; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server.c_tlsv1_server_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server.c_tlsv1_server_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Record layer processing failed\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"TLSv1: Partial processing not yet supported\00", align 1
@TLS_CONTENT_TYPE_ALERT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Alert underflow\00", align 1
@TLS_ALERT_DECODE_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"Received alert %d:%d\00", align 1
@TLS_ALERT_LEVEL_WARNING = common dso_local global i64 0, align 8
@TLS_CONTENT_TYPE_APPLICATION_DATA = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"Unexpected content type 0x%x\00", align 1
@TLS_ALERT_UNEXPECTED_MESSAGE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [66 x i8] c"TLSv1: Buffer not large enough for processing the received record\00", align 1
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i64 0, align 8
@TLS_BREAK_SRV_KEY_X_HASH = common dso_local global i32 0, align 4
@TLS_BREAK_SRV_KEY_X_SIGNATURE = common dso_local global i32 0, align 4
@TLS_BREAK_VERIFY_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tlsv1_server_decrypt(%struct.tlsv1_server* %0, i64* %1, i64 %2, i64* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tlsv1_server*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  %20 = load i64*, i64** %8, align 8
  store i64* %20, i64** %13, align 8
  %21 = load i64*, i64** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  store i64* %23, i64** %12, align 8
  %24 = load i64*, i64** %10, align 8
  store i64* %24, i64** %17, align 8
  %25 = load i64*, i64** %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  store i64* %27, i64** %16, align 8
  br label %28

28:                                               ; preds = %145, %105, %5
  %29 = load i64*, i64** %13, align 8
  %30 = load i64*, i64** %12, align 8
  %31 = icmp ult i64* %29, %30
  br i1 %31, label %32, label %150

32:                                               ; preds = %28
  %33 = load i64*, i64** %13, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %18, align 8
  %36 = load i64*, i64** %16, align 8
  %37 = load i64*, i64** %17, align 8
  %38 = ptrtoint i64* %36 to i64
  %39 = ptrtoint i64* %37 to i64
  %40 = sub i64 %38, %39
  %41 = sdiv exact i64 %40, 8
  store i64 %41, i64* %19, align 8
  %42 = load %struct.tlsv1_server*, %struct.tlsv1_server** %7, align 8
  %43 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %42, i32 0, i32 3
  %44 = load i64*, i64** %13, align 8
  %45 = load i64*, i64** %12, align 8
  %46 = load i64*, i64** %13, align 8
  %47 = ptrtoint i64* %45 to i64
  %48 = ptrtoint i64* %46 to i64
  %49 = sub i64 %47, %48
  %50 = sdiv exact i64 %49, 8
  %51 = trunc i64 %50 to i32
  %52 = load i64*, i64** %17, align 8
  %53 = call i32 @tlsv1_record_receive(i32* %43, i64* %44, i32 %51, i64* %52, i64* %19, i64* %15)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %32
  %57 = load %struct.tlsv1_server*, %struct.tlsv1_server** %7, align 8
  %58 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.tlsv1_server*, %struct.tlsv1_server** %7, align 8
  %60 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %61 = load i64, i64* %15, align 8
  %62 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %59, i32 %60, i64 %61)
  store i32 -1, i32* %6, align 4
  br label %158

63:                                               ; preds = %32
  %64 = load i32, i32* %14, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = call i32 @wpa_printf(i32 %67, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.tlsv1_server*, %struct.tlsv1_server** %7, align 8
  %70 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %71 = load i64, i64* %15, align 8
  %72 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %69, i32 %70, i64 %71)
  store i32 -1, i32* %6, align 4
  br label %158

73:                                               ; preds = %63
  %74 = load i64, i64* %18, align 8
  %75 = load i64, i64* @TLS_CONTENT_TYPE_ALERT, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %117

77:                                               ; preds = %73
  %78 = load i64, i64* %19, align 8
  %79 = icmp ult i64 %78, 2
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load %struct.tlsv1_server*, %struct.tlsv1_server** %7, align 8
  %82 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %81, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.tlsv1_server*, %struct.tlsv1_server** %7, align 8
  %84 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %85 = load i64, i64* @TLS_ALERT_DECODE_ERROR, align 8
  %86 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %83, i32 %84, i64 %85)
  store i32 -1, i32* %6, align 4
  br label %158

87:                                               ; preds = %77
  %88 = load %struct.tlsv1_server*, %struct.tlsv1_server** %7, align 8
  %89 = load i64*, i64** %17, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** %17, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %91, i64 %94)
  %96 = load %struct.tlsv1_server*, %struct.tlsv1_server** %7, align 8
  %97 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = load i64*, i64** %17, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @TLS_ALERT_LEVEL_WARNING, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %87
  %106 = load i32, i32* %14, align 4
  %107 = load i64*, i64** %13, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  store i64* %109, i64** %13, align 8
  br label %28

110:                                              ; preds = %87
  %111 = load %struct.tlsv1_server*, %struct.tlsv1_server** %7, align 8
  %112 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %113 = load i64*, i64** %17, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %111, i32 %112, i64 %115)
  store i32 -1, i32* %6, align 4
  br label %158

117:                                              ; preds = %73
  %118 = load i64, i64* %18, align 8
  %119 = load i64, i64* @TLS_CONTENT_TYPE_APPLICATION_DATA, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %117
  %122 = load %struct.tlsv1_server*, %struct.tlsv1_server** %7, align 8
  %123 = load i64*, i64** %13, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %122, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %125)
  %127 = load %struct.tlsv1_server*, %struct.tlsv1_server** %7, align 8
  %128 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %129 = load i64, i64* @TLS_ALERT_UNEXPECTED_MESSAGE, align 8
  %130 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %127, i32 %128, i64 %129)
  store i32 -1, i32* %6, align 4
  br label %158

131:                                              ; preds = %117
  %132 = load i64, i64* %19, align 8
  %133 = load i64*, i64** %17, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 %132
  store i64* %134, i64** %17, align 8
  %135 = load i64*, i64** %17, align 8
  %136 = load i64*, i64** %16, align 8
  %137 = icmp ugt i64* %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %131
  %139 = load i32, i32* @MSG_DEBUG, align 4
  %140 = call i32 @wpa_printf(i32 %139, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0))
  %141 = load %struct.tlsv1_server*, %struct.tlsv1_server** %7, align 8
  %142 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %143 = load i64, i64* @TLS_ALERT_INTERNAL_ERROR, align 8
  %144 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %141, i32 %142, i64 %143)
  store i32 -1, i32* %6, align 4
  br label %158

145:                                              ; preds = %131
  %146 = load i32, i32* %14, align 4
  %147 = load i64*, i64** %13, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i64, i64* %147, i64 %148
  store i64* %149, i64** %13, align 8
  br label %28

150:                                              ; preds = %28
  %151 = load i64*, i64** %17, align 8
  %152 = load i64*, i64** %10, align 8
  %153 = ptrtoint i64* %151 to i64
  %154 = ptrtoint i64* %152 to i64
  %155 = sub i64 %153, %154
  %156 = sdiv exact i64 %155, 8
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %150, %138, %121, %110, %80, %66, %56
  %159 = load i32, i32* %6, align 4
  ret i32 %159
}

declare dso_local i32 @tlsv1_record_receive(i32*, i64*, i32, i64*, i64*, i64*) #1

declare dso_local i32 @tlsv1_server_log(%struct.tlsv1_server*, i8*, ...) #1

declare dso_local i32 @tlsv1_server_alert(%struct.tlsv1_server*, i32, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
