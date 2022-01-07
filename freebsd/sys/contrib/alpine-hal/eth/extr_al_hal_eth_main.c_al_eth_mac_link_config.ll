; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_mac_link_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_mac_link_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { i64, i32 }

@AL_ETH_MAC_MODE_SGMII_2_5G = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"eth [%s]: this function not supported in this mac mode.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AL_ETH_MAC_MODE_RGMII = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"eth [%s]: set auto negotiation to enable\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"eth [%s]: set link speed to %dMbps. %s duplex.\0A\00", align 1
@AL_TRUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"eth [%s]: bad speed parameter (%d).\0A\00", align 1
@AL_FALSE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [50 x i8] c"eth [%s]: half duplex in 1Gbps is not supported.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_mac_link_config(%struct.al_hal_eth_adapter* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.al_hal_eth_adapter*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %12 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %13 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @AL_ETH_IS_1G_MAC(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %5
  %18 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %19 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AL_ETH_MAC_MODE_SGMII_2_5G, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %25 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, i32, ...) @al_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %107

30:                                               ; preds = %17, %5
  %31 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %32 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AL_ETH_MAC_MODE_RGMII, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %41 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i8*, i32, ...) @al_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %86

44:                                               ; preds = %36, %30
  %45 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %46 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @AL_TRUE, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %54 = call i32 (i8*, i32, ...) @al_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %48, i8* %53)
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 10
  br i1 %56, label %57, label %71

57:                                               ; preds = %44
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 100
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 1000
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %65 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 (i8*, i32, ...) @al_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %107

71:                                               ; preds = %60, %57, %44
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, 1000
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* @AL_FALSE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %80 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i8*, i32, ...) @al_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %107

85:                                               ; preds = %74, %71
  br label %86

86:                                               ; preds = %85, %39
  %87 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %88 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @AL_ETH_IS_1G_MAC(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %86
  %93 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %94 = load i64, i64* %8, align 8
  %95 = load i64, i64* %9, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i64, i64* %11, align 8
  %98 = call i32 @al_eth_mac_link_config_1g_mac(%struct.al_hal_eth_adapter* %93, i64 %94, i64 %95, i32 %96, i64 %97)
  br label %106

99:                                               ; preds = %86
  %100 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* %9, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i64, i64* %11, align 8
  %105 = call i32 @al_eth_mac_link_config_10g_mac(%struct.al_hal_eth_adapter* %100, i64 %101, i64 %102, i32 %103, i64 %104)
  br label %106

106:                                              ; preds = %99, %92
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %106, %78, %63, %23
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i64 @AL_ETH_IS_1G_MAC(i64) #1

declare dso_local i32 @al_err(i8*, i32, ...) #1

declare dso_local i32 @al_info(i8*, i32, ...) #1

declare dso_local i32 @al_eth_mac_link_config_1g_mac(%struct.al_hal_eth_adapter*, i64, i64, i32, i64) #1

declare dso_local i32 @al_eth_mac_link_config_10g_mac(%struct.al_hal_eth_adapter*, i64, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
