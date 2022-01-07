; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_update_mac_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_update_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32, i32, i32*, i32, i32 }

@WPA_DRIVER_FLAGS_DEDICATED_P2P_DEVICE = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_P2P_DEDICATED_INTERFACE = common dso_local global i32 0, align 4
@ETH_P_EAPOL = common dso_local global i32 0, align 4
@wpa_supplicant_rx_eapol = common dso_local global i32 0, align 4
@L2_PACKET_FILTER_PKTTYPE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to attach pkt_type filter\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to get own L2 address\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_update_mac_addr(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca i32*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  %5 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %6 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %11 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @WPA_DRIVER_FLAGS_DEDICATED_P2P_DEVICE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %56, label %16

16:                                               ; preds = %9, %1
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %18 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @WPA_DRIVER_FLAGS_P2P_DEDICATED_INTERFACE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %56, label %23

23:                                               ; preds = %16
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %25 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @l2_packet_deinit(i32* %26)
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %29 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %32 = call i32* @wpa_drv_get_mac_addr(%struct.wpa_supplicant* %31)
  %33 = load i32, i32* @ETH_P_EAPOL, align 4
  %34 = load i32, i32* @wpa_supplicant_rx_eapol, align 4
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %36 = call i32* @l2_packet_init(i32 %30, i32* %32, i32 %33, i32 %34, %struct.wpa_supplicant* %35, i32 0)
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %38 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %37, i32 0, i32 3
  store i32* %36, i32** %38, align 8
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %40 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %95

44:                                               ; preds = %23
  %45 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %46 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @L2_PACKET_FILTER_PKTTYPE, align 4
  %49 = call i64 @l2_packet_set_packet_filter(i32* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %53 = load i32, i32* @MSG_DEBUG, align 4
  %54 = call i32 @wpa_dbg(%struct.wpa_supplicant* %52, i32 %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %51, %44
  br label %69

56:                                               ; preds = %16, %9
  %57 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %58 = call i32* @wpa_drv_get_mac_addr(%struct.wpa_supplicant* %57)
  store i32* %58, i32** %4, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %63 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* @ETH_ALEN, align 4
  %67 = call i32 @os_memcpy(i32 %64, i32* %65, i32 %66)
  br label %68

68:                                               ; preds = %61, %56
  br label %69

69:                                               ; preds = %68, %55
  %70 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %71 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %76 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %79 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @l2_packet_get_own_addr(i32* %77, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %85 = load i32, i32* @MSG_ERROR, align 4
  %86 = call i32 @wpa_msg(%struct.wpa_supplicant* %84, i32 %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %95

87:                                               ; preds = %74, %69
  %88 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %89 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %92 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @wpa_sm_set_own_addr(i32 %90, i32 %93)
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %87, %83, %43
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @l2_packet_deinit(i32*) #1

declare dso_local i32* @l2_packet_init(i32, i32*, i32, i32, %struct.wpa_supplicant*, i32) #1

declare dso_local i32* @wpa_drv_get_mac_addr(%struct.wpa_supplicant*) #1

declare dso_local i64 @l2_packet_set_packet_filter(i32*, i32) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i64 @l2_packet_get_own_addr(i32*, i32) #1

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local i32 @wpa_sm_set_own_addr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
