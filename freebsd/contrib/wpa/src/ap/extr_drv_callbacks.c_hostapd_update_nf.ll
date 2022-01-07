; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_drv_callbacks.c_hostapd_update_nf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_drv_callbacks.c_hostapd_update_nf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { i64, i32 }
%struct.hostapd_channel_data = type { i64, i32 }
%struct.freq_survey = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_iface*, %struct.hostapd_channel_data*, %struct.freq_survey*)* @hostapd_update_nf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_update_nf(%struct.hostapd_iface* %0, %struct.hostapd_channel_data* %1, %struct.freq_survey* %2) #0 {
  %4 = alloca %struct.hostapd_iface*, align 8
  %5 = alloca %struct.hostapd_channel_data*, align 8
  %6 = alloca %struct.freq_survey*, align 8
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %4, align 8
  store %struct.hostapd_channel_data* %1, %struct.hostapd_channel_data** %5, align 8
  store %struct.freq_survey* %2, %struct.freq_survey** %6, align 8
  %7 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %8 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %3
  %12 = load %struct.freq_survey*, %struct.freq_survey** %6, align 8
  %13 = getelementptr inbounds %struct.freq_survey, %struct.freq_survey* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %16 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.freq_survey*, %struct.freq_survey** %6, align 8
  %18 = getelementptr inbounds %struct.freq_survey, %struct.freq_survey* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %21 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %63

22:                                               ; preds = %3
  %23 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %24 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %23, i32 0, i32 1
  %25 = call i64 @dl_list_empty(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.freq_survey*, %struct.freq_survey** %6, align 8
  %29 = getelementptr inbounds %struct.freq_survey, %struct.freq_survey* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %32 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %48

33:                                               ; preds = %22
  %34 = load %struct.freq_survey*, %struct.freq_survey** %6, align 8
  %35 = getelementptr inbounds %struct.freq_survey, %struct.freq_survey* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %38 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load %struct.freq_survey*, %struct.freq_survey** %6, align 8
  %43 = getelementptr inbounds %struct.freq_survey, %struct.freq_survey* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %46 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %41, %33
  br label %48

48:                                               ; preds = %47, %27
  %49 = load %struct.freq_survey*, %struct.freq_survey** %6, align 8
  %50 = getelementptr inbounds %struct.freq_survey, %struct.freq_survey* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %53 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load %struct.freq_survey*, %struct.freq_survey** %6, align 8
  %58 = getelementptr inbounds %struct.freq_survey, %struct.freq_survey* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %61 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %56, %48
  br label %63

63:                                               ; preds = %62, %11
  ret void
}

declare dso_local i64 @dl_list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
