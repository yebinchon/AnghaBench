; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_process_pac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_process_pac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_teap_data = type { i64, i32, i64, i32, i32 }
%struct.eap_method_ret = type { i32 }
%struct.eap_peer_config = type { i32 }
%struct.eap_teap_pac = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"EAP-TEAP: Send PAC-Acknowledgement - %s initiated provisioning completed successfully\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"peer\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_teap_data*, %struct.eap_method_ret*, i32*, i64)* @eap_teap_process_pac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_teap_process_pac(%struct.eap_sm* %0, %struct.eap_teap_data* %1, %struct.eap_method_ret* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_teap_data*, align 8
  %9 = alloca %struct.eap_method_ret*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.eap_peer_config*, align 8
  %13 = alloca %struct.eap_teap_pac, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_teap_data* %1, %struct.eap_teap_data** %8, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %15 = call %struct.eap_peer_config* @eap_get_config(%struct.eap_sm* %14)
  store %struct.eap_peer_config* %15, %struct.eap_peer_config** %12, align 8
  %16 = call i32 @os_memset(%struct.eap_teap_pac* %13, i32 0, i32 4)
  %17 = load i32*, i32** %10, align 8
  %18 = load i64, i64* %11, align 8
  %19 = call i64 @eap_teap_process_pac_tlv(%struct.eap_teap_pac* %13, i32* %17, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = call i64 @eap_teap_process_pac_info(%struct.eap_teap_pac* %13)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %5
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  br label %70

25:                                               ; preds = %21
  %26 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %27 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %26, i32 0, i32 1
  %28 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %29 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %28, i32 0, i32 4
  %30 = call i32 @eap_teap_add_pac(i32* %27, i32* %29, %struct.eap_teap_pac* %13)
  %31 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %32 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %35 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @eap_teap_pac_list_truncate(i32 %33, i32 %36)
  %38 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %39 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %25
  %43 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %44 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %45 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.eap_peer_config*, %struct.eap_peer_config** %12, align 8
  %48 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @eap_teap_save_pac_bin(%struct.eap_sm* %43, i32 %46, i32 %49)
  br label %60

51:                                               ; preds = %25
  %52 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %53 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %54 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.eap_peer_config*, %struct.eap_peer_config** %12, align 8
  %57 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @eap_teap_save_pac(%struct.eap_sm* %52, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %51, %42
  %61 = load i32, i32* @MSG_DEBUG, align 4
  %62 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %63 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %68 = call i32 @wpa_printf(i32 %61, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i8* %67)
  %69 = call %struct.wpabuf* (...) @eap_teap_tlv_pac_ack()
  store %struct.wpabuf* %69, %struct.wpabuf** %6, align 8
  br label %70

70:                                               ; preds = %60, %24
  %71 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  ret %struct.wpabuf* %71
}

declare dso_local %struct.eap_peer_config* @eap_get_config(%struct.eap_sm*) #1

declare dso_local i32 @os_memset(%struct.eap_teap_pac*, i32, i32) #1

declare dso_local i64 @eap_teap_process_pac_tlv(%struct.eap_teap_pac*, i32*, i64) #1

declare dso_local i64 @eap_teap_process_pac_info(%struct.eap_teap_pac*) #1

declare dso_local i32 @eap_teap_add_pac(i32*, i32*, %struct.eap_teap_pac*) #1

declare dso_local i32 @eap_teap_pac_list_truncate(i32, i32) #1

declare dso_local i32 @eap_teap_save_pac_bin(%struct.eap_sm*, i32, i32) #1

declare dso_local i32 @eap_teap_save_pac(%struct.eap_sm*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local %struct.wpabuf* @eap_teap_tlv_pac_ack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
