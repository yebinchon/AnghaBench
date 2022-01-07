; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls_common.c_eap_peer_tls_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls_common.c_eap_peer_tls_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ssl_data = type { i32, i32 }

@.str = private unnamed_addr constant [60 x i8] c"eap_tls_version=%s\0AEAP TLS cipher=%s\0Atls_session_reused=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_peer_tls_status(%struct.eap_sm* %0, %struct.eap_ssl_data* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_ssl_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [20 x i8], align 16
  %13 = alloca [128 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_ssl_data* %1, %struct.eap_ssl_data** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %16 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %17 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %20 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %23 = call i64 @tls_get_version(i32 %18, i32 %21, i8* %22, i32 20)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %26, align 16
  br label %27

27:                                               ; preds = %25, %5
  %28 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %29 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %32 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %35 = call i64 @tls_get_cipher(i32 %30, i32 %33, i8* %34, i32 128)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  store i8 0, i8* %38, align 16
  br label %39

39:                                               ; preds = %37, %27
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i64, i64* %10, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = sub i64 %44, %46
  %48 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %49 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %50 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %51 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %54 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @tls_connection_resumed(i32 %52, i32 %55)
  %57 = call i32 @os_snprintf(i8* %43, i64 %47, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %48, i8* %49, i32 %56)
  store i32 %57, i32* %15, align 4
  %58 = load i64, i64* %10, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = sub i64 %58, %60
  %62 = load i32, i32* %15, align 4
  %63 = call i64 @os_snprintf_error(i64 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %39
  %66 = load i32, i32* %14, align 4
  store i32 %66, i32* %6, align 4
  br label %72

67:                                               ; preds = %39
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %67, %65
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i64 @tls_get_version(i32, i32, i8*, i32) #1

declare dso_local i64 @tls_get_cipher(i32, i32, i8*, i32) #1

declare dso_local i32 @os_snprintf(i8*, i64, i8*, i8*, i8*, i32) #1

declare dso_local i32 @tls_connection_resumed(i32, i32) #1

declare dso_local i64 @os_snprintf_error(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
