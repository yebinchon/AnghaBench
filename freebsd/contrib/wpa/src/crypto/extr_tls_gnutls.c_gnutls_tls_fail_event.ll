; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_gnutls.c_gnutls_tls_fail_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_gnutls.c_gnutls_tls_fail_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { %struct.tls_global* }
%struct.tls_global = type { i32, i32 (i32, i32, %union.tls_event_data*)* }
%union.tls_event_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8*, i32, i8*, %struct.wpabuf* }
%struct.wpabuf = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TLS_CERT_CHAIN_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tls_connection*, %struct.TYPE_5__*, i32, i8*, i8*, i32)* @gnutls_tls_fail_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gnutls_tls_fail_event(%struct.tls_connection* %0, %struct.TYPE_5__* %1, i32 %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.tls_connection*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.tls_event_data, align 8
  %14 = alloca %struct.tls_global*, align 8
  %15 = alloca %struct.wpabuf*, align 8
  store %struct.tls_connection* %0, %struct.tls_connection** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.tls_connection*, %struct.tls_connection** %7, align 8
  %17 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %16, i32 0, i32 0
  %18 = load %struct.tls_global*, %struct.tls_global** %17, align 8
  store %struct.tls_global* %18, %struct.tls_global** %14, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %15, align 8
  %19 = load %struct.tls_global*, %struct.tls_global** %14, align 8
  %20 = getelementptr inbounds %struct.tls_global, %struct.tls_global* %19, i32 0, i32 1
  %21 = load i32 (i32, i32, %union.tls_event_data*)*, i32 (i32, i32, %union.tls_event_data*)** %20, align 8
  %22 = icmp eq i32 (i32, i32, %union.tls_event_data*)* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  br label %68

24:                                               ; preds = %6
  %25 = call i32 @os_memset(%union.tls_event_data* %13, i32 0, i32 40)
  %26 = load i32, i32* %9, align 4
  %27 = bitcast %union.tls_event_data* %13 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i8*, i8** %10, align 8
  br label %34

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i8* [ %32, %31 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %33 ]
  %36 = bitcast %union.tls_event_data* %13 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %12, align 4
  %39 = bitcast %union.tls_event_data* %13 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = bitcast %union.tls_event_data* %13 to %struct.TYPE_4__*
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = icmp ne %struct.TYPE_5__* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %34
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.wpabuf* @wpabuf_alloc_copy(i32 %49, i32 %52)
  store %struct.wpabuf* %53, %struct.wpabuf** %15, align 8
  %54 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %55 = bitcast %union.tls_event_data* %13 to %struct.TYPE_4__*
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 4
  store %struct.wpabuf* %54, %struct.wpabuf** %56, align 8
  br label %57

57:                                               ; preds = %46, %34
  %58 = load %struct.tls_global*, %struct.tls_global** %14, align 8
  %59 = getelementptr inbounds %struct.tls_global, %struct.tls_global* %58, i32 0, i32 1
  %60 = load i32 (i32, i32, %union.tls_event_data*)*, i32 (i32, i32, %union.tls_event_data*)** %59, align 8
  %61 = load %struct.tls_global*, %struct.tls_global** %14, align 8
  %62 = getelementptr inbounds %struct.tls_global, %struct.tls_global* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @TLS_CERT_CHAIN_FAILURE, align 4
  %65 = call i32 %60(i32 %63, i32 %64, %union.tls_event_data* %13)
  %66 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %67 = call i32 @wpabuf_free(%struct.wpabuf* %66)
  br label %68

68:                                               ; preds = %57, %23
  ret void
}

declare dso_local i32 @os_memset(%union.tls_event_data*, i32, i32) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc_copy(i32, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
