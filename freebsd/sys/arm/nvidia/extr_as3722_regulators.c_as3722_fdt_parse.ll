; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_regulators.c_as3722_fdt_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_regulators.c_as3722_fdt_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as3722_softc = type { i32 }
%struct.reg_def = type { i8* }
%struct.as3722_regnode_init_def = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [16 x i8] c"ams,ext-control\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Invalid value for ams,ext-control property: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"ams,enable-tracking\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%s-supply\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"regulator-name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.as3722_softc*, i32, %struct.reg_def*, %struct.as3722_regnode_init_def*)* @as3722_fdt_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @as3722_fdt_parse(%struct.as3722_softc* %0, i32 %1, %struct.reg_def* %2, %struct.as3722_regnode_init_def* %3) #0 {
  %5 = alloca %struct.as3722_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.reg_def*, align 8
  %8 = alloca %struct.as3722_regnode_init_def*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [64 x i8], align 16
  store %struct.as3722_softc* %0, %struct.as3722_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.reg_def* %2, %struct.reg_def** %7, align 8
  store %struct.as3722_regnode_init_def* %3, %struct.as3722_regnode_init_def** %8, align 8
  %13 = load %struct.as3722_softc*, %struct.as3722_softc** %5, align 8
  %14 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.as3722_regnode_init_def*, %struct.as3722_regnode_init_def** %8, align 8
  %18 = getelementptr inbounds %struct.as3722_regnode_init_def, %struct.as3722_regnode_init_def* %17, i32 0, i32 2
  %19 = call i32 @regulator_parse_ofw_stdparam(i32 %15, i32 %16, %struct.TYPE_2__* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.as3722_regnode_init_def*, %struct.as3722_regnode_init_def** %8, align 8
  %22 = getelementptr inbounds %struct.as3722_regnode_init_def, %struct.as3722_regnode_init_def* %21, i32 0, i32 0
  %23 = call i32 @OF_getencprop(i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %22, i32 4)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load %struct.as3722_regnode_init_def*, %struct.as3722_regnode_init_def** %8, align 8
  %28 = getelementptr inbounds %struct.as3722_regnode_init_def, %struct.as3722_regnode_init_def* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %4
  %30 = load %struct.as3722_regnode_init_def*, %struct.as3722_regnode_init_def** %8, align 8
  %31 = getelementptr inbounds %struct.as3722_regnode_init_def, %struct.as3722_regnode_init_def* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 3
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %struct.as3722_softc*, %struct.as3722_softc** %5, align 8
  %36 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.as3722_regnode_init_def*, %struct.as3722_regnode_init_def** %8, align 8
  %39 = getelementptr inbounds %struct.as3722_regnode_init_def, %struct.as3722_regnode_init_def* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.as3722_regnode_init_def*, %struct.as3722_regnode_init_def** %8, align 8
  %43 = getelementptr inbounds %struct.as3722_regnode_init_def, %struct.as3722_regnode_init_def* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  br label %44

44:                                               ; preds = %34, %29
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @OF_hasprop(i32 %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.as3722_regnode_init_def*, %struct.as3722_regnode_init_def** %8, align 8
  %50 = getelementptr inbounds %struct.as3722_regnode_init_def, %struct.as3722_regnode_init_def* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %44
  %52 = load %struct.reg_def*, %struct.reg_def** %7, align 8
  %53 = getelementptr inbounds %struct.reg_def, %struct.reg_def* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %86

57:                                               ; preds = %51
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @OF_parent(i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %61 = load %struct.reg_def*, %struct.reg_def** %7, align 8
  %62 = getelementptr inbounds %struct.reg_def, %struct.reg_def* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @snprintf(i8* %60, i32 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* %10, align 4
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %67 = call i32 @OF_getencprop(i32 %65, i8* %66, i32* %11, i32 4)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %57
  br label %86

71:                                               ; preds = %57
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @OF_node_from_xref(i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.as3722_regnode_init_def*, %struct.as3722_regnode_init_def** %8, align 8
  %76 = getelementptr inbounds %struct.as3722_regnode_init_def, %struct.as3722_regnode_init_def* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = bitcast i32** %77 to i8**
  %79 = call i32 @OF_getprop_alloc(i32 %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp sle i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %71
  %83 = load %struct.as3722_regnode_init_def*, %struct.as3722_regnode_init_def** %8, align 8
  %84 = getelementptr inbounds %struct.as3722_regnode_init_def, %struct.as3722_regnode_init_def* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %56, %70, %82, %71
  ret void
}

declare dso_local i32 @regulator_parse_ofw_stdparam(i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i64 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @OF_parent(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @OF_node_from_xref(i32) #1

declare dso_local i32 @OF_getprop_alloc(i32, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
