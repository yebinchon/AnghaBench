; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_read.c_tls_process_certificate_status_ocsp_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_read.c_tls_process_certificate_status_ocsp_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"TLSv1: Too short OCSPResponse\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_DECODE_ERROR = common dso_local global i32 0, align 4
@TLS_OCSP_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"TLSv1: Truncated OCSPResponse\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_client*, i32*, i64)* @tls_process_certificate_status_ocsp_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_certificate_status_ocsp_response(%struct.tlsv1_client* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_client*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = ptrtoint i32* %13 to i64
  %16 = ptrtoint i32* %14 to i64
  %17 = sub i64 %15, %16
  %18 = sdiv exact i64 %17, 4
  %19 = icmp slt i64 %18, 3
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load i32, i32* @MSG_INFO, align 4
  %22 = call i32 @wpa_printf(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %24 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %25 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %26 = call i32 @tls_alert(%struct.tlsv1_client* %23, i32 %24, i32 %25)
  %27 = load i32, i32* @TLS_OCSP_INVALID, align 4
  store i32 %27, i32* %4, align 4
  br label %55

28:                                               ; preds = %3
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @WPA_GET_BE24(i32* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = ptrtoint i32* %33 to i64
  %36 = ptrtoint i32* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 4
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %28
  %43 = load i32, i32* @MSG_INFO, align 4
  %44 = call i32 @wpa_printf(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %46 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %47 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %48 = call i32 @tls_alert(%struct.tlsv1_client* %45, i32 %46, i32 %47)
  %49 = load i32, i32* @TLS_OCSP_INVALID, align 4
  store i32 %49, i32* %4, align 4
  br label %55

50:                                               ; preds = %28
  %51 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @tls_process_ocsp_response(%struct.tlsv1_client* %51, i32* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %50, %42, %20
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @tls_alert(%struct.tlsv1_client*, i32, i32) #1

declare dso_local i32 @WPA_GET_BE24(i32*) #1

declare dso_local i32 @tls_process_ocsp_response(%struct.tlsv1_client*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
