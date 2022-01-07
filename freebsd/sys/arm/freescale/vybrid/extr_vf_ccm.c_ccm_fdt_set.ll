; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_ccm.c_ccm_fdt_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_ccm.c_ccm_fdt_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccm_softc = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"clock_names\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccm_softc*)* @ccm_fdt_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccm_fdt_set(%struct.ccm_softc* %0) #0 {
  %2 = alloca %struct.ccm_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.ccm_softc* %0, %struct.ccm_softc** %2, align 8
  %9 = call i64 @OF_finddevice(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %9, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i64, i64* %5, align 8
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @OF_child(i64 %11)
  store i64 %12, i64* %3, align 8
  br label %13

13:                                               ; preds = %69, %1
  %14 = load i64, i64* %3, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %72

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %21, %16
  %18 = load i64, i64* %3, align 8
  %19 = call i64 @OF_child(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i64, i64* %3, align 8
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %3, align 8
  %24 = call i64 @OF_child(i64 %23)
  store i64 %24, i64* %3, align 8
  br label %17

25:                                               ; preds = %17
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @ofw_bus_node_status_okay(i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %69

30:                                               ; preds = %25
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @OF_getproplen(i64 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %32, i32* %6, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %30
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @OF_getproplen(i64 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %36, i32* %6, align 4
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @OF_getprop_alloc(i64 %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %7)
  br label %39

39:                                               ; preds = %42, %34
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = load i8*, i8** %7, align 8
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i64 @strlen(i8* %44)
  %46 = add nsw i64 %45, 1
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 %46
  store i8* %48, i8** %7, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i64 @strlen(i8* %49)
  %51 = add nsw i64 %50, 1
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %6, align 4
  %56 = load %struct.ccm_softc*, %struct.ccm_softc** %2, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @set_clock(%struct.ccm_softc* %56, i8* %57)
  br label %39

59:                                               ; preds = %39
  br label %60

60:                                               ; preds = %59, %30
  %61 = load i64, i64* %3, align 8
  %62 = call i64 @OF_peer(i64 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i64, i64* %4, align 8
  store i64 %65, i64* %3, align 8
  %66 = load i64, i64* %3, align 8
  %67 = call i64 @OF_parent(i64 %66)
  store i64 %67, i64* %4, align 8
  br label %68

68:                                               ; preds = %64, %60
  br label %69

69:                                               ; preds = %68, %29
  %70 = load i64, i64* %3, align 8
  %71 = call i64 @OF_peer(i64 %70)
  store i64 %71, i64* %3, align 8
  br label %13

72:                                               ; preds = %13
  ret i32 0
}

declare dso_local i64 @OF_finddevice(i8*) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32 @ofw_bus_node_status_okay(i64) #1

declare dso_local i32 @OF_getproplen(i64, i8*) #1

declare dso_local i32 @OF_getprop_alloc(i64, i8*, i8**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @set_clock(%struct.ccm_softc*, i8*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i64 @OF_parent(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
