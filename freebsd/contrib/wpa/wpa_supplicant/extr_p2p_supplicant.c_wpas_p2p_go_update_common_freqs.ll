; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_go_update_common_freqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_go_update_common_freqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32*, i32, i32 }

@P2P_MAX_CHANNELS = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"P2P: Failed to get group common freqs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*)* @wpas_p2p_go_update_common_freqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_p2p_go_update_common_freqs(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %6 = load i32, i32* @P2P_MAX_CHANNELS, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %8 = call i32 @p2p_go_dump_common_freqs(%struct.wpa_supplicant* %7)
  %9 = load i32, i32* %3, align 4
  %10 = call i32* @os_calloc(i32 %9, i32 4)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %41

14:                                               ; preds = %1
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %16 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @p2p_group_get_common_freqs(i32 %17, i32* %18, i32* %3)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = call i32 @wpa_dbg(%struct.wpa_supplicant* %23, i32 %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @os_free(i32* %26)
  br label %41

28:                                               ; preds = %14
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %30 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @os_free(i32* %31)
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %35 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %34, i32 0, i32 0
  store i32* %33, i32** %35, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %38 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %40 = call i32 @p2p_go_dump_common_freqs(%struct.wpa_supplicant* %39)
  br label %41

41:                                               ; preds = %28, %22, %13
  ret void
}

declare dso_local i32 @p2p_go_dump_common_freqs(%struct.wpa_supplicant*) #1

declare dso_local i32* @os_calloc(i32, i32) #1

declare dso_local i32 @p2p_group_get_common_freqs(i32, i32*, i32*) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
