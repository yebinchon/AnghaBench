; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_mdio_10g_mac_type45.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_mdio_10g_mac_type45.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c" %s mdio %s failed. HW is busy\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c" %s mdio %s (address frame) failed on timeout\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c" %s mdio %s failed on timeout\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c" %s mdio %s failed on error. port 0x%x, device 0x%x reg 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_hal_eth_adapter*, i32, i32, i32, i32, i32*)* @al_eth_mdio_10g_mac_type45 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_eth_mdio_10g_mac_type45(%struct.al_hal_eth_adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.al_hal_eth_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, 1
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  store i8* %21, i8** %15, align 8
  %22 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %8, align 8
  %23 = call i32 @al_eth_mdio_10g_mac_wait_busy(%struct.al_hal_eth_adapter* %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %6
  %27 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %8, align 8
  %28 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %15, align 8
  %31 = call i32 (i8*, i32, i8*, ...) @al_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %29, i8* %30)
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %7, align 4
  br label %135

33:                                               ; preds = %6
  %34 = load i32, i32* %11, align 4
  %35 = and i32 31, %34
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %10, align 4
  %37 = and i32 31, %36
  %38 = shl i32 %37, 5
  %39 = load i32, i32* %17, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %17, align 4
  %41 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %8, align 8
  %42 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %17, align 4
  %47 = call i32 @al_reg_write16(i32* %45, i32 %46)
  %48 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %8, align 8
  %49 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @al_reg_write16(i32* %52, i32 %53)
  %55 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %8, align 8
  %56 = call i32 @al_eth_mdio_10g_mac_wait_busy(%struct.al_hal_eth_adapter* %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %33
  %60 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %8, align 8
  %61 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = call i32 (i8*, i32, i8*, ...) @al_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %62, i8* %63)
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %7, align 4
  br label %135

66:                                               ; preds = %33
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %66
  %70 = call i32 @AL_BIT(i32 15)
  %71 = load i32, i32* %17, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %17, align 4
  %73 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %8, align 8
  %74 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %17, align 4
  %79 = call i32 @al_reg_write16(i32* %77, i32 %78)
  br label %89

80:                                               ; preds = %66
  %81 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %8, align 8
  %82 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i32*, i32** %13, align 8
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @al_reg_write16(i32* %85, i32 %87)
  br label %89

89:                                               ; preds = %80, %69
  %90 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %8, align 8
  %91 = call i32 @al_eth_mdio_10g_mac_wait_busy(%struct.al_hal_eth_adapter* %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %8, align 8
  %96 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i8*, i8** %15, align 8
  %99 = call i32 (i8*, i32, i8*, ...) @al_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %97, i8* %98)
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %7, align 4
  br label %135

101:                                              ; preds = %89
  %102 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %8, align 8
  %103 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 3
  %107 = call i32 @al_reg_read32(i32* %106)
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %16, align 4
  %109 = call i32 @AL_BIT(i32 1)
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %101
  %113 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %8, align 8
  %114 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i8*, i8** %15, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %12, align 4
  %120 = call i32 (i8*, i32, i8*, ...) @al_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 %115, i8* %116, i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %7, align 4
  br label %135

123:                                              ; preds = %101
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %123
  %127 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %8, align 8
  %128 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %127, i32 0, i32 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 2
  %132 = call i32 @al_reg_read16(i32* %131)
  %133 = load i32*, i32** %13, align 8
  store i32 %132, i32* %133, align 4
  br label %134

134:                                              ; preds = %126, %123
  store i32 0, i32* %7, align 4
  br label %135

135:                                              ; preds = %134, %112, %94, %59, %26
  %136 = load i32, i32* %7, align 4
  ret i32 %136
}

declare dso_local i32 @al_eth_mdio_10g_mac_wait_busy(%struct.al_hal_eth_adapter*) #1

declare dso_local i32 @al_err(i8*, i32, i8*, ...) #1

declare dso_local i32 @al_reg_write16(i32*, i32) #1

declare dso_local i32 @AL_BIT(i32) #1

declare dso_local i32 @al_reg_read32(i32*) #1

declare dso_local i32 @al_reg_read16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
