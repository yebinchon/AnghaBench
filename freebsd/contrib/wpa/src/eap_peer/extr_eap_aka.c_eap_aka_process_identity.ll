; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_process_identity.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_process_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_aka_data = type { i32, i64 }
%struct.wpabuf = type opaque
%struct.eap_sim_attrs = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"EAP-AKA: subtype Identity\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"EAP-AKA: Too many ID requests used within one authentication\00", align 1
@EAP_AKA_UNABLE_TO_PROCESS_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_aka_data*, i64, %struct.wpabuf*, %struct.eap_sim_attrs*)* @eap_aka_process_identity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_aka_process_identity(%struct.eap_sm* %0, %struct.eap_aka_data* %1, i64 %2, %struct.wpabuf* %3, %struct.eap_sim_attrs* %4) #0 {
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_aka_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca %struct.eap_sim_attrs*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.wpabuf*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_aka_data* %1, %struct.eap_aka_data** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %10, align 8
  store %struct.eap_sim_attrs* %4, %struct.eap_sim_attrs** %11, align 8
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  %16 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %17 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %59 [
    i32 129, label %19
    i32 131, label %20
    i32 130, label %33
    i32 128, label %46
  ]

19:                                               ; preds = %5
  br label %59

20:                                               ; preds = %5
  %21 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %22 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %12, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %30 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  br label %59

33:                                               ; preds = %5
  %34 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %35 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %43 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  br label %59

46:                                               ; preds = %5
  %47 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %48 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %49, 2
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %51, %46
  %55 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %56 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %5, %54, %41, %28, %19
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i32, i32* @MSG_INFO, align 4
  %64 = call i32 @wpa_printf(i32 %63, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load i32, i32* @EAP_AKA_UNABLE_TO_PROCESS_PACKET, align 4
  %68 = call %struct.wpabuf* @eap_aka_client_error(%struct.eap_aka_data* %65, i64 %66, i32 %67)
  store %struct.wpabuf* %68, %struct.wpabuf** %6, align 8
  br label %94

69:                                               ; preds = %59
  %70 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %71 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %74 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call %struct.wpabuf* @eap_aka_response_identity(%struct.eap_sm* %70, %struct.eap_aka_data* %71, i64 %72, i32 %75)
  store %struct.wpabuf* %76, %struct.wpabuf** %13, align 8
  %77 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %78 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %69
  %83 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %84 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %85 = call i32 @eap_aka_add_id_msg(%struct.eap_aka_data* %83, %struct.wpabuf* %84)
  %86 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %87 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %88 = call i32 @eap_aka_add_id_msg(%struct.eap_aka_data* %86, %struct.wpabuf* %87)
  %89 = load i64, i64* %9, align 8
  %90 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %91 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %82, %69
  %93 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  store %struct.wpabuf* %93, %struct.wpabuf** %6, align 8
  br label %94

94:                                               ; preds = %92, %62
  %95 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  ret %struct.wpabuf* %95
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @eap_aka_client_error(%struct.eap_aka_data*, i64, i32) #1

declare dso_local %struct.wpabuf* @eap_aka_response_identity(%struct.eap_sm*, %struct.eap_aka_data*, i64, i32) #1

declare dso_local i32 @eap_aka_add_id_msg(%struct.eap_aka_data*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
