; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_get_fdt_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_get_fdt_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_softc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"slave@%lx\00", align 1
@slave_mdio_addr = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"phy_id\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"dual_emac_res_vlan\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpsw_softc*, i32)* @cpsw_get_fdt_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_get_fdt_data(%struct.cpsw_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpsw_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.cpsw_softc* %0, %struct.cpsw_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %14 = load %struct.cpsw_softc*, %struct.cpsw_softc** %4, align 8
  %15 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @OF_child(i32 %16)
  store i64 %17, i64* %12, align 8
  br label %18

18:                                               ; preds = %91, %2
  %19 = load i64, i64* %12, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %94

21:                                               ; preds = %18
  %22 = load i64, i64* %12, align 8
  %23 = call i64 @OF_getprop_alloc(i64 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %6)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %91

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @sscanf(i8* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64* %13)
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @OF_prop_free(i8* %31)
  br label %91

33:                                               ; preds = %26
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @OF_prop_free(i8* %34)
  %36 = load i64, i64* %13, align 8
  %37 = load i64*, i64** @slave_mdio_addr, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %36, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %33
  %44 = load i64, i64* %13, align 8
  %45 = load i64*, i64** @slave_mdio_addr, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = and i64 %49, 4095
  %51 = icmp ne i64 %44, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %91

53:                                               ; preds = %43, %33
  %54 = load i64, i64* %12, align 8
  %55 = call i64 @fdt_get_phyaddr(i64 %54, i32* null, i32* %8, i32* null)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %53
  store i32 -1, i32* %8, align 4
  %58 = load i64, i64* %12, align 8
  %59 = call i32 @OF_getproplen(i64 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = udiv i64 %61, 4
  %63 = icmp eq i64 %62, 2
  br i1 %63, label %64, label %74

64:                                               ; preds = %57
  %65 = load i64, i64* %12, align 8
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %67 = load i32, i32* %7, align 4
  %68 = call i64 @OF_getencprop(i64 %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %66, i32 %67)
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %70, %64
  br label %74

74:                                               ; preds = %73, %57
  br label %75

75:                                               ; preds = %74, %53
  %76 = load i64, i64* %12, align 8
  %77 = call i32 @OF_getproplen(i64 %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = udiv i64 %79, 4
  %81 = icmp eq i64 %80, 1
  br i1 %81, label %82, label %90

82:                                               ; preds = %75
  %83 = load i64, i64* %12, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i64 @OF_getencprop(i64 %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32* %11, i32 %84)
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %87, %82
  br label %90

90:                                               ; preds = %89, %75
  br label %94

91:                                               ; preds = %52, %30, %25
  %92 = load i64, i64* %12, align 8
  %93 = call i64 @OF_peer(i64 %92)
  store i64 %93, i64* %12, align 8
  br label %18

94:                                               ; preds = %90, %18
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* @ENXIO, align 4
  store i32 %98, i32* %3, align 4
  br label %116

99:                                               ; preds = %94
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.cpsw_softc*, %struct.cpsw_softc** %4, align 8
  %102 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i32 %100, i32* %107, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.cpsw_softc*, %struct.cpsw_softc** %4, align 8
  %110 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  store i32 %108, i32* %115, align 4
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %99, %97
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i64 @OF_child(i32) #1

declare dso_local i64 @OF_getprop_alloc(i64, i8*, i8**) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i32 @OF_prop_free(i8*) #1

declare dso_local i64 @fdt_get_phyaddr(i64, i32*, i32*, i32*) #1

declare dso_local i32 @OF_getproplen(i64, i8*) #1

declare dso_local i64 @OF_getencprop(i64, i8*, i32*, i32) #1

declare dso_local i64 @OF_peer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
