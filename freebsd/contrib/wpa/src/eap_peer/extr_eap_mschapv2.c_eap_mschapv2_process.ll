; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_mschapv2.c_eap_mschapv2_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_mschapv2.c_eap_mschapv2_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_method_ret = type { i8* }
%struct.wpabuf = type { i32 }
%struct.eap_mschapv2_data = type { i64, %struct.wpabuf* }
%struct.eap_peer_config = type { i64 }
%struct.eap_mschapv2_hdr = type { i32, i32 }

@TRUE = common dso_local global i8* null, align 8
@ERROR_AUTHENTICATION_FAILURE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"EAP-MSCHAPV2: Replacing pending packet with the previous challenge\00", align 1
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_MSCHAPV2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"EAP-MSCHAPV2: RX identifier %d mschapv2_id %d\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"EAP-MSCHAPV2: Unknown op %d - ignored\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, %struct.eap_method_ret*, %struct.wpabuf*)* @eap_mschapv2_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_mschapv2_process(%struct.eap_sm* %0, i8* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.eap_method_ret*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.eap_mschapv2_data*, align 8
  %11 = alloca %struct.eap_peer_config*, align 8
  %12 = alloca %struct.eap_mschapv2_hdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %8, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.eap_mschapv2_data*
  store %struct.eap_mschapv2_data* %18, %struct.eap_mschapv2_data** %10, align 8
  %19 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %20 = call %struct.eap_peer_config* @eap_get_config(%struct.eap_sm* %19)
  store %struct.eap_peer_config* %20, %struct.eap_peer_config** %11, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %22 = call i64 @eap_mschapv2_check_config(%struct.eap_sm* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i8*, i8** @TRUE, align 8
  %26 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %27 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %130

28:                                               ; preds = %4
  %29 = load %struct.eap_peer_config*, %struct.eap_peer_config** %11, align 8
  %30 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %28
  %34 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %10, align 8
  %35 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %34, i32 0, i32 1
  %36 = load %struct.wpabuf*, %struct.wpabuf** %35, align 8
  %37 = icmp ne %struct.wpabuf* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %10, align 8
  %40 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ERROR_AUTHENTICATION_FAILURE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = call i32 (i32, i8*, ...) @wpa_printf(i32 %45, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %10, align 8
  %48 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %47, i32 0, i32 1
  %49 = load %struct.wpabuf*, %struct.wpabuf** %48, align 8
  store %struct.wpabuf* %49, %struct.wpabuf** %9, align 8
  store i32 1, i32* %13, align 4
  %50 = load %struct.eap_peer_config*, %struct.eap_peer_config** %11, align 8
  %51 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %44, %38, %33, %28
  %53 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %54 = load i32, i32* @EAP_TYPE_MSCHAPV2, align 4
  %55 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %56 = call i32* @eap_hdr_validate(i32 %53, i32 %54, %struct.wpabuf* %55, i64* %15)
  store i32* %56, i32** %14, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = load i64, i64* %15, align 8
  %61 = icmp ult i64 %60, 9
  br i1 %61, label %62, label %66

62:                                               ; preds = %59, %52
  %63 = load i8*, i8** @TRUE, align 8
  %64 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %65 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %130

66:                                               ; preds = %59
  %67 = load i32*, i32** %14, align 8
  %68 = bitcast i32* %67 to %struct.eap_mschapv2_hdr*
  store %struct.eap_mschapv2_hdr* %68, %struct.eap_mschapv2_hdr** %12, align 8
  %69 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %70 = load i64, i64* %15, align 8
  %71 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %12, align 8
  %72 = call i64 @eap_mschapv2_check_mslen(%struct.eap_sm* %69, i64 %70, %struct.eap_mschapv2_hdr* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load i8*, i8** @TRUE, align 8
  %76 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %77 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %130

78:                                               ; preds = %66
  %79 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %80 = call i32 @eap_get_id(%struct.wpabuf* %79)
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* @MSG_DEBUG, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %12, align 8
  %84 = getelementptr inbounds %struct.eap_mschapv2_hdr, %struct.eap_mschapv2_hdr* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, ...) @wpa_printf(i32 %81, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %85)
  %87 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %12, align 8
  %88 = getelementptr inbounds %struct.eap_mschapv2_hdr, %struct.eap_mschapv2_hdr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  switch i32 %89, label %121 [
    i32 130, label %90
    i32 128, label %105
    i32 129, label %113
  ]

90:                                               ; preds = %78
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %10, align 8
  %95 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %96 = call i32 @eap_mschapv2_copy_challenge(%struct.eap_mschapv2_data* %94, %struct.wpabuf* %95)
  br label %97

97:                                               ; preds = %93, %90
  %98 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %99 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %10, align 8
  %100 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %101 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %12, align 8
  %102 = load i64, i64* %15, align 8
  %103 = load i32, i32* %16, align 4
  %104 = call %struct.wpabuf* @eap_mschapv2_challenge(%struct.eap_sm* %98, %struct.eap_mschapv2_data* %99, %struct.eap_method_ret* %100, %struct.eap_mschapv2_hdr* %101, i64 %102, i32 %103)
  store %struct.wpabuf* %104, %struct.wpabuf** %5, align 8
  br label %130

105:                                              ; preds = %78
  %106 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %107 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %10, align 8
  %108 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %109 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %12, align 8
  %110 = load i64, i64* %15, align 8
  %111 = load i32, i32* %16, align 4
  %112 = call %struct.wpabuf* @eap_mschapv2_success(%struct.eap_sm* %106, %struct.eap_mschapv2_data* %107, %struct.eap_method_ret* %108, %struct.eap_mschapv2_hdr* %109, i64 %110, i32 %111)
  store %struct.wpabuf* %112, %struct.wpabuf** %5, align 8
  br label %130

113:                                              ; preds = %78
  %114 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %115 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %10, align 8
  %116 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %117 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %12, align 8
  %118 = load i64, i64* %15, align 8
  %119 = load i32, i32* %16, align 4
  %120 = call %struct.wpabuf* @eap_mschapv2_failure(%struct.eap_sm* %114, %struct.eap_mschapv2_data* %115, %struct.eap_method_ret* %116, %struct.eap_mschapv2_hdr* %117, i64 %118, i32 %119)
  store %struct.wpabuf* %120, %struct.wpabuf** %5, align 8
  br label %130

121:                                              ; preds = %78
  %122 = load i32, i32* @MSG_INFO, align 4
  %123 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %12, align 8
  %124 = getelementptr inbounds %struct.eap_mschapv2_hdr, %struct.eap_mschapv2_hdr* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32, i8*, ...) @wpa_printf(i32 %122, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  %127 = load i8*, i8** @TRUE, align 8
  %128 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %129 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %128, i32 0, i32 0
  store i8* %127, i8** %129, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %130

130:                                              ; preds = %121, %113, %105, %97, %74, %62, %24
  %131 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %131
}

declare dso_local %struct.eap_peer_config* @eap_get_config(%struct.eap_sm*) #1

declare dso_local i64 @eap_mschapv2_check_config(%struct.eap_sm*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i64 @eap_mschapv2_check_mslen(%struct.eap_sm*, i64, %struct.eap_mschapv2_hdr*) #1

declare dso_local i32 @eap_get_id(%struct.wpabuf*) #1

declare dso_local i32 @eap_mschapv2_copy_challenge(%struct.eap_mschapv2_data*, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @eap_mschapv2_challenge(%struct.eap_sm*, %struct.eap_mschapv2_data*, %struct.eap_method_ret*, %struct.eap_mschapv2_hdr*, i64, i32) #1

declare dso_local %struct.wpabuf* @eap_mschapv2_success(%struct.eap_sm*, %struct.eap_mschapv2_data*, %struct.eap_method_ret*, %struct.eap_mschapv2_hdr*, i64, i32) #1

declare dso_local %struct.wpabuf* @eap_mschapv2_failure(%struct.eap_sm*, %struct.eap_mschapv2_data*, %struct.eap_method_ret*, %struct.eap_mschapv2_hdr*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
