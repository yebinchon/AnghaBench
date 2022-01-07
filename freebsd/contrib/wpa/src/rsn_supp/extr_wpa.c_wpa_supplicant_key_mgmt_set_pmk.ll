; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_supplicant_key_mgmt_set_pmk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_supplicant_key_mgmt_set_pmk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i64, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"RSN: Cannot set PMK for key management offload\00", align 1
@WPA_KEY_MGMT_FT_IEEE8021X = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_sm*)* @wpa_supplicant_key_mgmt_set_pmk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_supplicant_key_mgmt_set_pmk(%struct.wpa_sm* %0) #0 {
  %2 = alloca %struct.wpa_sm*, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %2, align 8
  %3 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %4 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %5 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %8 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @wpa_sm_key_mgmt_set_pmk(%struct.wpa_sm* %3, i32 %6, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %14 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = call i32 @wpa_dbg(i32 %17, i32 %18, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %12, %1
  ret void
}

declare dso_local i64 @wpa_sm_key_mgmt_set_pmk(%struct.wpa_sm*, i32, i32) #1

declare dso_local i32 @wpa_dbg(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
