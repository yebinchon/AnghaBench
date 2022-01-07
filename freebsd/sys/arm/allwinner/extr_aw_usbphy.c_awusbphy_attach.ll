; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_usbphy.c_awusbphy_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_usbphy.c_awusbphy_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phynode = type { i32 }
%struct.phynode_init_def = type { i32, i32 }
%struct.awusbphy_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"failed to initialize USB PHY, error %d\0A\00", align 1
@awusbphy_phynode_class = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to create USB PHY\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @awusbphy_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @awusbphy_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.phynode*, align 8
  %6 = alloca %struct.phynode_init_def, align 4
  %7 = alloca %struct.awusbphy_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.awusbphy_softc* @device_get_softc(i32 %9)
  store %struct.awusbphy_softc* %10, %struct.awusbphy_softc** %7, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @awusbphy_init(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (i32, i8*, ...) @device_printf(i32 %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %58

20:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %53, %20
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %7, align 8
  %24 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %22, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %21
  %30 = call i32 @bzero(%struct.phynode_init_def* %6, i32 8)
  %31 = load i32, i32* %8, align 4
  %32 = getelementptr inbounds %struct.phynode_init_def, %struct.phynode_init_def* %6, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @ofw_bus_get_node(i32 %33)
  %35 = getelementptr inbounds %struct.phynode_init_def, %struct.phynode_init_def* %6, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call %struct.phynode* @phynode_create(i32 %36, i32* @awusbphy_phynode_class, %struct.phynode_init_def* %6)
  store %struct.phynode* %37, %struct.phynode** %5, align 8
  %38 = load %struct.phynode*, %struct.phynode** %5, align 8
  %39 = icmp eq %struct.phynode* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load i32, i32* %3, align 4
  %42 = call i32 (i32, i8*, ...) @device_printf(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %2, align 4
  br label %58

44:                                               ; preds = %29
  %45 = load %struct.phynode*, %struct.phynode** %5, align 8
  %46 = call i32* @phynode_register(%struct.phynode* %45)
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* %3, align 4
  %50 = call i32 (i32, i8*, ...) @device_printf(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENXIO, align 4
  store i32 %51, i32* %2, align 4
  br label %58

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %21

56:                                               ; preds = %21
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %48, %40, %15
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.awusbphy_softc* @device_get_softc(i32) #1

declare dso_local i32 @awusbphy_init(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bzero(%struct.phynode_init_def*, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local %struct.phynode* @phynode_create(i32, i32*, %struct.phynode_init_def*) #1

declare dso_local i32* @phynode_register(%struct.phynode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
