; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pinmux.c_pinmux_read_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pinmux.c_pinmux_read_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pinmux_softc = type { i32 }
%struct.pincfg = type { i32*, i32* }

@.str = private unnamed_addr constant [12 x i8] c"nvidia,pins\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"nvidia,function\00", align 1
@PROP_ID_MAX_ID = common dso_local global i32 0, align 4
@prop_names = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinmux_softc*, i32, %struct.pincfg*, i8**, i32*)* @pinmux_read_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pinmux_read_node(%struct.pinmux_softc* %0, i32 %1, %struct.pincfg* %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pinmux_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pincfg*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pinmux_softc* %0, %struct.pinmux_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.pincfg* %2, %struct.pincfg** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i8**, i8*** %10, align 8
  %16 = call i32 @OF_getprop_alloc(i32 %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %15)
  %17 = load i32*, i32** %11, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** %11, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOENT, align 4
  store i32 %22, i32* %6, align 4
  br label %68

23:                                               ; preds = %5
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.pincfg*, %struct.pincfg** %9, align 8
  %26 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %25, i32 0, i32 1
  %27 = bitcast i32** %26 to i8**
  %28 = call i32 @OF_getprop_alloc(i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.pincfg*, %struct.pincfg** %9, align 8
  %33 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %31, %23
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %64, %34
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @PROP_ID_MAX_ID, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %67

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prop_names, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.pincfg*, %struct.pincfg** %9, align 8
  %48 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i32 @OF_getencprop(i32 %40, i32 %46, i32* %52, i32 4)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %39
  %57 = load %struct.pincfg*, %struct.pincfg** %9, align 8
  %58 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 -1, i32* %62, align 4
  br label %63

63:                                               ; preds = %56, %39
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %35

67:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %67, %21
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @OF_getprop_alloc(i32, i8*, i8**) #1

declare dso_local i32 @OF_getencprop(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
