; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_memac.c_MemacInitInternalPhy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_memac.c_MemacInitInternalPhy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@e_ENET_IF_SGMII = common dso_local global i64 0, align 8
@ENET_IF_SGMII_BASEX = common dso_local global i32 0, align 4
@PHY_MDIO_ADDR = common dso_local global i32 0, align 4
@e_ENET_IF_QSGMII = common dso_local global i64 0, align 8
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @MemacInitInternalPhy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MemacInitInternalPhy(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @ENET_INTERFACE_FROM_MODE(i32 %10)
  %12 = load i64, i64* @e_ENET_IF_SGMII, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ENET_IF_SGMII_BASEX, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = load i32, i32* @PHY_MDIO_ADDR, align 4
  %24 = call i32 @SetupSgmiiInternalPhyBaseX(%struct.TYPE_4__* %22, i32 %23)
  br label %29

25:                                               ; preds = %14
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = load i32, i32* @PHY_MDIO_ADDR, align 4
  %28 = call i32 @SetupSgmiiInternalPhy(%struct.TYPE_4__* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %21
  br label %66

30:                                               ; preds = %1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @ENET_INTERFACE_FROM_MODE(i32 %33)
  %35 = load i64, i64* @e_ENET_IF_QSGMII, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %61, %37
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 4
  br i1 %40, label %41, label %64

41:                                               ; preds = %38
  %42 = load i32, i32* @PHY_MDIO_ADDR, align 4
  %43 = shl i32 %42, 2
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %5, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ENET_IF_SGMII_BASEX, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @SetupSgmiiInternalPhyBaseX(%struct.TYPE_4__* %53, i32 %54)
  br label %60

56:                                               ; preds = %41
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @SetupSgmiiInternalPhy(%struct.TYPE_4__* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %38

64:                                               ; preds = %38
  br label %65

65:                                               ; preds = %64, %30
  br label %66

66:                                               ; preds = %65, %29
  %67 = load i32, i32* @E_OK, align 4
  ret i32 %67
}

declare dso_local i64 @ENET_INTERFACE_FROM_MODE(i32) #1

declare dso_local i32 @SetupSgmiiInternalPhyBaseX(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @SetupSgmiiInternalPhy(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
