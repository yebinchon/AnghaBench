; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls_common.c_eap_peer_tls_ssl_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls_common.c_eap_peer_tls_ssl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i64, i64, i64 }
%struct.eap_ssl_data = type { i32, i32, i64, i64, i32, %struct.eap_sm* }
%struct.eap_peer_config = type { i32, i64 }
%struct.tls_connection_params = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"include_tls_length=1\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"TLS: Include TLS Message Length in unfragmented packets\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_peer_tls_ssl_init(%struct.eap_sm* %0, %struct.eap_ssl_data* %1, %struct.eap_peer_config* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca %struct.eap_ssl_data*, align 8
  %8 = alloca %struct.eap_peer_config*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tls_connection_params, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store %struct.eap_ssl_data* %1, %struct.eap_ssl_data** %7, align 8
  store %struct.eap_peer_config* %2, %struct.eap_peer_config** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %12 = icmp eq %struct.eap_peer_config* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %101

14:                                               ; preds = %4
  %15 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %16 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %17 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %16, i32 0, i32 5
  store %struct.eap_sm* %15, %struct.eap_sm** %17, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %20 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %22 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %25 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %27 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %14
  %31 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %32 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %37 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  br label %43

39:                                               ; preds = %30, %14
  %40 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %41 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i64 [ %38, %35 ], [ %42, %39 ]
  %45 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %46 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %45, i32 0, i32 3
  store i64 %44, i64* %46, align 8
  %47 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %48 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %49 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %50 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %51 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @eap_tls_params_from_conf(%struct.eap_sm* %47, %struct.eap_ssl_data* %48, %struct.tls_connection_params* %10, %struct.eap_peer_config* %49, i64 %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  store i32 -1, i32* %5, align 4
  br label %101

56:                                               ; preds = %43
  %57 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %58 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %59 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %60 = call i64 @eap_tls_init_connection(%struct.eap_sm* %57, %struct.eap_ssl_data* %58, %struct.eap_peer_config* %59, %struct.tls_connection_params* %10)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 -1, i32* %5, align 4
  br label %101

63:                                               ; preds = %56
  %64 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %65 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %68 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %70 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %63
  %74 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %75 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sgt i32 %76, 100
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %80 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, 100
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %78, %73
  br label %84

84:                                               ; preds = %83, %63
  %85 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %86 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %91 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @os_strstr(i64 %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load i32, i32* @MSG_DEBUG, align 4
  %97 = call i32 @wpa_printf(i32 %96, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %98 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %99 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %98, i32 0, i32 1
  store i32 1, i32* %99, align 4
  br label %100

100:                                              ; preds = %95, %89, %84
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %100, %62, %55, %13
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i64 @eap_tls_params_from_conf(%struct.eap_sm*, %struct.eap_ssl_data*, %struct.tls_connection_params*, %struct.eap_peer_config*, i64) #1

declare dso_local i64 @eap_tls_init_connection(%struct.eap_sm*, %struct.eap_ssl_data*, %struct.eap_peer_config*, %struct.tls_connection_params*) #1

declare dso_local i64 @os_strstr(i64, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
