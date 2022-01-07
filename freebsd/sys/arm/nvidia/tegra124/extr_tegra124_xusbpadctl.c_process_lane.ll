; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_process_lane.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_process_lane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padctl_softc = type { i32 }
%struct.padctl_pad = type { i32, %struct.padctl_lane** }
%struct.padctl_lane = type { i32, %struct.padctl_pad*, i32 }
%struct.phynode = type { i32 }
%struct.phynode_init_def = type { i32, %struct.padctl_lane* }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Cannot read lane name.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Unknown lane: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"nvidia,function\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Cannot read lane function.\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Unknown function %s for lane %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Cannot configure lane: %s: %d\0A\00", align 1
@lanes_tbl = common dso_local global i32 0, align 4
@xusbpadctl_phynode_class = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"Cannot create phy\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.padctl_softc*, i32, %struct.padctl_pad*)* @process_lane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_lane(%struct.padctl_softc* %0, i32 %1, %struct.padctl_pad* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.padctl_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.padctl_pad*, align 8
  %8 = alloca %struct.padctl_lane*, align 8
  %9 = alloca %struct.phynode*, align 8
  %10 = alloca %struct.phynode_init_def, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.padctl_softc* %0, %struct.padctl_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.padctl_pad* %2, %struct.padctl_pad** %7, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @OF_getprop_alloc(i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %11)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.padctl_softc*, %struct.padctl_softc** %5, align 8
  %20 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, ...) @device_printf(i32 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %4, align 4
  br label %143

24:                                               ; preds = %3
  %25 = load %struct.padctl_softc*, %struct.padctl_softc** %5, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = call %struct.padctl_lane* @search_lane(%struct.padctl_softc* %25, i8* %26)
  store %struct.padctl_lane* %27, %struct.padctl_lane** %8, align 8
  %28 = load %struct.padctl_lane*, %struct.padctl_lane** %8, align 8
  %29 = icmp eq %struct.padctl_lane* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.padctl_softc*, %struct.padctl_softc** %5, align 8
  %32 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 (i32, i8*, ...) @device_printf(i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %13, align 4
  br label %129

37:                                               ; preds = %24
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @OF_getprop_alloc(i32 %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %12)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.padctl_softc*, %struct.padctl_softc** %5, align 8
  %44 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @device_printf(i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %47 = load i32, i32* @ENXIO, align 4
  store i32 %47, i32* %13, align 4
  br label %129

48:                                               ; preds = %37
  %49 = load %struct.padctl_softc*, %struct.padctl_softc** %5, align 8
  %50 = load %struct.padctl_lane*, %struct.padctl_lane** %8, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = call i32 @search_mux(%struct.padctl_softc* %49, %struct.padctl_lane* %50, i8* %51)
  %53 = load %struct.padctl_lane*, %struct.padctl_lane** %8, align 8
  %54 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.padctl_lane*, %struct.padctl_lane** %8, align 8
  %56 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %67

59:                                               ; preds = %48
  %60 = load %struct.padctl_softc*, %struct.padctl_softc** %5, align 8
  %61 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %12, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 (i32, i8*, ...) @device_printf(i32 %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %63, i8* %64)
  %66 = load i32, i32* @ENXIO, align 4
  store i32 %66, i32* %13, align 4
  br label %129

67:                                               ; preds = %48
  %68 = load %struct.padctl_softc*, %struct.padctl_softc** %5, align 8
  %69 = load %struct.padctl_lane*, %struct.padctl_lane** %8, align 8
  %70 = call i32 @config_lane(%struct.padctl_softc* %68, %struct.padctl_lane* %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load %struct.padctl_softc*, %struct.padctl_softc** %5, align 8
  %75 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %11, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call i32 (i32, i8*, ...) @device_printf(i32 %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %77, i32 %78)
  %80 = load i32, i32* @ENXIO, align 4
  store i32 %80, i32* %13, align 4
  br label %129

81:                                               ; preds = %67
  %82 = load %struct.padctl_pad*, %struct.padctl_pad** %7, align 8
  %83 = load %struct.padctl_lane*, %struct.padctl_lane** %8, align 8
  %84 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %83, i32 0, i32 1
  store %struct.padctl_pad* %82, %struct.padctl_pad** %84, align 8
  %85 = load %struct.padctl_lane*, %struct.padctl_lane** %8, align 8
  %86 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load %struct.padctl_lane*, %struct.padctl_lane** %8, align 8
  %88 = load %struct.padctl_pad*, %struct.padctl_pad** %7, align 8
  %89 = getelementptr inbounds %struct.padctl_pad, %struct.padctl_pad* %88, i32 0, i32 1
  %90 = load %struct.padctl_lane**, %struct.padctl_lane*** %89, align 8
  %91 = load %struct.padctl_pad*, %struct.padctl_pad** %7, align 8
  %92 = getelementptr inbounds %struct.padctl_pad, %struct.padctl_pad* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds %struct.padctl_lane*, %struct.padctl_lane** %90, i64 %95
  store %struct.padctl_lane* %87, %struct.padctl_lane** %96, align 8
  %97 = call i32 @bzero(%struct.phynode_init_def* %10, i32 16)
  %98 = load %struct.padctl_lane*, %struct.padctl_lane** %8, align 8
  %99 = load i32, i32* @lanes_tbl, align 4
  %100 = sext i32 %99 to i64
  %101 = sub i64 0, %100
  %102 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %98, i64 %101
  %103 = getelementptr inbounds %struct.phynode_init_def, %struct.phynode_init_def* %10, i32 0, i32 1
  store %struct.padctl_lane* %102, %struct.padctl_lane** %103, align 8
  %104 = load i32, i32* %6, align 4
  %105 = getelementptr inbounds %struct.phynode_init_def, %struct.phynode_init_def* %10, i32 0, i32 0
  store i32 %104, i32* %105, align 8
  %106 = load %struct.padctl_softc*, %struct.padctl_softc** %5, align 8
  %107 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call %struct.phynode* @phynode_create(i32 %108, i32* @xusbpadctl_phynode_class, %struct.phynode_init_def* %10)
  store %struct.phynode* %109, %struct.phynode** %9, align 8
  %110 = load %struct.phynode*, %struct.phynode** %9, align 8
  %111 = icmp eq %struct.phynode* %110, null
  br i1 %111, label %112, label %118

112:                                              ; preds = %81
  %113 = load %struct.padctl_softc*, %struct.padctl_softc** %5, align 8
  %114 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, ...) @device_printf(i32 %115, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %117 = load i32, i32* @ENXIO, align 4
  store i32 %117, i32* %13, align 4
  br label %129

118:                                              ; preds = %81
  %119 = load %struct.phynode*, %struct.phynode** %9, align 8
  %120 = call i32* @phynode_register(%struct.phynode* %119)
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = load %struct.padctl_softc*, %struct.padctl_softc** %5, align 8
  %124 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32, i8*, ...) @device_printf(i32 %125, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %127 = load i32, i32* @ENXIO, align 4
  store i32 %127, i32* %4, align 4
  br label %143

128:                                              ; preds = %118
  store i32 0, i32* %13, align 4
  br label %129

129:                                              ; preds = %128, %112, %73, %59, %42, %30
  %130 = load i8*, i8** %11, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i8*, i8** %11, align 8
  %134 = call i32 @OF_prop_free(i8* %133)
  br label %135

135:                                              ; preds = %132, %129
  %136 = load i8*, i8** %12, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i8*, i8** %12, align 8
  %140 = call i32 @OF_prop_free(i8* %139)
  br label %141

141:                                              ; preds = %138, %135
  %142 = load i32, i32* %13, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %141, %122, %18
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @OF_getprop_alloc(i32, i8*, i8**) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.padctl_lane* @search_lane(%struct.padctl_softc*, i8*) #1

declare dso_local i32 @search_mux(%struct.padctl_softc*, %struct.padctl_lane*, i8*) #1

declare dso_local i32 @config_lane(%struct.padctl_softc*, %struct.padctl_lane*) #1

declare dso_local i32 @bzero(%struct.phynode_init_def*, i32) #1

declare dso_local %struct.phynode* @phynode_create(i32, i32*, %struct.phynode_init_def*) #1

declare dso_local i32* @phynode_register(%struct.phynode*) #1

declare dso_local i32 @OF_prop_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
