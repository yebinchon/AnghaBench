; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_read.c_tls_process_change_cipher_spec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_read.c_tls_process_change_cipher_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i32, i32 }

@TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"Expected ChangeCipherSpec; received content type 0x%x\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Too short ChangeCipherSpec\00", align 1
@TLS_ALERT_DECODE_ERROR = common dso_local global i32 0, align 4
@TLS_CHANGE_CIPHER_SPEC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"Expected ChangeCipherSpec; received data 0x%x\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Received ChangeCipherSpec\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"TLSv1: Failed to change read cipher for record layer\00", align 1
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@CLIENT_FINISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_server*, i64, i64*, i64*)* @tls_process_change_cipher_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_change_cipher_spec(%struct.tlsv1_server* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tlsv1_server*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %4
  %16 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %16, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %20 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %21 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %22 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %19, i32 %20, i32 %21)
  store i32 -1, i32* %5, align 4
  br label %76

23:                                               ; preds = %4
  %24 = load i64*, i64** %8, align 8
  store i64* %24, i64** %10, align 8
  %25 = load i64*, i64** %9, align 8
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = icmp ult i64 %27, 1
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %31 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %33 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %34 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %35 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %32, i32 %33, i32 %34)
  store i32 -1, i32* %5, align 4
  br label %76

36:                                               ; preds = %23
  %37 = load i64*, i64** %10, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TLS_CHANGE_CIPHER_SPEC, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %43 = load i64*, i64** %10, align 8
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %42, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %44)
  %46 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %47 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %48 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %49 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %46, i32 %47, i32 %48)
  store i32 -1, i32* %5, align 4
  br label %76

50:                                               ; preds = %36
  %51 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %52 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %53 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %54 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %53, i32 0, i32 1
  %55 = call i64 @tlsv1_record_change_read_cipher(i32* %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = call i32 @wpa_printf(i32 %58, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %60 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %61 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %62 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %63 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %60, i32 %61, i32 %62)
  store i32 -1, i32* %5, align 4
  br label %76

64:                                               ; preds = %50
  %65 = load i64*, i64** %10, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 1
  %67 = load i64*, i64** %8, align 8
  %68 = ptrtoint i64* %66 to i64
  %69 = ptrtoint i64* %67 to i64
  %70 = sub i64 %68, %69
  %71 = sdiv exact i64 %70, 8
  %72 = load i64*, i64** %9, align 8
  store i64 %71, i64* %72, align 8
  %73 = load i32, i32* @CLIENT_FINISHED, align 4
  %74 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %75 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %64, %57, %41, %29, %15
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @tlsv1_server_log(%struct.tlsv1_server*, i8*, ...) #1

declare dso_local i32 @tlsv1_server_alert(%struct.tlsv1_server*, i32, i32) #1

declare dso_local i64 @tlsv1_record_change_read_cipher(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
