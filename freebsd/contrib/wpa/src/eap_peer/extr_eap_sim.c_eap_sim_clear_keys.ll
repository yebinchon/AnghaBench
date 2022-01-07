; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_clear_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_clear_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sim_data = type { i32, i32, i32, i32, i32, i32, i32 }

@EAP_SIM_MK_LEN = common dso_local global i32 0, align 4
@EAP_SIM_K_AUT_LEN = common dso_local global i32 0, align 4
@EAP_SIM_K_ENCR_LEN = common dso_local global i32 0, align 4
@EAP_SIM_KC_LEN = common dso_local global i32 0, align 4
@EAP_SIM_SRES_LEN = common dso_local global i32 0, align 4
@EAP_SIM_KEYING_DATA_LEN = common dso_local global i32 0, align 4
@EAP_EMSK_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sim_data*, i32)* @eap_sim_clear_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_sim_clear_keys(%struct.eap_sim_data* %0, i32 %1) #0 {
  %3 = alloca %struct.eap_sim_data*, align 8
  %4 = alloca i32, align 4
  store %struct.eap_sim_data* %0, %struct.eap_sim_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = load %struct.eap_sim_data*, %struct.eap_sim_data** %3, align 8
  %9 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @EAP_SIM_MK_LEN, align 4
  %12 = call i32 @os_memset(i32 %10, i32 0, i32 %11)
  %13 = load %struct.eap_sim_data*, %struct.eap_sim_data** %3, align 8
  %14 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @EAP_SIM_K_AUT_LEN, align 4
  %17 = call i32 @os_memset(i32 %15, i32 0, i32 %16)
  %18 = load %struct.eap_sim_data*, %struct.eap_sim_data** %3, align 8
  %19 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @EAP_SIM_K_ENCR_LEN, align 4
  %22 = call i32 @os_memset(i32 %20, i32 0, i32 %21)
  br label %23

23:                                               ; preds = %7, %2
  %24 = load %struct.eap_sim_data*, %struct.eap_sim_data** %3, align 8
  %25 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @EAP_SIM_KC_LEN, align 4
  %28 = mul nsw i32 3, %27
  %29 = call i32 @os_memset(i32 %26, i32 0, i32 %28)
  %30 = load %struct.eap_sim_data*, %struct.eap_sim_data** %3, align 8
  %31 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @EAP_SIM_SRES_LEN, align 4
  %34 = mul nsw i32 3, %33
  %35 = call i32 @os_memset(i32 %32, i32 0, i32 %34)
  %36 = load %struct.eap_sim_data*, %struct.eap_sim_data** %3, align 8
  %37 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @EAP_SIM_KEYING_DATA_LEN, align 4
  %40 = call i32 @os_memset(i32 %38, i32 0, i32 %39)
  %41 = load %struct.eap_sim_data*, %struct.eap_sim_data** %3, align 8
  %42 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @EAP_EMSK_LEN, align 4
  %45 = call i32 @os_memset(i32 %43, i32 0, i32 %44)
  ret void
}

declare dso_local i32 @os_memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
