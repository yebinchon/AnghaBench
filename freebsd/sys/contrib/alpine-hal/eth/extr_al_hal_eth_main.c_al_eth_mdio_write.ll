; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_mdio_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { i64, i64 }

@.str = private unnamed_addr constant [56 x i8] c"eth mdio write: phy_addr %x, device %x, reg %x, val %x\0A\00", align 1
@AL_ETH_MDIO_IF_1G_MAC = common dso_local global i64 0, align 8
@AL_ETH_MDIO_TYPE_CLAUSE_22 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_mdio_write(%struct.al_hal_eth_adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.al_hal_eth_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @al_dbg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %19 = call i32 @al_eth_mdio_lock(%struct.al_hal_eth_adapter* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %6, align 4
  br label %58

24:                                               ; preds = %5
  %25 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %26 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AL_ETH_MDIO_IF_1G_MAC, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @al_eth_mdio_1g_mac_write(%struct.al_hal_eth_adapter* %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %12, align 4
  br label %54

36:                                               ; preds = %24
  %37 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %38 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AL_ETH_MDIO_TYPE_CLAUSE_22, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @al_eth_mdio_10g_mac_type22(%struct.al_hal_eth_adapter* %43, i32 0, i32 %44, i32 %45, i32* %11)
  store i32 %46, i32* %12, align 4
  br label %53

47:                                               ; preds = %36
  %48 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @al_eth_mdio_10g_mac_type45(%struct.al_hal_eth_adapter* %48, i32 0, i32 %49, i32 %50, i32 %51, i32* %11)
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %47, %42
  br label %54

54:                                               ; preds = %53, %30
  %55 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %56 = call i32 @al_eth_mdio_free(%struct.al_hal_eth_adapter* %55)
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %54, %22
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @al_dbg(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @al_eth_mdio_lock(%struct.al_hal_eth_adapter*) #1

declare dso_local i32 @al_eth_mdio_1g_mac_write(%struct.al_hal_eth_adapter*, i32, i32, i32) #1

declare dso_local i32 @al_eth_mdio_10g_mac_type22(%struct.al_hal_eth_adapter*, i32, i32, i32, i32*) #1

declare dso_local i32 @al_eth_mdio_10g_mac_type45(%struct.al_hal_eth_adapter*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @al_eth_mdio_free(%struct.al_hal_eth_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
