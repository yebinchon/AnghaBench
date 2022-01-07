; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_wolfssl_tls_fail_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_wolfssl_tls_fail_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { %struct.tls_context* }
%struct.tls_context = type { i32, i32 (i32, i32, %union.tls_event_data*)* }
%union.tls_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i8*, %struct.wpabuf*, i32 }
%struct.wpabuf = type { i32 }

@TLS_FAIL_UNSPECIFIED = common dso_local global i32 0, align 4
@TLS_CERT_CHAIN_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tls_connection*, i32*, i32, i32, i8*, i8*, i32)* @wolfssl_tls_fail_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wolfssl_tls_fail_event(%struct.tls_connection* %0, i32* %1, i32 %2, i32 %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.tls_connection*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %union.tls_event_data, align 8
  %16 = alloca %struct.wpabuf*, align 8
  %17 = alloca %struct.tls_context*, align 8
  store %struct.tls_connection* %0, %struct.tls_connection** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  store %struct.wpabuf* null, %struct.wpabuf** %16, align 8
  %18 = load %struct.tls_connection*, %struct.tls_connection** %8, align 8
  %19 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %18, i32 0, i32 0
  %20 = load %struct.tls_context*, %struct.tls_context** %19, align 8
  store %struct.tls_context* %20, %struct.tls_context** %17, align 8
  %21 = load %struct.tls_context*, %struct.tls_context** %17, align 8
  %22 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %21, i32 0, i32 1
  %23 = load i32 (i32, i32, %union.tls_event_data*)*, i32 (i32, i32, %union.tls_event_data*)** %22, align 8
  %24 = icmp ne i32 (i32, i32, %union.tls_event_data*)* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %7
  br label %66

26:                                               ; preds = %7
  %27 = load i32*, i32** %9, align 8
  %28 = call %struct.wpabuf* @get_x509_cert(i32* %27)
  store %struct.wpabuf* %28, %struct.wpabuf** %16, align 8
  %29 = call i32 @os_memset(%union.tls_event_data* %15, i32 0, i32 32)
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* @TLS_FAIL_UNSPECIFIED, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %14, align 4
  br label %38

35:                                               ; preds = %26
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @wolfssl_tls_fail_reason(i32 %36)
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi i32 [ %34, %33 ], [ %37, %35 ]
  %40 = bitcast %union.tls_event_data* %15 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %11, align 4
  %43 = bitcast %union.tls_event_data* %15 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i8*, i8** %12, align 8
  %46 = bitcast %union.tls_event_data* %15 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i8*, i8** %13, align 8
  %50 = call i32 @wolfssl_tls_err_string(i32 %48, i8* %49)
  %51 = bitcast %union.tls_event_data* %15 to %struct.TYPE_2__*
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %54 = bitcast %union.tls_event_data* %15 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  store %struct.wpabuf* %53, %struct.wpabuf** %55, align 8
  %56 = load %struct.tls_context*, %struct.tls_context** %17, align 8
  %57 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %56, i32 0, i32 1
  %58 = load i32 (i32, i32, %union.tls_event_data*)*, i32 (i32, i32, %union.tls_event_data*)** %57, align 8
  %59 = load %struct.tls_context*, %struct.tls_context** %17, align 8
  %60 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @TLS_CERT_CHAIN_FAILURE, align 4
  %63 = call i32 %58(i32 %61, i32 %62, %union.tls_event_data* %15)
  %64 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %65 = call i32 @wpabuf_free(%struct.wpabuf* %64)
  br label %66

66:                                               ; preds = %38, %25
  ret void
}

declare dso_local %struct.wpabuf* @get_x509_cert(i32*) #1

declare dso_local i32 @os_memset(%union.tls_event_data*, i32, i32) #1

declare dso_local i32 @wolfssl_tls_fail_reason(i32) #1

declare dso_local i32 @wolfssl_tls_err_string(i32, i8*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
