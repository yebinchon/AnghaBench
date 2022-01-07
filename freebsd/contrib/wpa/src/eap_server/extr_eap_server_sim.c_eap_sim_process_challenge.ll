; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sim.c_eap_sim_process_challenge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sim.c_eap_sim_process_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i64 }
%struct.eap_sim_data = type { i32, i32, i32*, i32, i64, i32, i32*, i32, i64, i32 }
%struct.wpabuf = type { i32 }
%struct.eap_sim_attrs = type { i64, i32* }

@EAP_SIM_SRES_LEN = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"EAP-SIM: Challenge message did not include valid AT_MAC\00", align 1
@EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH = common dso_local global i32 0, align 4
@NOTIFICATION = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"EAP-SIM: Challenge response includes the correct AT_MAC\00", align 1
@EAP_SIM_SUCCESS = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_sim_data*, %struct.wpabuf*, %struct.eap_sim_attrs*)* @eap_sim_process_challenge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_sim_process_challenge(%struct.eap_sm* %0, %struct.eap_sim_data* %1, %struct.wpabuf* %2, %struct.eap_sim_attrs* %3) #0 {
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_sim_data*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.eap_sim_attrs*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_sim_data* %1, %struct.eap_sim_data** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  store %struct.eap_sim_attrs* %3, %struct.eap_sim_attrs** %8, align 8
  %9 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %10 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %4
  %14 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %15 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %18 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %19 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %22 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %21, i32 0, i32 8
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %26 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @EAP_SIM_SRES_LEN, align 4
  %29 = mul nsw i32 %27, %28
  %30 = call i64 @eap_sim_verify_mac(i32 %16, %struct.wpabuf* %17, i32* %20, i32* %24, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %13, %4
  %33 = load i32, i32* @MSG_WARNING, align 4
  %34 = call i32 @wpa_printf(i32 %33, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH, align 4
  %36 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %37 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 8
  %38 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %39 = load i32, i32* @NOTIFICATION, align 4
  %40 = call i32 @eap_sim_state(%struct.eap_sim_data* %38, i32 %39)
  br label %109

41:                                               ; preds = %13
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = call i32 @wpa_printf(i32 %42, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %45 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %41
  %49 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %50 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %55 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = load i32, i32* @EAP_SIM_SUCCESS, align 4
  %57 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %58 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %57, i32 0, i32 7
  store i32 %56, i32* %58, align 8
  %59 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %60 = load i32, i32* @NOTIFICATION, align 4
  %61 = call i32 @eap_sim_state(%struct.eap_sim_data* %59, i32 %60)
  br label %66

62:                                               ; preds = %48, %41
  %63 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %64 = load i32, i32* @SUCCESS, align 4
  %65 = call i32 @eap_sim_state(%struct.eap_sim_data* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %53
  %67 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %68 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %67, i32 0, i32 6
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %73 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %76 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %79 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %78, i32 0, i32 6
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @eap_sim_db_add_pseudonym(i32 %74, i32 %77, i32* %80)
  %82 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %83 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %82, i32 0, i32 6
  store i32* null, i32** %83, align 8
  br label %84

84:                                               ; preds = %71, %66
  %85 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %86 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %109

89:                                               ; preds = %84
  %90 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %91 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %94 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %97 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %100 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 1
  %103 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %104 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @eap_sim_db_add_reauth(i32 %92, i32 %95, i32* %98, i64 %102, i32 %105)
  %107 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %108 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %107, i32 0, i32 2
  store i32* null, i32** %108, align 8
  br label %109

109:                                              ; preds = %32, %89, %84
  ret void
}

declare dso_local i64 @eap_sim_verify_mac(i32, %struct.wpabuf*, i32*, i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eap_sim_state(%struct.eap_sim_data*, i32) #1

declare dso_local i32 @eap_sim_db_add_pseudonym(i32, i32, i32*) #1

declare dso_local i32 @eap_sim_db_add_reauth(i32, i32, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
