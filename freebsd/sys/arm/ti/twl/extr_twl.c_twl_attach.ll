; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl.c_twl_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl.c_twl_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl_softc = type { i32*, i32*, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i8*, i32 }

@twl_scan = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"twl_vreg\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"could not allocate twl_vreg instance\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"twl_clks\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"could not allocate twl_clks instance\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @twl_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.twl_softc*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.twl_softc* @device_get_softc(i8* %5)
  store %struct.twl_softc* %6, %struct.twl_softc** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load %struct.twl_softc*, %struct.twl_softc** %4, align 8
  %9 = getelementptr inbounds %struct.twl_softc, %struct.twl_softc* %8, i32 0, i32 3
  store i8* %7, i8** %9, align 8
  %10 = load %struct.twl_softc*, %struct.twl_softc** %4, align 8
  %11 = call i32 @TWL_LOCK_INIT(%struct.twl_softc* %10)
  %12 = load i32, i32* @twl_scan, align 4
  %13 = load %struct.twl_softc*, %struct.twl_softc** %4, align 8
  %14 = getelementptr inbounds %struct.twl_softc, %struct.twl_softc* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32 %12, i32* %15, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load %struct.twl_softc*, %struct.twl_softc** %4, align 8
  %18 = getelementptr inbounds %struct.twl_softc, %struct.twl_softc* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i8* %16, i8** %19, align 8
  %20 = load %struct.twl_softc*, %struct.twl_softc** %4, align 8
  %21 = getelementptr inbounds %struct.twl_softc, %struct.twl_softc* %20, i32 0, i32 2
  %22 = call i64 @config_intrhook_establish(%struct.TYPE_2__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* %2, align 4
  br label %49

26:                                               ; preds = %1
  %27 = load i8*, i8** %3, align 8
  %28 = call i8* @device_add_child(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 -1)
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.twl_softc*, %struct.twl_softc** %4, align 8
  %31 = getelementptr inbounds %struct.twl_softc, %struct.twl_softc* %30, i32 0, i32 1
  store i32* %29, i32** %31, align 8
  %32 = icmp eq i32* %29, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @device_printf(i8* %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %26
  %37 = load i8*, i8** %3, align 8
  %38 = call i8* @device_add_child(i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.twl_softc*, %struct.twl_softc** %4, align 8
  %41 = getelementptr inbounds %struct.twl_softc, %struct.twl_softc* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  %42 = icmp eq i32* %39, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @device_printf(i8* %44, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %36
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @bus_generic_attach(i8* %47)
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %46, %24
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.twl_softc* @device_get_softc(i8*) #1

declare dso_local i32 @TWL_LOCK_INIT(%struct.twl_softc*) #1

declare dso_local i64 @config_intrhook_establish(%struct.TYPE_2__*) #1

declare dso_local i8* @device_add_child(i8*, i8*, i32) #1

declare dso_local i32 @device_printf(i8*, i8*) #1

declare dso_local i32 @bus_generic_attach(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
