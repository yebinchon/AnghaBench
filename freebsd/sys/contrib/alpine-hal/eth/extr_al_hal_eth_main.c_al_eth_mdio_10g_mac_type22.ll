; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_mdio_10g_mac_type22.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_mdio_10g_mac_type22.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c" eth [%s] mdio %s failed. HW is busy\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c" %s mdio %s failed on timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c" %s mdio %s failed on error. phy_addr 0x%x reg 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_hal_eth_adapter*, i32, i32, i32, i32*)* @al_eth_mdio_10g_mac_type22 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_eth_mdio_10g_mac_type22(%struct.al_hal_eth_adapter* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.al_hal_eth_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 1
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  store i8* %19, i8** %13, align 8
  %20 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %21 = call i32 @al_eth_mdio_10g_mac_wait_busy(%struct.al_hal_eth_adapter* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %5
  %25 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %26 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = call i32 (i8*, i32, i8*, ...) @al_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %27, i8* %28)
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %6, align 4
  br label %110

31:                                               ; preds = %5
  %32 = load i32, i32* %10, align 4
  %33 = and i32 31, %32
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %9, align 4
  %35 = and i32 31, %34
  %36 = shl i32 %35, 5
  %37 = load i32, i32* %15, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = call i32 @AL_BIT(i32 15)
  %43 = load i32, i32* %15, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %15, align 4
  br label %45

45:                                               ; preds = %41, %31
  %46 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %47 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @al_reg_write16(i32* %50, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %45
  %56 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %57 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @al_reg_write16(i32* %60, i32 %62)
  br label %64

64:                                               ; preds = %55, %45
  %65 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %66 = call i32 @al_eth_mdio_10g_mac_wait_busy(%struct.al_hal_eth_adapter* %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %71 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = call i32 (i8*, i32, i8*, ...) @al_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %72, i8* %73)
  %75 = load i32, i32* @ETIMEDOUT, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %110

77:                                               ; preds = %64
  %78 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %79 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = call i32 @al_reg_read32(i32* %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @AL_BIT(i32 1)
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %77
  %89 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %90 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 (i8*, i32, i8*, ...) @al_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %91, i8* %92, i32 %93, i32 %94)
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %6, align 4
  br label %110

98:                                               ; preds = %77
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %7, align 8
  %103 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = call i32 @al_reg_read16(i32* %106)
  %108 = load i32*, i32** %11, align 8
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %101, %98
  store i32 0, i32* %6, align 4
  br label %110

110:                                              ; preds = %109, %88, %69, %24
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i32 @al_eth_mdio_10g_mac_wait_busy(%struct.al_hal_eth_adapter*) #1

declare dso_local i32 @al_err(i8*, i32, i8*, ...) #1

declare dso_local i32 @AL_BIT(i32) #1

declare dso_local i32 @al_reg_write16(i32*, i32) #1

declare dso_local i32 @al_reg_read32(i32*) #1

declare dso_local i32 @al_reg_read16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
