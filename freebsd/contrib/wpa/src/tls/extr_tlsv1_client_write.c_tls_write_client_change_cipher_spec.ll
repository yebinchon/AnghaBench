; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_write.c_tls_write_client_change_cipher_spec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_write.c_tls_write_client_change_cipher_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"TLSv1: Send ChangeCipherSpec\00", align 1
@TLS_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"TLSv1: Failed to create a record\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"TLSv1: Failed to set write cipher for record layer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_client*, i32**, i32*)* @tls_write_client_change_cipher_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_write_client_change_cipher_spec(%struct.tlsv1_client* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_client*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [1 x i32], align 4
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @TLS_CHANGE_CIPHER_SPEC, align 4
  %13 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  store i32 %12, i32* %13, align 4
  %14 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %15 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %14, i32 0, i32 0
  %16 = load i32, i32* @TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC, align 4
  %17 = load i32**, i32*** %6, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32**, i32*** %6, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = ptrtoint i32* %19 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %28 = call i64 @tlsv1_record_send(i32* %15, i32 %16, i32* %18, i32 %26, i32* %27, i32 4, i64* %8)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = call i32 @wpa_printf(i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %34 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %35 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %36 = call i32 @tls_alert(%struct.tlsv1_client* %33, i32 %34, i32 %35)
  store i32 -1, i32* %4, align 4
  br label %54

37:                                               ; preds = %3
  %38 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %39 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %38, i32 0, i32 0
  %40 = call i64 @tlsv1_record_change_write_cipher(i32* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i32, i32* @MSG_DEBUG, align 4
  %44 = call i32 @wpa_printf(i32 %43, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %46 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %47 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %48 = call i32 @tls_alert(%struct.tlsv1_client* %45, i32 %46, i32 %47)
  store i32 -1, i32* %4, align 4
  br label %54

49:                                               ; preds = %37
  %50 = load i64, i64* %8, align 8
  %51 = load i32**, i32*** %6, align 8
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 %50
  store i32* %53, i32** %51, align 8
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %49, %42, %30
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @tlsv1_record_send(i32*, i32, i32*, i32, i32*, i32, i64*) #1

declare dso_local i32 @tls_alert(%struct.tlsv1_client*, i32, i32) #1

declare dso_local i64 @tlsv1_record_change_write_cipher(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
