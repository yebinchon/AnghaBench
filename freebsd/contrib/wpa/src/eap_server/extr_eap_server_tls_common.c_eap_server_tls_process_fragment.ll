; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tls_common.c_eap_server_tls_process_fragment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tls_common.c_eap_server_tls_process_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_ssl_data = type { i32* }

@EAP_TLS_FLAGS_LENGTH_INCLUDED = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"SSL: No Message Length field in a fragmented packet\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"SSL: Too long TLS fragment (size over 64 kB)\00", align 1
@.str.2 = private unnamed_addr constant [87 x i8] c"SSL: Too much data (%d bytes) in first fragment of frame (TLS Message Length %d bytes)\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"SSL: No memory for message\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"SSL: Received %lu bytes in first fragment, waiting for %lu bytes more\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_ssl_data*, i32, i32, i32*, i64)* @eap_server_tls_process_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_server_tls_process_fragment(%struct.eap_ssl_data* %0, i32 %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_ssl_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.eap_ssl_data* %0, %struct.eap_ssl_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %13 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %5
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @EAP_TLS_FLAGS_LENGTH_INCLUDED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %73

24:                                               ; preds = %16, %5
  %25 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %26 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %72

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  %31 = icmp sgt i32 %30, 65536
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @MSG_INFO, align 4
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %73

35:                                               ; preds = %29
  %36 = load i64, i64* %11, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ugt i64 %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* @MSG_INFO, align 4
  %42 = load i64, i64* %11, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* %9, align 4
  %45 = call i32 (i32, i8*, ...) @wpa_printf(i32 %41, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %44)
  store i32 -1, i32* %6, align 4
  br label %73

46:                                               ; preds = %35
  %47 = load i32, i32* %9, align 4
  %48 = call i32* @wpabuf_alloc(i32 %47)
  %49 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %50 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %49, i32 0, i32 0
  store i32* %48, i32** %50, align 8
  %51 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %52 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = call i32 (i32, i8*, ...) @wpa_printf(i32 %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %73

58:                                               ; preds = %46
  %59 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %60 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @wpabuf_put_data(i32* %61, i32* %62, i64 %63)
  %65 = load i32, i32* @MSG_DEBUG, align 4
  %66 = load i64, i64* %11, align 8
  %67 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %68 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i64 @wpabuf_tailroom(i32* %69)
  %71 = call i32 (i32, i8*, ...) @wpa_printf(i32 %65, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0), i64 %66, i64 %70)
  br label %72

72:                                               ; preds = %58, %24
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %72, %55, %40, %32, %21
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_put_data(i32*, i32*, i64) #1

declare dso_local i64 @wpabuf_tailroom(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
