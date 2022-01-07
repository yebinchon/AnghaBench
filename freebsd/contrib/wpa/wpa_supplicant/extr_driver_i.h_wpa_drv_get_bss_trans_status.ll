; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_driver_i.h_wpa_drv_get_bss_trans_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_driver_i.h_wpa_drv_get_bss_trans_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_bss_candidate_info = type { i32 }
%struct.wpa_supplicant = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpa_bss_candidate_info* (i32, %struct.wpa_bss_trans_info*)* }
%struct.wpa_bss_trans_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpa_bss_candidate_info* (%struct.wpa_supplicant*, %struct.wpa_bss_trans_info*)* @wpa_drv_get_bss_trans_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpa_bss_candidate_info* @wpa_drv_get_bss_trans_status(%struct.wpa_supplicant* %0, %struct.wpa_bss_trans_info* %1) #0 {
  %3 = alloca %struct.wpa_bss_candidate_info*, align 8
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_bss_trans_info*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_bss_trans_info* %1, %struct.wpa_bss_trans_info** %5, align 8
  %6 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %7 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.wpa_bss_candidate_info* (i32, %struct.wpa_bss_trans_info*)*, %struct.wpa_bss_candidate_info* (i32, %struct.wpa_bss_trans_info*)** %9, align 8
  %11 = icmp ne %struct.wpa_bss_candidate_info* (i32, %struct.wpa_bss_trans_info*)* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.wpa_bss_candidate_info* null, %struct.wpa_bss_candidate_info** %3, align 8
  br label %24

13:                                               ; preds = %2
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %15 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.wpa_bss_candidate_info* (i32, %struct.wpa_bss_trans_info*)*, %struct.wpa_bss_candidate_info* (i32, %struct.wpa_bss_trans_info*)** %17, align 8
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %20 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.wpa_bss_trans_info*, %struct.wpa_bss_trans_info** %5, align 8
  %23 = call %struct.wpa_bss_candidate_info* %18(i32 %21, %struct.wpa_bss_trans_info* %22)
  store %struct.wpa_bss_candidate_info* %23, %struct.wpa_bss_candidate_info** %3, align 8
  br label %24

24:                                               ; preds = %13, %12
  %25 = load %struct.wpa_bss_candidate_info*, %struct.wpa_bss_candidate_info** %3, align 8
  ret %struct.wpa_bss_candidate_info* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
