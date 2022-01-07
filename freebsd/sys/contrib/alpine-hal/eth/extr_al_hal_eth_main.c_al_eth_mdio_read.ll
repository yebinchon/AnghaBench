; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_mdio_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { i64, i64 }

@AL_ETH_MDIO_IF_1G_MAC = common dso_local global i64 0, align 8
@AL_ETH_MDIO_TYPE_CLAUSE_22 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"eth mdio read: phy_addr %x, device %x, reg %x val %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_mdio_read(%struct.al_hal_eth_adapter* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.al_hal_eth_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %14 = call i32 @al_eth_mdio_lock(%struct.al_hal_eth_adapter* %13)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* %12, align 4
  store i32 %18, i32* %6, align 4
  br label %61

19:                                               ; preds = %5
  %20 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %21 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AL_ETH_MDIO_IF_1G_MAC, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @al_eth_mdio_1g_mac_read(%struct.al_hal_eth_adapter* %26, i32 %27, i32 %28, i32* %29)
  store i32 %30, i32* %12, align 4
  br label %51

31:                                               ; preds = %19
  %32 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %33 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AL_ETH_MDIO_TYPE_CLAUSE_22, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @al_eth_mdio_10g_mac_type22(%struct.al_hal_eth_adapter* %38, i32 1, i32 %39, i32 %40, i32* %41)
  store i32 %42, i32* %12, align 4
  br label %50

43:                                               ; preds = %31
  %44 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @al_eth_mdio_10g_mac_type45(%struct.al_hal_eth_adapter* %44, i32 1, i32 %45, i32 %46, i32 %47, i32* %48)
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %43, %37
  br label %51

51:                                               ; preds = %50, %25
  %52 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %53 = call i32 @al_eth_mdio_free(%struct.al_hal_eth_adapter* %52)
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @al_dbg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55, i32 %56, i32 %58)
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %51, %17
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @al_eth_mdio_lock(%struct.al_hal_eth_adapter*) #1

declare dso_local i32 @al_eth_mdio_1g_mac_read(%struct.al_hal_eth_adapter*, i32, i32, i32*) #1

declare dso_local i32 @al_eth_mdio_10g_mac_type22(%struct.al_hal_eth_adapter*, i32, i32, i32, i32*) #1

declare dso_local i32 @al_eth_mdio_10g_mac_type45(%struct.al_hal_eth_adapter*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @al_eth_mdio_free(%struct.al_hal_eth_adapter*) #1

declare dso_local i32 @al_dbg(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
