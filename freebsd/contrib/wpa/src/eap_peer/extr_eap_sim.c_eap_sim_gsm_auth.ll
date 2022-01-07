; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_gsm_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_gsm_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i64 }
%struct.eap_sim_data = type { i32**, i32, i32*, i32* }
%struct.eap_peer_config = type { i32, i64, i64, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"EAP-SIM: GSM authentication algorithm\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"EAP-SIM: No GSM authentication algorithm enabled\00", align 1
@EAP_SIM_KC_LEN = common dso_local global i32 0, align 4
@EAP_SIM_SRES_LEN = common dso_local global i32 0, align 4
@GSM_RAND_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_sim_data*)* @eap_sim_gsm_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_sim_gsm_auth(%struct.eap_sm* %0, %struct.eap_sim_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_sim_data*, align 8
  %6 = alloca %struct.eap_peer_config*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_sim_data* %1, %struct.eap_sim_data** %5, align 8
  %7 = load i32, i32* @MSG_DEBUG, align 4
  %8 = call i32 @wpa_printf(i32 %7, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %10 = call %struct.eap_peer_config* @eap_get_config(%struct.eap_sm* %9)
  store %struct.eap_peer_config* %10, %struct.eap_peer_config** %6, align 8
  %11 = load %struct.eap_peer_config*, %struct.eap_peer_config** %6, align 8
  %12 = icmp eq %struct.eap_peer_config* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %36

14:                                               ; preds = %2
  %15 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %16 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = load %struct.eap_peer_config*, %struct.eap_peer_config** %6, align 8
  %21 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %26 = load %struct.eap_sim_data*, %struct.eap_sim_data** %5, align 8
  %27 = load %struct.eap_peer_config*, %struct.eap_peer_config** %6, align 8
  %28 = call i32 @eap_sim_ext_sim_result(%struct.eap_sm* %25, %struct.eap_sim_data* %26, %struct.eap_peer_config* %27)
  store i32 %28, i32* %3, align 4
  br label %36

29:                                               ; preds = %19
  %30 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %31 = load %struct.eap_sim_data*, %struct.eap_sim_data** %5, align 8
  %32 = call i32 @eap_sim_ext_sim_req(%struct.eap_sm* %30, %struct.eap_sim_data* %31)
  store i32 %32, i32* %3, align 4
  br label %36

33:                                               ; preds = %14
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = call i32 @wpa_printf(i32 %34, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %29, %24, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.eap_peer_config* @eap_get_config(%struct.eap_sm*) #1

declare dso_local i32 @eap_sim_ext_sim_result(%struct.eap_sm*, %struct.eap_sim_data*, %struct.eap_peer_config*) #1

declare dso_local i32 @eap_sim_ext_sim_req(%struct.eap_sm*, %struct.eap_sim_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
