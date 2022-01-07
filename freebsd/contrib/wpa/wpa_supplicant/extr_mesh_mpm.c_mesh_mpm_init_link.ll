; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_mpm.c_mesh_mpm_init_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_mpm.c_mesh_mpm_init_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.sta_info = type { i32, i64, i64, i64 }

@PLINK_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, %struct.sta_info*)* @mesh_mpm_init_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mesh_mpm_init_link(%struct.wpa_supplicant* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  br label %6

6:                                                ; preds = %20, %2
  %7 = bitcast i64* %5 to i32*
  %8 = call i64 @os_get_random(i32* %7, i32 8)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %10, %6
  br label %12

12:                                               ; preds = %11
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @llid_in_use(%struct.wpa_supplicant* %16, i64 %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i1 [ true, %12 ], [ %19, %15 ]
  br i1 %21, label %6, label %22

22:                                               ; preds = %20
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %25 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %24, i32 0, i32 3
  store i64 %23, i64* %25, align 8
  %26 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %27 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %29 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @PLINK_IDLE, align 4
  %31 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %32 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  ret void
}

declare dso_local i64 @os_get_random(i32*, i32) #1

declare dso_local i64 @llid_in_use(%struct.wpa_supplicant*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
