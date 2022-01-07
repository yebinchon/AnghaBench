; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_read.c_tls_cert_chain_failure_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_read.c_tls_cert_chain_failure_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32, i32 (i32, i32, %union.tls_event_data*)* }
%union.tls_event_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i8*, %struct.wpabuf* }
%struct.wpabuf = type { i32 }
%struct.x509_certificate = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i8* }

@TLS_CERT_CHAIN_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tlsv1_client*, i32, %struct.x509_certificate*, i32, i8*)* @tls_cert_chain_failure_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_cert_chain_failure_event(%struct.tlsv1_client* %0, i32 %1, %struct.x509_certificate* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.tlsv1_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.x509_certificate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca %union.tls_event_data, align 8
  %13 = alloca [128 x i8], align 16
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.x509_certificate* %2, %struct.x509_certificate** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %11, align 8
  %14 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %15 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %14, i32 0, i32 1
  %16 = load i32 (i32, i32, %union.tls_event_data*)*, i32 (i32, i32, %union.tls_event_data*)** %15, align 8
  %17 = icmp ne i32 (i32, i32, %union.tls_event_data*)* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %20 = icmp ne %struct.x509_certificate* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %5
  br label %60

22:                                               ; preds = %18
  %23 = call i32 @os_memset(%union.tls_event_data* %12, i32 0, i32 24)
  %24 = load i32, i32* %7, align 4
  %25 = bitcast %union.tls_event_data* %12 to %struct.TYPE_4__*
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %28 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %27, i32 0, i32 2
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %30 = call i32 @x509_name_string(i32* %28, i8* %29, i32 128)
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %32 = bitcast %union.tls_event_data* %12 to %struct.TYPE_3__*
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %9, align 4
  %35 = bitcast %union.tls_event_data* %12 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = bitcast %union.tls_event_data* %12 to %struct.TYPE_4__*
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %41 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %44 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.wpabuf* @wpabuf_alloc_copy(i32 %42, i32 %45)
  store %struct.wpabuf* %46, %struct.wpabuf** %11, align 8
  %47 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %48 = bitcast %union.tls_event_data* %12 to %struct.TYPE_4__*
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  store %struct.wpabuf* %47, %struct.wpabuf** %49, align 8
  %50 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %51 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %50, i32 0, i32 1
  %52 = load i32 (i32, i32, %union.tls_event_data*)*, i32 (i32, i32, %union.tls_event_data*)** %51, align 8
  %53 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %54 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @TLS_CERT_CHAIN_FAILURE, align 4
  %57 = call i32 %52(i32 %55, i32 %56, %union.tls_event_data* %12)
  %58 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %59 = call i32 @wpabuf_free(%struct.wpabuf* %58)
  br label %60

60:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @os_memset(%union.tls_event_data*, i32, i32) #1

declare dso_local i32 @x509_name_string(i32*, i8*, i32) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc_copy(i32, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
