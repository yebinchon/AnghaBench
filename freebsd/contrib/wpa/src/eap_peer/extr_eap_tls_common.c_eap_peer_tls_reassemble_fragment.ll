; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls_common.c_eap_peer_tls_reassemble_fragment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls_common.c_eap_peer_tls_reassemble_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_ssl_data = type { i64, %struct.wpabuf* }
%struct.wpabuf = type { i32 }

@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"SSL: Invalid reassembly state: tls_in_left=%lu tls_in_len=%lu in_len=%lu\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"SSL: Too long TLS fragment (size over 64 kB)\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"SSL: more data than TLS message length indicated\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"SSL: Could not allocate memory for TLS data\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"SSL: Need %lu bytes more input data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_ssl_data*, %struct.wpabuf*)* @eap_peer_tls_reassemble_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_peer_tls_reassemble_fragment(%struct.eap_ssl_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eap_ssl_data*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.eap_ssl_data* %0, %struct.eap_ssl_data** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %8 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %4, align 8
  %9 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %8, i32 0, i32 1
  %10 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %11 = icmp ne %struct.wpabuf* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %4, align 8
  %14 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %13, i32 0, i32 1
  %15 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %16 = call i64 @wpabuf_len(%struct.wpabuf* %15)
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %12
  %19 = phi i64 [ %16, %12 ], [ 0, %17 ]
  store i64 %19, i64* %6, align 8
  %20 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %21 = icmp ne %struct.wpabuf* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %24 = call i64 @wpabuf_len(%struct.wpabuf* %23)
  br label %26

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %22
  %27 = phi i64 [ %24, %22 ], [ 0, %25 ]
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %28, %29
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load i32, i32* @MSG_WARNING, align 4
  %34 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %4, align 8
  %35 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %37, i64 %38)
  %40 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %4, align 8
  %41 = call i32 @eap_peer_tls_reset_input(%struct.eap_ssl_data* %40)
  store i32 -1, i32* %3, align 4
  br label %100

42:                                               ; preds = %26
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %43, %44
  %46 = icmp ugt i64 %45, 65536
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32, i32* @MSG_INFO, align 4
  %49 = call i32 (i32, i8*, ...) @wpa_printf(i32 %48, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %4, align 8
  %51 = call i32 @eap_peer_tls_reset_input(%struct.eap_ssl_data* %50)
  store i32 -1, i32* %3, align 4
  br label %100

52:                                               ; preds = %42
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %4, align 8
  %55 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ugt i64 %53, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load i32, i32* @MSG_INFO, align 4
  %60 = call i32 (i32, i8*, ...) @wpa_printf(i32 %59, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %4, align 8
  %62 = call i32 @eap_peer_tls_reset_input(%struct.eap_ssl_data* %61)
  store i32 -1, i32* %3, align 4
  br label %100

63:                                               ; preds = %52
  %64 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %4, align 8
  %65 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %64, i32 0, i32 1
  %66 = load i64, i64* %7, align 8
  %67 = call i64 @wpabuf_resize(%struct.wpabuf** %65, i64 %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load i32, i32* @MSG_INFO, align 4
  %71 = call i32 (i32, i8*, ...) @wpa_printf(i32 %70, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %72 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %4, align 8
  %73 = call i32 @eap_peer_tls_reset_input(%struct.eap_ssl_data* %72)
  store i32 -1, i32* %3, align 4
  br label %100

74:                                               ; preds = %63
  %75 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %76 = icmp ne %struct.wpabuf* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %4, align 8
  %79 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %78, i32 0, i32 1
  %80 = load %struct.wpabuf*, %struct.wpabuf** %79, align 8
  %81 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %82 = call i32 @wpabuf_put_buf(%struct.wpabuf* %80, %struct.wpabuf* %81)
  br label %83

83:                                               ; preds = %77, %74
  %84 = load i64, i64* %7, align 8
  %85 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %4, align 8
  %86 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub i64 %87, %84
  store i64 %88, i64* %86, align 8
  %89 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %4, align 8
  %90 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ugt i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %83
  %94 = load i32, i32* @MSG_DEBUG, align 4
  %95 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %4, align 8
  %96 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (i32, i8*, ...) @wpa_printf(i32 %94, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %97)
  store i32 1, i32* %3, align 4
  br label %100

99:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %93, %69, %58, %47, %32
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eap_peer_tls_reset_input(%struct.eap_ssl_data*) #1

declare dso_local i64 @wpabuf_resize(%struct.wpabuf**, i64) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
