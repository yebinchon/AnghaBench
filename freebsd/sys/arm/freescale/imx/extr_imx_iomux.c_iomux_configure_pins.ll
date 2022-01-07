; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_iomux.c_iomux_configure_pins.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_iomux.c_iomux_configure_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iomux_softc = type { i32 }
%struct.pincfg = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"fsl,pins\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@PADCONF_SION = common dso_local global i32 0, align 4
@PADMUX_SION = common dso_local global i32 0, align 4
@PADCONF_NONE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [91 x i8] c"%16s: muxreg 0x%04x muxval 0x%02x inpreg 0x%04x inpval 0x%02x padreg 0x%04x padval 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @iomux_configure_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iomux_configure_pins(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.iomux_softc*, align 8
  %7 = alloca %struct.pincfg*, align 8
  %8 = alloca %struct.pincfg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [32 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.iomux_softc* @device_get_softc(i32 %14)
  store %struct.iomux_softc* %15, %struct.iomux_softc** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @OF_node_from_xref(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = bitcast %struct.pincfg** %7 to i8**
  %20 = call i32 @OF_getencprop_alloc_multi(i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 24, i8** %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOENT, align 4
  store i32 %24, i32* %3, align 4
  br label %118

25:                                               ; preds = %2
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %118

29:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  %30 = load %struct.pincfg*, %struct.pincfg** %7, align 8
  store %struct.pincfg* %30, %struct.pincfg** %8, align 8
  br label %31

31:                                               ; preds = %110, %29
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %115

35:                                               ; preds = %31
  %36 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %37 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PADCONF_SION, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @PADMUX_SION, align 4
  br label %45

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  store i32 %46, i32* %12, align 4
  %47 = load %struct.iomux_softc*, %struct.iomux_softc** %6, align 8
  %48 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %49 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %52 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %12, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @WR4(%struct.iomux_softc* %47, i32 %50, i32 %55)
  %57 = load %struct.iomux_softc*, %struct.iomux_softc** %6, align 8
  %58 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %59 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %62 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @iomux_configure_input(%struct.iomux_softc* %57, i32 %60, i32 %63)
  %65 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %66 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PADCONF_NONE, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %45
  %72 = load %struct.iomux_softc*, %struct.iomux_softc** %6, align 8
  %73 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %74 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %77 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @WR4(%struct.iomux_softc* %72, i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %71, %45
  %81 = load i64, i64* @bootverbose, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %109

83:                                               ; preds = %80
  %84 = load i32, i32* %9, align 4
  %85 = bitcast [32 x i8]* %13 to i8**
  %86 = call i32 @OF_getprop(i32 %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %85, i32 32)
  %87 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %88 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %89 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %92 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %12, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %97 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %100 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %103 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %106 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @printf(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.2, i64 0, i64 0), i8* %87, i32 %90, i32 %95, i32 %98, i32 %101, i32 %104, i32 %107)
  br label %109

109:                                              ; preds = %83, %80
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  %113 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %114 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %113, i32 1
  store %struct.pincfg* %114, %struct.pincfg** %8, align 8
  br label %31

115:                                              ; preds = %31
  %116 = load %struct.pincfg*, %struct.pincfg** %7, align 8
  %117 = call i32 @OF_prop_free(%struct.pincfg* %116)
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %115, %28, %23
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.iomux_softc* @device_get_softc(i32) #1

declare dso_local i32 @OF_node_from_xref(i32) #1

declare dso_local i32 @OF_getencprop_alloc_multi(i32, i8*, i32, i8**) #1

declare dso_local i32 @WR4(%struct.iomux_softc*, i32, i32) #1

declare dso_local i32 @iomux_configure_input(%struct.iomux_softc*, i32, i32) #1

declare dso_local i32 @OF_getprop(i32, i8*, i8**, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @OF_prop_free(%struct.pincfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
