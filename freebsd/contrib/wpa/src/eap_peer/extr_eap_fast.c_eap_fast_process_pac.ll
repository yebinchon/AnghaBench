; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_process_pac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_process_pac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_fast_data = type { i64, i64, i64, i32, i64, i32, i32 }
%struct.eap_method_ret = type { i32, i8* }
%struct.eap_peer_config = type { i32 }
%struct.eap_fast_pac = type { i32 }

@DECISION_FAIL = common dso_local global i8* null, align 8
@DECISION_COND_SUCC = common dso_local global i8* null, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"EAP-FAST: Send PAC-Acknowledgement TLV - Provisioning completed successfully\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"EAP-FAST: Send PAC-Acknowledgement TLV - PAC refreshing completed successfully\00", align 1
@METHOD_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_fast_data*, %struct.eap_method_ret*, i32*, i64)* @eap_fast_process_pac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_fast_process_pac(%struct.eap_sm* %0, %struct.eap_fast_data* %1, %struct.eap_method_ret* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_fast_data*, align 8
  %9 = alloca %struct.eap_method_ret*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.eap_peer_config*, align 8
  %13 = alloca %struct.eap_fast_pac, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_fast_data* %1, %struct.eap_fast_data** %8, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %15 = call %struct.eap_peer_config* @eap_get_config(%struct.eap_sm* %14)
  store %struct.eap_peer_config* %15, %struct.eap_peer_config** %12, align 8
  %16 = call i32 @os_memset(%struct.eap_fast_pac* %13, i32 0, i32 4)
  %17 = load i32*, i32** %10, align 8
  %18 = load i64, i64* %11, align 8
  %19 = call i64 @eap_fast_process_pac_tlv(%struct.eap_fast_pac* %13, i32* %17, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = call i64 @eap_fast_process_pac_info(%struct.eap_fast_pac* %13)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %5
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  br label %96

25:                                               ; preds = %21
  %26 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %27 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %26, i32 0, i32 3
  %28 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %29 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %28, i32 0, i32 6
  %30 = call i32 @eap_fast_add_pac(i32* %27, i32* %29, %struct.eap_fast_pac* %13)
  %31 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %32 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %35 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @eap_fast_pac_list_truncate(i32 %33, i32 %36)
  %38 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %39 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %25
  %43 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %44 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %45 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.eap_peer_config*, %struct.eap_peer_config** %12, align 8
  %48 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @eap_fast_save_pac_bin(%struct.eap_sm* %43, i32 %46, i32 %49)
  br label %60

51:                                               ; preds = %25
  %52 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %53 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %54 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.eap_peer_config*, %struct.eap_peer_config** %12, align 8
  %57 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @eap_fast_save_pac(%struct.eap_sm* %52, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %51, %42
  %61 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %62 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %60
  %66 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %67 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %72 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = load i8*, i8** @DECISION_FAIL, align 8
  %74 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %75 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  br label %80

76:                                               ; preds = %65
  %77 = load i8*, i8** @DECISION_COND_SUCC, align 8
  %78 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %79 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  br label %80

80:                                               ; preds = %76, %70
  %81 = load i32, i32* @MSG_DEBUG, align 4
  %82 = call i32 @wpa_printf(i32 %81, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %83 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %84 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %83, i32 0, i32 0
  store i32 1, i32* %84, align 4
  br label %91

85:                                               ; preds = %60
  %86 = load i32, i32* @MSG_DEBUG, align 4
  %87 = call i32 @wpa_printf(i32 %86, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i8*, i8** @DECISION_COND_SUCC, align 8
  %89 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %90 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  br label %91

91:                                               ; preds = %85, %80
  %92 = load i32, i32* @METHOD_DONE, align 4
  %93 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %94 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = call %struct.wpabuf* (...) @eap_fast_tlv_pac_ack()
  store %struct.wpabuf* %95, %struct.wpabuf** %6, align 8
  br label %96

96:                                               ; preds = %91, %24
  %97 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  ret %struct.wpabuf* %97
}

declare dso_local %struct.eap_peer_config* @eap_get_config(%struct.eap_sm*) #1

declare dso_local i32 @os_memset(%struct.eap_fast_pac*, i32, i32) #1

declare dso_local i64 @eap_fast_process_pac_tlv(%struct.eap_fast_pac*, i32*, i64) #1

declare dso_local i64 @eap_fast_process_pac_info(%struct.eap_fast_pac*) #1

declare dso_local i32 @eap_fast_add_pac(i32*, i32*, %struct.eap_fast_pac*) #1

declare dso_local i32 @eap_fast_pac_list_truncate(i32, i32) #1

declare dso_local i32 @eap_fast_save_pac_bin(%struct.eap_sm*, i32, i32) #1

declare dso_local i32 @eap_fast_save_pac(%struct.eap_sm*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @eap_fast_tlv_pac_ack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
