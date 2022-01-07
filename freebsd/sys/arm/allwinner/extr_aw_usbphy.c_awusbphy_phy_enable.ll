; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_usbphy.c_awusbphy_phy_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_usbphy.c_awusbphy_phy_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phynode = type { i32 }
%struct.awusbphy_softc = type { i32**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ERANGE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"External VBUS detected, not enabling the regulator\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"couldn't %s regulator for phy %jd\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phynode*, i32)* @awusbphy_phy_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @awusbphy_phy_enable(%struct.phynode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phynode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.awusbphy_softc*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.phynode* %0, %struct.phynode** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.phynode*, %struct.phynode** %4, align 8
  %13 = call i32 @phynode_get_device(%struct.phynode* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.phynode*, %struct.phynode** %4, align 8
  %15 = call i64 @phynode_get_id(%struct.phynode* %14)
  store i64 %15, i64* %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.awusbphy_softc* @device_get_softc(i32 %16)
  store %struct.awusbphy_softc* %17, %struct.awusbphy_softc** %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %2
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %8, align 8
  %23 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %21, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20, %2
  %29 = load i32, i32* @ERANGE, align 4
  store i32 %29, i32* %3, align 4
  br label %87

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @awusbphy_configure(i32 %31, i64 %32)
  %34 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %8, align 8
  %35 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i32*, i32** %36, i64 %37
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %9, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %87

43:                                               ; preds = %30
  %44 = load i64, i64* %7, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @awusbphy_vbus_detect(i32 %47, i32* %11)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %73

52:                                               ; preds = %46
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i64, i64* @bootverbose, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = call i32 (i32, i8*, ...) @device_printf(i32 %59, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %55
  store i32 0, i32* %3, align 4
  br label %87

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %43
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @regulator_enable(i32* %67)
  store i32 %68, i32* %10, align 4
  br label %72

69:                                               ; preds = %63
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @regulator_disable(i32* %70)
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %51
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %82 = load i64, i64* %7, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 (i32, i8*, ...) @device_printf(i32 %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %81, i32 %83)
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %3, align 4
  br label %87

86:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %76, %61, %42, %28
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @phynode_get_device(%struct.phynode*) #1

declare dso_local i64 @phynode_get_id(%struct.phynode*) #1

declare dso_local %struct.awusbphy_softc* @device_get_softc(i32) #1

declare dso_local i32 @awusbphy_configure(i32, i64) #1

declare dso_local i32 @awusbphy_vbus_detect(i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @regulator_enable(i32*) #1

declare dso_local i32 @regulator_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
