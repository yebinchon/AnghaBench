; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls_common.c_eap_peer_tls_derive_session_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls_common.c_eap_peer_tls_derive_session_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ssl_data = type { i32, i64 }
%struct.tls_random = type { i64*, i64*, i32, i32 }

@EAP_TYPE_TLS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"EXPORTER_EAP_TLS_Method-Id\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @eap_peer_tls_derive_session_id(%struct.eap_sm* %0, %struct.eap_ssl_data* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca %struct.eap_ssl_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.tls_random, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca [1 x i64], align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store %struct.eap_ssl_data* %1, %struct.eap_ssl_data** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @EAP_TYPE_TLS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %54

18:                                               ; preds = %4
  %19 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %20 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %54

23:                                               ; preds = %18
  %24 = getelementptr inbounds [1 x i64], [1 x i64]* %14, i64 0, i64 0
  %25 = load i64, i64* @EAP_TYPE_TLS, align 8
  store i64 %25, i64* %24, align 8
  %26 = load i64*, i64** %9, align 8
  store i64 65, i64* %26, align 8
  %27 = load i64*, i64** %9, align 8
  %28 = load i64, i64* %27, align 8
  %29 = call i64* @os_malloc(i64 %28)
  store i64* %29, i64** %12, align 8
  %30 = load i64*, i64** %12, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  store i64* null, i64** %5, align 8
  br label %110

33:                                               ; preds = %23
  %34 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %35 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %36 = getelementptr inbounds [1 x i64], [1 x i64]* %14, i64 0, i64 0
  %37 = call i64* @eap_peer_tls_derive_key(%struct.eap_sm* %34, %struct.eap_ssl_data* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64* %36, i32 1, i32 64)
  store i64* %37, i64** %13, align 8
  %38 = load i64*, i64** %13, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i64*, i64** %12, align 8
  %42 = call i32 @os_free(i64* %41)
  store i64* null, i64** %5, align 8
  br label %110

43:                                               ; preds = %33
  %44 = load i64, i64* %8, align 8
  %45 = load i64*, i64** %12, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  store i64 %44, i64* %46, align 8
  %47 = load i64*, i64** %12, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  %49 = load i64*, i64** %13, align 8
  %50 = call i32 @os_memcpy(i64* %48, i64* %49, i32 64)
  %51 = load i64*, i64** %13, align 8
  %52 = call i32 @os_free(i64* %51)
  %53 = load i64*, i64** %12, align 8
  store i64* %53, i64** %5, align 8
  br label %110

54:                                               ; preds = %18, %4
  %55 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %56 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %59 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @tls_connection_get_random(i32 %57, i32 %60, %struct.tls_random* %10)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.tls_random, %struct.tls_random* %10, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = icmp eq i64* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.tls_random, %struct.tls_random* %10, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = icmp eq i64* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %67, %63, %54
  store i64* null, i64** %5, align 8
  br label %110

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.tls_random, %struct.tls_random* %10, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 1, %74
  %76 = getelementptr inbounds %struct.tls_random, %struct.tls_random* %10, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %75, %77
  %79 = sext i32 %78 to i64
  %80 = load i64*, i64** %9, align 8
  store i64 %79, i64* %80, align 8
  %81 = load i64*, i64** %9, align 8
  %82 = load i64, i64* %81, align 8
  %83 = call i64* @os_malloc(i64 %82)
  store i64* %83, i64** %11, align 8
  %84 = load i64*, i64** %11, align 8
  %85 = icmp eq i64* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %72
  store i64* null, i64** %5, align 8
  br label %110

87:                                               ; preds = %72
  %88 = load i64, i64* %8, align 8
  %89 = load i64*, i64** %11, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 0
  store i64 %88, i64* %90, align 8
  %91 = load i64*, i64** %11, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 1
  %93 = getelementptr inbounds %struct.tls_random, %struct.tls_random* %10, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds %struct.tls_random, %struct.tls_random* %10, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @os_memcpy(i64* %92, i64* %94, i32 %96)
  %98 = load i64*, i64** %11, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 1
  %100 = getelementptr inbounds %struct.tls_random, %struct.tls_random* %10, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %99, i64 %102
  %104 = getelementptr inbounds %struct.tls_random, %struct.tls_random* %10, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = getelementptr inbounds %struct.tls_random, %struct.tls_random* %10, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @os_memcpy(i64* %103, i64* %105, i32 %107)
  %109 = load i64*, i64** %11, align 8
  store i64* %109, i64** %5, align 8
  br label %110

110:                                              ; preds = %87, %86, %71, %43, %40, %32
  %111 = load i64*, i64** %5, align 8
  ret i64* %111
}

declare dso_local i64* @os_malloc(i64) #1

declare dso_local i64* @eap_peer_tls_derive_key(%struct.eap_sm*, %struct.eap_ssl_data*, i8*, i64*, i32, i32) #1

declare dso_local i32 @os_free(i64*) #1

declare dso_local i32 @os_memcpy(i64*, i64*, i32) #1

declare dso_local i64 @tls_connection_get_random(i32, i32, %struct.tls_random*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
