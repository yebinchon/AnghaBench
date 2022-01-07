; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32*, i8**, %struct.TYPE_2__*, i32, %struct.resource**, i64, i64 }
%struct.TYPE_2__ = type { i32, %struct.aac_softc* }
%struct.resource = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"can't allocate interrupt\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@aacraid_new_intr_type1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"can't set up interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_softc*)* @aac_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_setup_intr(%struct.aac_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aac_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i8*, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %3, align 8
  %9 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %10 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %13 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %12, i32 0, i32 7
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %18 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %16, %1
  %22 = phi i1 [ true, %1 ], [ %20, %16 ]
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  store i32 %24, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %106, %21
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %111

29:                                               ; preds = %25
  %30 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %31 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SYS_RES_IRQ, align 4
  %34 = load i32, i32* @RF_SHAREABLE, align 4
  %35 = load i32, i32* @RF_ACTIVE, align 4
  %36 = or i32 %34, %35
  %37 = call %struct.resource* @bus_alloc_resource_any(i32 %32, i32 %33, i32* %6, i32 %36)
  store %struct.resource* %37, %struct.resource** %7, align 8
  %38 = icmp eq %struct.resource* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %29
  %40 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %41 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %2, align 4
  br label %112

45:                                               ; preds = %29
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %48 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %46, i32* %52, align 4
  %53 = load %struct.resource*, %struct.resource** %7, align 8
  %54 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %55 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %54, i32 0, i32 5
  %56 = load %struct.resource**, %struct.resource*** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.resource*, %struct.resource** %56, i64 %58
  store %struct.resource* %53, %struct.resource** %59, align 8
  %60 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %61 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.resource*, %struct.resource** %7, align 8
  %64 = load i32, i32* @INTR_MPSAFE, align 4
  %65 = load i32, i32* @INTR_TYPE_BIO, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @aacraid_new_intr_type1, align 4
  %68 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %69 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %68, i32 0, i32 3
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = call i64 @aac_bus_setup_intr(i32 %62, %struct.resource* %63, i32 %66, i32* null, i32 %67, %struct.TYPE_2__* %73, i8** %8)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %45
  %77 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %78 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @device_printf(i32 %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* %2, align 4
  br label %112

82:                                               ; preds = %45
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %85 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %84, i32 0, i32 3
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 %83, i32* %90, align 8
  %91 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %92 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %93 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %92, i32 0, i32 3
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  store %struct.aac_softc* %91, %struct.aac_softc** %98, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %101 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %100, i32 0, i32 2
  %102 = load i8**, i8*** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  store i8* %99, i8** %105, align 8
  br label %106

106:                                              ; preds = %82
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %25

111:                                              ; preds = %25
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %76, %39
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @aac_bus_setup_intr(i32, %struct.resource*, i32, i32*, i32, %struct.TYPE_2__*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
