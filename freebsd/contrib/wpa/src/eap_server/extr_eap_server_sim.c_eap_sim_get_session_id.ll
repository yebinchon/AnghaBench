; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sim.c_eap_sim_get_session_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sim.c_eap_sim_get_session_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_sim_data = type { i64, i32, i32, i32, i32, i32, i32 }

@SUCCESS = common dso_local global i64 0, align 8
@GSM_RAND_LEN = common dso_local global i32 0, align 4
@EAP_SIM_NONCE_MT_LEN = common dso_local global i32 0, align 4
@EAP_SIM_NONCE_S_LEN = common dso_local global i32 0, align 4
@EAP_SIM_MAC_LEN = common dso_local global i32 0, align 4
@EAP_TYPE_SIM = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"EAP-SIM: Derived Session-Id\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.eap_sm*, i8*, i64*)* @eap_sim_get_session_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eap_sim_get_session_id(%struct.eap_sm* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.eap_sim_data*, align 8
  %9 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.eap_sim_data*
  store %struct.eap_sim_data* %11, %struct.eap_sim_data** %8, align 8
  %12 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %13 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %107

18:                                               ; preds = %3
  %19 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %20 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %18
  %24 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %25 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @GSM_RAND_LEN, align 4
  %28 = mul nsw i32 %26, %27
  %29 = add nsw i32 1, %28
  %30 = load i32, i32* @EAP_SIM_NONCE_MT_LEN, align 4
  %31 = add nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = load i64*, i64** %7, align 8
  store i64 %32, i64* %33, align 8
  br label %41

34:                                               ; preds = %18
  %35 = load i32, i32* @EAP_SIM_NONCE_S_LEN, align 4
  %36 = add nsw i32 1, %35
  %37 = load i32, i32* @EAP_SIM_MAC_LEN, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = load i64*, i64** %7, align 8
  store i64 %39, i64* %40, align 8
  br label %41

41:                                               ; preds = %34, %23
  %42 = load i64*, i64** %7, align 8
  %43 = load i64, i64* %42, align 8
  %44 = call i32* @os_malloc(i64 %43)
  store i32* %44, i32** %9, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32* null, i32** %4, align 8
  br label %107

48:                                               ; preds = %41
  %49 = load i32, i32* @EAP_TYPE_SIM, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %53 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %82, label %56

56:                                               ; preds = %48
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %60 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %63 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @GSM_RAND_LEN, align 4
  %66 = mul nsw i32 %64, %65
  %67 = call i32 @os_memcpy(i32* %58, i32 %61, i32 %66)
  %68 = load i32*, i32** %9, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %71 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @GSM_RAND_LEN, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %69, i64 %75
  %77 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %78 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @EAP_SIM_NONCE_MT_LEN, align 4
  %81 = call i32 @os_memcpy(i32* %76, i32 %79, i32 %80)
  br label %100

82:                                               ; preds = %48
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %86 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @EAP_SIM_NONCE_S_LEN, align 4
  %89 = call i32 @os_memcpy(i32* %84, i32 %87, i32 %88)
  %90 = load i32*, i32** %9, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* @EAP_SIM_NONCE_S_LEN, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %96 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @EAP_SIM_MAC_LEN, align 4
  %99 = call i32 @os_memcpy(i32* %94, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %82, %56
  %101 = load i32, i32* @MSG_DEBUG, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = load i64*, i64** %7, align 8
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @wpa_hexdump(i32 %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %102, i64 %104)
  %106 = load i32*, i32** %9, align 8
  store i32* %106, i32** %4, align 8
  br label %107

107:                                              ; preds = %100, %47, %17
  %108 = load i32*, i32** %4, align 8
  ret i32* %108
}

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
