; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_update_channel_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_update_channel_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.p2p_channels = type { i32 }
%struct.wpa_used_freq_data = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"P2P: Failed to update supported channel list\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_p2p_update_channel_list(%struct.wpa_supplicant* %0, i32 %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.p2p_channels, align 4
  %6 = alloca %struct.p2p_channels, align 4
  %7 = alloca %struct.wpa_used_freq_data*, align 8
  %8 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.wpa_used_freq_data* null, %struct.wpa_used_freq_data** %7, align 8
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %10 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %13 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp eq %struct.TYPE_2__* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %18 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16, %2
  br label %61

24:                                               ; preds = %16
  %25 = load i32, i32* %8, align 4
  %26 = call %struct.wpa_used_freq_data* @os_calloc(i32 %25, i32 4)
  store %struct.wpa_used_freq_data* %26, %struct.wpa_used_freq_data** %7, align 8
  %27 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %7, align 8
  %28 = icmp ne %struct.wpa_used_freq_data* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %61

30:                                               ; preds = %24
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %32 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @get_shared_radio_freqs_data(%struct.wpa_supplicant* %31, %struct.wpa_used_freq_data* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = call i32 @os_memset(%struct.p2p_channels* %5, i32 0, i32 4)
  %36 = call i32 @os_memset(%struct.p2p_channels* %6, i32 0, i32 4)
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %38 = call i64 @wpas_p2p_setup_channels(%struct.wpa_supplicant* %37, %struct.p2p_channels* %5, %struct.p2p_channels* %6)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i32, i32* @MSG_ERROR, align 4
  %42 = call i32 @wpa_printf(i32 %41, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %61

43:                                               ; preds = %30
  %44 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %45 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @p2p_update_channel_list(i32* %48, %struct.p2p_channels* %5, %struct.p2p_channels* %6)
  %50 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %51 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @wpas_p2p_optimize_listen_channel(%struct.wpa_supplicant* %50, %struct.wpa_used_freq_data* %51, i32 %52)
  %54 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %55 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @wpas_p2p_consider_moving_gos(%struct.wpa_supplicant* %54, %struct.wpa_used_freq_data* %55, i32 %56, i32 %57)
  %59 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %7, align 8
  %60 = call i32 @os_free(%struct.wpa_used_freq_data* %59)
  br label %61

61:                                               ; preds = %43, %40, %29, %23
  ret void
}

declare dso_local %struct.wpa_used_freq_data* @os_calloc(i32, i32) #1

declare dso_local i32 @get_shared_radio_freqs_data(%struct.wpa_supplicant*, %struct.wpa_used_freq_data*, i32) #1

declare dso_local i32 @os_memset(%struct.p2p_channels*, i32, i32) #1

declare dso_local i64 @wpas_p2p_setup_channels(%struct.wpa_supplicant*, %struct.p2p_channels*, %struct.p2p_channels*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @p2p_update_channel_list(i32*, %struct.p2p_channels*, %struct.p2p_channels*) #1

declare dso_local i32 @wpas_p2p_optimize_listen_channel(%struct.wpa_supplicant*, %struct.wpa_used_freq_data*, i32) #1

declare dso_local i32 @wpas_p2p_consider_moving_gos(%struct.wpa_supplicant*, %struct.wpa_used_freq_data*, i32, i32) #1

declare dso_local i32 @os_free(%struct.wpa_used_freq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
