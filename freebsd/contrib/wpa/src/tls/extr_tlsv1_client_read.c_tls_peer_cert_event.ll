; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_read.c_tls_peer_cert_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_read.c_tls_peer_cert_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32, i32 (i32, i32, %union.tls_event_data*)*, i64, %struct.TYPE_3__* }
%union.tls_event_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i8*, i32*, %struct.wpabuf* }
%struct.wpabuf = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.x509_certificate = type { i32, i32, i32 }

@TLS_PEER_CERTIFICATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tlsv1_client*, i32, %struct.x509_certificate*)* @tls_peer_cert_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_peer_cert_event(%struct.tlsv1_client* %0, i32 %1, %struct.x509_certificate* %2) #0 {
  %4 = alloca %struct.tlsv1_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.x509_certificate*, align 8
  %7 = alloca %union.tls_event_data, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca [128 x i8], align 16
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.x509_certificate* %2, %struct.x509_certificate** %6, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %8, align 8
  %10 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %11 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %10, i32 0, i32 1
  %12 = load i32 (i32, i32, %union.tls_event_data*)*, i32 (i32, i32, %union.tls_event_data*)** %11, align 8
  %13 = icmp ne i32 (i32, i32, %union.tls_event_data*)* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %65

15:                                               ; preds = %3
  %16 = call i32 @os_memset(%union.tls_event_data* %7, i32 0, i32 32)
  %17 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %18 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %17, i32 0, i32 3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %23 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %22, i32 0, i32 3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %21, %15
  %29 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %30 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28, %21
  %34 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %35 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %38 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.wpabuf* @wpabuf_alloc_copy(i32 %36, i32 %39)
  store %struct.wpabuf* %40, %struct.wpabuf** %8, align 8
  %41 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %42 = bitcast %union.tls_event_data* %7 to %struct.TYPE_4__*
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  store %struct.wpabuf* %41, %struct.wpabuf** %43, align 8
  br label %44

44:                                               ; preds = %33, %28
  %45 = load i32, i32* %5, align 4
  %46 = bitcast %union.tls_event_data* %7 to %struct.TYPE_4__*
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %49 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %48, i32 0, i32 0
  %50 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %51 = call i32 @x509_name_string(i32* %49, i8* %50, i32 128)
  %52 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %53 = bitcast %union.tls_event_data* %7 to %struct.TYPE_4__*
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %56 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %55, i32 0, i32 1
  %57 = load i32 (i32, i32, %union.tls_event_data*)*, i32 (i32, i32, %union.tls_event_data*)** %56, align 8
  %58 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %59 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @TLS_PEER_CERTIFICATE, align 4
  %62 = call i32 %57(i32 %60, i32 %61, %union.tls_event_data* %7)
  %63 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %64 = call i32 @wpabuf_free(%struct.wpabuf* %63)
  br label %65

65:                                               ; preds = %44, %14
  ret void
}

declare dso_local i32 @os_memset(%union.tls_event_data*, i32, i32) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc_copy(i32, i32) #1

declare dso_local i32 @x509_name_string(i32*, i8*, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
